"""
Sprint performance data loader.

Reads the most recent HubSpot CRM Projects CSV from data/ and returns
a clean DataFrame with columns used by the dotplot:

    n           project name (SPRINT_/ZEN_/UPSELL_ prefixes stripped)
    jh_total    total jours homme terrain (JH Leakmited + JH External)
    gain_pct    Sprint Gain Reached % (0-100 scale)
    gpj         gain per jour homme = gain_pct / jh_total
    km_campaign km de réseau parcouru pendant la campagne (Length campaign)
    km_per_jh   productivité terrain = km_campaign / jh_total
    debit       débit gagné (m³/h) — renseigné pour peu de sprints
    margin_abs  marge absolue = CA campagne − coûts estimés (€)
    margin_pct  marge en % du CA campagne (0-100 scale)
    quote_number / quote_number_2  numéros de devis normalisés (jointure sector_campaign)
    export_date date encoded in the filename (YYYYMMDD string)
"""

import re
from pathlib import Path

import pandas as pd

# ── HubSpot column names ──────────────────────────────────────────────────────
_COL_NAME      = "Nom"
_COL_PIPELINE  = "Pipeline"
_COL_GAIN      = "Sprint Gain Reached %"   # stored 0-1 in HubSpot
_COL_JH_LKM    = "Ops Leaksearchers Leakmited D FTE"
_COL_JH_EXT    = "Ops Leaksearchers External D FTE"
_COL_QUOTE     = "Sales Quote Number"
_COL_QUOTE2    = "Sales Quote Number 2"
_COL_LENGTH    = "Length campaign"                    # km de réseau parcouru pendant la campagne
_COL_DEBIT     = "Sprint gain débit de nuit en m3/h"  # débit gagné (m³/h), renseigné pour peu de sprints
_COL_REV       = "Campaign deal value"                # CA de la campagne sprint
_COL_COST      = "estimated_costs_sprint_campaign"    # coûts estimés de la campagne

_CSV_RE = re.compile(
    r"hubspotcrmexportstouslesprojets(\d{8})\.csv", re.IGNORECASE
)
_NAME_PREFIXES = re.compile(r"^(SPRINT_|ZEN_|UPSELL_|MULTIPLE_|\d{4}_)+", re.IGNORECASE)


class SprintLoader:
    """
    Load Sprint project data from HubSpot CRM export CSVs.

    Automatically picks the most recent file in data_dir whose name matches
    hubspotcrmexportstouslesprojets<YYYYMMDD>.csv.

    Parameters
    ----------
    data_dir : str | Path | None
        Directory containing the CSV files.
        Defaults to a 'data/' folder next to this module.

    Examples
    --------
    >>> loader = SprintLoader()
    >>> df = loader.load()
    >>> records = loader.to_records()   # list[dict] drop-in for hardcoded raw[]
    """

    def __init__(self, data_dir=None):
        if data_dir is None:
            data_dir = Path(__file__).parent / "data"
        self.data_dir = Path(data_dir)
        self.csv_path, self.export_date = self._latest_csv()

    # ── private helpers ───────────────────────────────────────────────────────

    def _latest_csv(self):
        candidates = [
            (m.group(1), f)
            for f in self.data_dir.glob("*.csv")
            if (m := _CSV_RE.match(f.name))
        ]
        if not candidates:
            raise FileNotFoundError(
                f"No hubspotcrmexportstouslesprojets*.csv found in {self.data_dir}"
            )
        date_str, path = max(candidates, key=lambda t: t[0])
        return path, date_str   # e.g. "20260622"

    @staticmethod
    def _clean_name(series: pd.Series) -> pd.Series:
        return series.str.replace(_NAME_PREFIXES, "", regex=True).str.strip()

    # ── public API ────────────────────────────────────────────────────────────

    def load(self, min_jh: float = 1.0, min_gain_pct: float = None) -> pd.DataFrame:
        """
        Return a DataFrame with columns: n, jh_total, gain_pct, gpj, export_date.

        Parameters
        ----------
        min_jh : float
            Exclude rows with total jours homme < min_jh (default 1).
        min_gain_pct : float | None
            Exclude rows with Sprint Gain Reached % (0-100 scale) < min_gain_pct.
        """
        df = pd.read_csv(self.csv_path, encoding="utf-8-sig", low_memory=False)
        # keep Sprint pipeline only
        df = df[df[_COL_PIPELINE] == "#SPRINT"].copy()

        # jours homme: Leakmited FTE + External FTE
        df["jh_total"] = (
            pd.to_numeric(df[_COL_JH_LKM], errors="coerce").fillna(0)
            + pd.to_numeric(df[_COL_JH_EXT], errors="coerce").fillna(0)
        )

        # gain: stored 0-1 in HubSpot → convert to 0-100
        df["gain_pct"] = pd.to_numeric(df[_COL_GAIN], errors="coerce") * 100

        # drop rows missing either dimension
        df = df.dropna(subset=["jh_total", "gain_pct"])
        df = df[df["jh_total"] >= min_jh]

        if min_gain_pct is not None:
            df = df[df["gain_pct"] >= min_gain_pct]

        df["gpj"]         = (df["gain_pct"] / df["jh_total"]).round(2)
        df["n"]           = self._clean_name(df[_COL_NAME])
        df["export_date"] = self.export_date

        # km parcourus & débit gagné (m³/h) → productivité km/JH
        df["km_campaign"] = pd.to_numeric(df[_COL_LENGTH], errors="coerce")
        df["debit"]       = pd.to_numeric(df[_COL_DEBIT], errors="coerce")
        df["km_per_jh"]   = (df["km_campaign"] / df["jh_total"]).round(2)

        # marge : CA campagne − coûts estimés (margin_pct sur échelle 0-100)
        _rev  = pd.to_numeric(df[_COL_REV],  errors="coerce")
        _cost = pd.to_numeric(df[_COL_COST], errors="coerce")
        df["campaign_deal_value"] = _rev
        df["estimated_costs"]     = _cost
        df["margin_abs"] = _rev - _cost
        df["margin_pct"] = ((_rev - _cost) / _rev * 100).round(1)

        # numéros de devis normalisés (jointure exacte avec sector_campaign.quote_number)
        for src, dst in ((_COL_QUOTE, "quote_number"), (_COL_QUOTE2, "quote_number_2")):
            df[dst] = (
                df[src].astype(str).str.strip().str.upper()
                .replace({"NAN": None, "": None})
            )

        return df[["n", "jh_total", "gain_pct", "gpj",
                   "km_campaign", "km_per_jh", "debit",
                   "campaign_deal_value", "estimated_costs", "margin_abs", "margin_pct",
                   "quote_number", "quote_number_2", "export_date"]].reset_index(drop=True)

    def to_records(self, **kwargs) -> list[dict]:
        """
        Return list[dict] with keys n, jh_total, gain_pct, gpj — drop-in for the hardcoded raw[].
        """
        return self.load(**kwargs)[["n", "jh_total", "gain_pct", "gpj"]].to_dict(orient="records")
