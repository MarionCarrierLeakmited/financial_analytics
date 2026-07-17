"""
Financial Sprint *campaign*-level loader.

Reads `data/export campaigns sprint.xlsx` and returns a per-campaign DataFrame of
Sprint perfs, then lets you compute a per-campaign margin the same way
`financial_sprint_loader.simulate_margin` does (cost from leaksearcher FTE).

The workbook has three sheets:

    Hubspot export   per-campaign perfs (LS FTE, dates, phase durations)  ← load()
    Log contract     per-devis financial ledger (deal value, Estimate)    ← load_contracts()
    Invoices         per-invoice amounts (not used here)

A single devis (Estimate) can span several campaigns. Because the campaign sheet
has no Estimate key, each campaign is matched to its devis by client name; the
devis `Deal value (€)` is then split across the campaigns of that devis (by FTE
share) so per-campaign margins never double-count the deal value.

load() returns (per campaign):

    record_id, nom, client, pipeline, phase, owner,
    date_debut, date_fermeture, date_cible, sprint_start, twin_start, twin_end,
    ls_internal, ls_external, ls_total,
    hours_in_<stage>…  (cumulative time per pipeline stage, hours)

simulate_margin() adds:

    simulated_costs_sprint   ls_total × 611 + 1564   (mirrors financial_sprint_loader)
    estimate, deal_value_devis, match_score, n_campaigns_devis,
    deal_value_alloc         devis deal value split across its campaigns (by FTE)
    simulated_margin         (deal_value_alloc − simulated_costs) / deal_value_alloc × 100
"""

import re
import unicodedata
from difflib import SequenceMatcher
from pathlib import Path

import pandas as pd

from financial_sprint_loader import FinancialSprintLoader, _NA_TOKENS

# ── cost model (mirrors financial_sprint_loader.simulate_margin) ───────────────
_LS_DAY_RATE   = 611               # € par leaksearcher-jour
_FIXED_COSTS   = 200 + 1062 + 302  # frais fixes de campagne (= 1564 €)

# ── Hubspot export (campaign) column name → snake_case ─────────────────────────
_CAMP_COLMAP = {
    "Record ID":                        "record_id",
    "Nom":                              "nom",
    "Pipeline":                         "pipeline",
    "Phase de pipeline":                "phase",
    "Owner":                            "owner",
    "Date d'échéance de la cible":      "date_cible",
    "Date de début":                    "date_debut",
    "Date de fermeture":               "date_fermeture",
    "Sprint Start Date":               "sprint_start",
    "Twin Start Date":                 "twin_start",
    "Twin End Date":                   "twin_end",
    "Ops Leaksearchers Leakmited D FTE": "ls_internal",
    "Ops Leaksearchers External D FTE":  "ls_external",
}
_CAMP_DATE_COLS = ["date_cible", "date_debut", "date_fermeture",
                   "sprint_start", "twin_start", "twin_end"]
_CAMP_NUM_COLS  = ["ls_internal", "ls_external"]

# ── Log contract (devis) column name → snake_case ──────────────────────────────
_LC_COLMAP = {
    "Estimate":            "estimate",
    "Client":              "client",
    "Details":             "details",
    "Country":             "country",
    "Deal value devis":    "deal_value_devis_quote",
    "Deal value (€)":      "deal_value_eur",
    "Signing date":        "signing_date",
    "Status":              "status",
    "Performance":         "performance",
    "Produit":             "produit",
    "Type sprint":         "type_sprint",
    "Newbiz / Expansion":  "motion",
    "Upsell":              "upsell",
    "Cross-sell":          "cross_sell",
    "Costs Sprint":        "costs_sprint",
    "# LS internal":       "lc_ls_internal",
    "# LS external":       "lc_ls_external",
    "Gross margin sprint": "gross_margin",
}
_LC_NUM_COLS  = ["deal_value_devis_quote", "deal_value_eur", "performance",
                 "costs_sprint", "lc_ls_internal", "lc_ls_external", "gross_margin"]
_LC_DATE_COLS = ["signing_date"]

# tokens too generic to identify a client (reused from the matching notebook)
_STOPWORDS = {
    "DE", "DU", "DES", "LA", "LE", "LES", "ET", "EAU", "EAUX",
    "SYNDICAT", "REGIE", "MAIRIE", "COMMUNAUTE", "COMMUNES", "AGGLOMERATION",
    "SI", "CC", "CA", "SIAEP", "SIAEPA", "SMAEP", "INTERCOMMUNAL", "SPRINT",
    "UPSELL", "ZEN", "MULTIPLE", "SECTEUR", "DSP", "SMART", "CREDITS",
}
_NAME_PREFIXES = re.compile(r"^(SPRINT_|ZEN_|UPSELL_|MULTIPLE_|\d{4}_)+", re.IGNORECASE)


def _to_hours(val):
    """Parse a duration cell to hours: 'H:M:S' (H may exceed 24) or an Excel day-fraction."""
    if val is None:
        return pd.NA
    s = str(val).strip()
    if not s or s.upper() in _NA_TOKENS:
        return pd.NA
    if ":" in s:
        parts = s.split(":")
        try:
            h, m, sec = (float(parts[0]), float(parts[1]),
                         float(parts[2]) if len(parts) > 2 else 0.0)
            return round(h + m / 60 + sec / 3600, 2)
        except ValueError:
            return pd.NA
    try:                       # Excel stores a bare duration as a fraction of a day
        return round(float(s) * 24, 2)
    except ValueError:
        return pd.NA


def _normalize(name: str) -> str:
    s = unicodedata.normalize("NFKD", str(name)).encode("ascii", "ignore").decode()
    s = re.sub(r"[_\-'’.()]", " ", s.upper())
    s = re.sub(r"\b\d+(E|EME|ERE)?\b", " ", s)
    return re.sub(r"\s+", " ", s).strip()


def _tokens(name: str) -> set:
    return {t for t in _normalize(name).split() if t not in _STOPWORDS and len(t) > 2}


def _match_score(a: str, b: str) -> float:
    ta, tb = _tokens(a), _tokens(b)
    if not ta or not tb or not (ta & tb):
        return 0.0
    jaccard = len(ta & tb) / len(ta | tb)
    contain = len(ta & tb) / min(len(ta), len(tb))
    ratio = SequenceMatcher(None, _normalize(a), _normalize(b)).ratio()
    return max(jaccard, contain * 0.9, ratio)


class FinancialSprintCampaignLoader:
    """
    Load per-campaign Sprint perfs from `data/export campaigns sprint.xlsx`.

    Parameters
    ----------
    xlsx_path : str | Path | None
        Path to the workbook. Defaults to `data/export campaigns sprint.xlsx`.

    Examples
    --------
    >>> loader = FinancialSprintCampaignLoader()
    >>> camp = loader.load()                 # per-campaign perfs
    >>> camp = loader.simulate_margin(camp)  # + per-campaign simulated margin
    """

    CAMP_SHEET = "Hubspot export"
    LC_SHEET   = "Log contract"

    def __init__(self, xlsx_path=None):
        if xlsx_path is None:
            xlsx_path = Path(__file__).parent / "data" / "export campaigns sprint.xlsx"
        self.xlsx_path = Path(xlsx_path)
        if not self.xlsx_path.exists():
            raise FileNotFoundError(f"Campaign workbook not found: {self.xlsx_path}")

    # ── reuse the stdlib xlsx reader from FinancialSprintLoader ────────────────
    def _read_sheet(self, sheet: str) -> pd.DataFrame:
        raw = FinancialSprintLoader(self.xlsx_path, sheet=sheet)._read_xlsx()
        raw.columns = [str(c).strip() for c in raw.columns]
        return raw

    @staticmethod
    def _blank_na(df: pd.DataFrame) -> pd.DataFrame:
        return df.apply(lambda col: col.map(
            lambda x: pd.NA if str(x).strip().upper() in _NA_TOKENS else x))

    # ── public API ─────────────────────────────────────────────────────────────

    def load(self) -> pd.DataFrame:
        """Return the cleaned per-campaign perfs DataFrame (Hubspot export sheet)."""
        raw = self._read_sheet(self.CAMP_SHEET)
        present = {s: d for s, d in _CAMP_COLMAP.items() if s in raw.columns}
        df = self._blank_na(raw[list(present)].rename(columns=present).copy())

        for col in _CAMP_NUM_COLS:
            if col in df.columns:
                df[col] = pd.to_numeric(df[col], errors="coerce")
        for col in _CAMP_DATE_COLS:
            if col in df.columns:
                df[col] = pd.to_datetime(pd.to_numeric(df[col], errors="coerce"),
                                         unit="D", origin="1899-12-30", errors="coerce")

        # cumulative time per pipeline stage → hours
        for src in [c for c in raw.columns if c.startswith("Cumulative time in ")]:
            stage = re.search(r'"([^"]+?)\s*\(#SPRINT\)"', src)
            key = "hours_in_" + re.sub(r"\s+", "_",
                                       _normalize(stage.group(1)).lower()) if stage else None
            if key:
                df[key] = raw[src].map(_to_hours)

        df["ls_internal"] = df.get("ls_internal", pd.Series(dtype="float")).fillna(0)
        df["ls_external"] = df.get("ls_external", pd.Series(dtype="float")).fillna(0)
        df["ls_total"] = df["ls_internal"] + df["ls_external"]

        # client parsed from Nom ("<campaign> - <CLIENT>")
        df["client"] = (df["nom"].astype("string")
                        .str.rsplit(" - ", n=1).str[-1].str.strip())

        df = df.dropna(how="all").reset_index(drop=True)
        return df

    def load_contracts(self) -> pd.DataFrame:
        """Return the per-devis financial ledger (Log contract sheet)."""
        raw = self._read_sheet(self.LC_SHEET)
        present = {s: d for s, d in _LC_COLMAP.items() if s in raw.columns}
        df = self._blank_na(raw[list(present)].rename(columns=present).copy())

        for col in _LC_NUM_COLS:
            if col in df.columns:
                df[col] = pd.to_numeric(df[col], errors="coerce")
        for col in _LC_DATE_COLS:
            if col in df.columns:
                df[col] = pd.to_datetime(pd.to_numeric(df[col], errors="coerce"),
                                         unit="D", origin="1899-12-30", errors="coerce")
        for col in ("estimate", "client", "details", "country", "status",
                    "produit", "type_sprint", "motion", "upsell", "cross_sell"):
            if col in df.columns:
                df[col] = df[col].astype("string").str.strip()

        df = df.dropna(subset=["estimate"]).reset_index(drop=True)
        return df

    # ── margin ───────────────────────────────────────────────────────────────

    def simulate_margin(self, df: pd.DataFrame = None, min_score: float = 0.6,
                        alloc: str = "equal") -> pd.DataFrame:
        """
        Add per-campaign simulated cost, matched devis deal value, and margin.

        Cost mirrors financial_sprint_loader.simulate_margin:
            simulated_costs_sprint = ls_total × 611 + 1564
        Each campaign is matched to a devis (Log contract) by client name; the devis
        `Deal value (€)` is then split across the campaigns of that devis:
            alloc="equal" (default) → deal_value / n_campaigns_devis  (robust to the
                                       campaign sheet's sparse FTE)
            alloc="fte"            → by FTE share (equal fallback when all FTE are 0)
        Margin = (deal_value_alloc − cost) / deal_value_alloc × 100, forced to 0
        when the allocated deal value is 0.
        """
        camp = (df if df is not None else self.load()).copy()
        contracts = self.load_contracts()

        # per-campaign simulated cost
        camp["simulated_costs_sprint"] = camp["ls_total"] * _LS_DAY_RATE + _FIXED_COSTS

        # best devis per campaign (by client-name similarity)
        lc = contracts.dropna(subset=["deal_value_eur"]).reset_index(drop=True)
        est, dv, score = [], [], []
        for _, c in camp.iterrows():
            key = f"{c['client']} {c['nom']}"
            sc = lc["client"].map(lambda x: _match_score(key, x))
            if len(sc) and sc.max() >= min_score:
                i = sc.idxmax()
                est.append(lc.at[i, "estimate"]); dv.append(lc.at[i, "deal_value_eur"])
                score.append(round(float(sc.max()), 2))
            else:
                est.append(pd.NA); dv.append(pd.NA); score.append(round(float(sc.max()) if len(sc) else 0.0, 2))
        camp["estimate"] = est
        camp["deal_value_devis"] = dv
        camp["match_score"] = score

        # split devis deal value across its campaigns
        camp["n_campaigns_devis"] = camp.groupby("estimate")["estimate"].transform("size")
        equal_share = 1.0 / camp["n_campaigns_devis"]
        if alloc == "fte":
            fte_sum = camp.groupby("estimate")["ls_total"].transform("sum")
            share = (camp["ls_total"] / fte_sum).where(fte_sum > 0, equal_share)
        elif alloc == "equal":
            share = equal_share
        else:
            raise ValueError("alloc must be 'equal' or 'fte'")
        camp["deal_value_alloc"] = camp["deal_value_devis"] * share

        dva = pd.to_numeric(camp["deal_value_alloc"], errors="coerce")
        camp["simulated_margin"] = (
            ((dva - camp["simulated_costs_sprint"]) / dva * 100).where(dva.fillna(0) != 0, 0)
        )
        return camp


if __name__ == "__main__":
    loader = FinancialSprintCampaignLoader()
    camp = loader.load()
    print(f"campaigns: {len(camp)} · columns: {list(camp.columns)}\n")
    out = loader.simulate_margin(camp)
    matched = out["estimate"].notna().sum()
    print(f"matched to a devis: {matched}/{len(out)} "
          f"(deal value found) · unmatched: {len(out) - matched}\n")
    cols = ["client", "ls_total", "simulated_costs_sprint", "estimate",
            "deal_value_devis", "n_campaigns_devis", "deal_value_alloc", "simulated_margin"]
    print(out[cols].head(12).to_string(index=False))
