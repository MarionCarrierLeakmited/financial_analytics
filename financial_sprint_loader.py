"""
Financial Sprint data loader + HubSpot reconciliation.

Reads the financial ledger `data/export perf sprint.xlsx` (sheet `Feuil2`) — the
authoritative record of realized commercial finance for every Sprint deal — and
returns a clean DataFrame. Also reconciles it against HubSpot (`sprint_loader.py`).

The workbook is read with a self-contained stdlib reader (zipfile + xml.etree)
because `openpyxl` is not installed in this environment; if openpyxl becomes
available, `pd.read_excel` is used instead.

load() returns columns:

    contracts          Sprint / Sprint Multi / Sprint Inter
    client             client name (raw)
    country            country
    deal_value_devis   quoted amount (€)
    deal_value_eur     realized / negotiated amount (€)
    signing_date       signing date (parsed from Excel serial)
    unit               # Unit
    estimate           devis reference (D-YYYY-### / ADE-###)
    status             Facturé / Accepté / Refusé / Expiré
    deployment_date    deployment date (parsed from Excel serial)
    performance        débit gain (0-1 fraction)
    invoiced_eur       amount invoiced (€)
    pct_invoiced       invoiced / deal ratio (% /Total)
    revenue_type       OneOff / Grant one off
    produit            Sprint / AI analysis
    type_sprint        Pilot / Zen / International
    motion             Newbiz / Expansion
    upsell             Upsell flag
    cross_sell         Cross-sell flag
    cohorte            cohort year
    costs_sprint       campaign costs (€)
    days_campaign      # days campaign
    ls_internal        # leaksearchers internal
    ls_external        # leaksearchers external
    gross_margin       gross margin (0-1 fraction) = (deal_value_eur - costs_sprint) / deal_value_eur
    gain_pct           performance × 100 (0-100, aligns with HubSpot Sprint Gain Reached %)
    gross_margin_pct   gross_margin × 100 (0-100, aligns with HubSpot margin_pct)
    quote_number       estimate normalized (strip/upper) — exact join key to HubSpot quote_number
"""

import re
import zipfile
import xml.etree.ElementTree as ET
from pathlib import Path

import pandas as pd

# ── Excel column name → clean snake_case name ─────────────────────────────────
_COLMAP = {
    "Contracts":          "contracts",
    "Client":             "client",
    "Country":            "country",
    "Deal value devis":   "deal_value_devis",
    "Deal value (€)":     "deal_value_eur",
    "Signing date":       "signing_date",
    "# Unit":             "unit",
    "Estimate":           "estimate",
    "Status":             "status",
    "Deployment date":    "deployment_date",
    "Performance":        "performance",
    "Invoiced EUR":       "invoiced_eur",
    "% /Total":           "pct_invoiced",
    "Revenue":            "revenue_type",
    "Produit":            "produit",
    "Type sprint":        "type_sprint",
    "Newbiz / Expansion": "motion",
    "Upsell":             "upsell",
    "Cross-sell":         "cross_sell",
    "Cohorte":            "cohorte",
    "Costs Sprint":       "costs_sprint",
    "# days campaign":    "days_campaign",
    "# LS internal":      "ls_internal",
    "# LS external":      "ls_external",
    "Gross margin sprint": "gross_margin",
}

_NUMERIC_COLS = [
    "deal_value_devis", "deal_value_eur", "unit", "performance", "invoiced_eur",
    "pct_invoiced", "cohorte", "costs_sprint", "days_campaign", "ls_internal",
    "ls_external", "gross_margin",
]
_DATE_COLS = ["signing_date", "deployment_date"]
_NA_TOKENS = {"", "N/A", "#N/A", "NA", "NAN", "NONE"}

_XLSX_NS = "{http://schemas.openxmlformats.org/spreadsheetml/2006/main}"


def _excel_serial_to_datetime(series: pd.Series) -> pd.Series:
    """Convert an Excel serial-date column (1900 date system) to datetime."""
    num = pd.to_numeric(series, errors="coerce")
    # Excel epoch 1899-12-30 accounts for the 1900 leap-year bug.
    return pd.to_datetime(num, unit="D", origin="1899-12-30", errors="coerce")


class FinancialSprintLoader:
    """
    Load the Sprint financial ledger from `data/export perf sprint.xlsx`.

    Parameters
    ----------
    xlsx_path : str | Path | None
        Path to the workbook. Defaults to `data/export perf sprint.xlsx`
        next to this module.
    sheet : str
        Sheet name to read (default "Feuil2").

    Examples
    --------
    >>> loader = FinancialSprintLoader()
    >>> df = loader.load()
    >>> cmp = compare_hubspot_vs_excel()   # reconcile against HubSpot
    """

    def __init__(self, xlsx_path=None, sheet: str = "Feuil2"):
        if xlsx_path is None:
            xlsx_path = Path(__file__).parent / "data" / "export perf sprint.xlsx"
        self.xlsx_path = Path(xlsx_path)
        self.sheet = sheet
        if not self.xlsx_path.exists():
            raise FileNotFoundError(f"Financial workbook not found: {self.xlsx_path}")

    # ── private helpers ───────────────────────────────────────────────────────

    def _read_xlsx(self) -> pd.DataFrame:
        """Read the sheet into a raw DataFrame (openpyxl if available, else stdlib)."""
        try:
            return pd.read_excel(self.xlsx_path, sheet_name=self.sheet)
        except ImportError:
            return self._read_xlsx_stdlib()

    def _read_xlsx_stdlib(self) -> pd.DataFrame:
        """Parse the .xlsx (a zip of XML) using only the standard library."""
        with zipfile.ZipFile(self.xlsx_path) as z:
            shared = self._shared_strings(z)
            sheet_path = self._sheet_path(z)
            rows = self._sheet_rows(z.read(sheet_path), shared)
        if not rows:
            return pd.DataFrame()
        header = rows[0]
        width = len(header)
        body = [r + [""] * (width - len(r)) for r in rows[1:]]
        body = [r[:width] for r in body]
        return pd.DataFrame(body, columns=header)

    @staticmethod
    def _shared_strings(z: zipfile.ZipFile) -> list:
        try:
            root = ET.fromstring(z.read("xl/sharedStrings.xml"))
        except KeyError:
            return []
        return [
            "".join(t.text or "" for t in si.iter(_XLSX_NS + "t"))
            for si in root.findall(_XLSX_NS + "si")
        ]

    def _sheet_path(self, z: zipfile.ZipFile) -> str:
        """Resolve the worksheet XML path for self.sheet (fallback: first sheet)."""
        wb = ET.fromstring(z.read("xl/workbook.xml"))
        sheets = wb.find(_XLSX_NS + "sheets")
        target_rid = None
        first_rid = None
        rns = "{http://schemas.openxmlformats.org/officeDocument/2006/relationships}"
        for s in sheets.findall(_XLSX_NS + "sheet"):
            rid = s.get(rns + "id")
            if first_rid is None:
                first_rid = rid
            if s.get("name") == self.sheet:
                target_rid = rid
        rid = target_rid or first_rid
        rels = ET.fromstring(z.read("xl/_rels/workbook.xml.rels"))
        for rel in rels:
            if rel.get("Id") == rid:
                tgt = rel.get("Target")
                return tgt if tgt.startswith("xl/") else "xl/" + tgt
        return "xl/worksheets/sheet1.xml"

    @staticmethod
    def _col_to_idx(ref: str) -> int:
        letters = re.match(r"[A-Z]+", ref).group()
        n = 0
        for ch in letters:
            n = n * 26 + (ord(ch) - 64)
        return n - 1

    def _sheet_rows(self, sheet_xml: bytes, shared: list) -> list:
        root = ET.fromstring(sheet_xml)
        data = root.find(_XLSX_NS + "sheetData")
        out = []
        for row in data.findall(_XLSX_NS + "row"):
            cells = {}
            for c in row.findall(_XLSX_NS + "c"):
                v = c.find(_XLSX_NS + "v")
                if v is None:
                    val = ""
                elif c.get("t") == "s":
                    val = shared[int(v.text)]
                else:
                    val = v.text
                cells[self._col_to_idx(c.get("r"))] = val
            maxc = max(cells) if cells else -1
            out.append([cells.get(i, "") for i in range(maxc + 1)])
        return out

    # ── public API ────────────────────────────────────────────────────────────

    def load(self) -> pd.DataFrame:
        """Return the cleaned financial DataFrame (see module docstring for columns)."""
        raw = self._read_xlsx()
        raw.columns = [str(c).strip() for c in raw.columns]

        present = {src: dst for src, dst in _COLMAP.items() if src in raw.columns}
        df = raw[list(present)].rename(columns=present).copy()

        # blank out N/A sentinels before numeric coercion
        df = df.replace({c: "" for c in _NA_TOKENS}, "") if False else df
        for col in df.columns:
            df[col] = df[col].apply(
                lambda x: pd.NA if str(x).strip().upper() in _NA_TOKENS else x
            )

        for col in _NUMERIC_COLS:
            if col in df.columns:
                df[col] = pd.to_numeric(df[col], errors="coerce")

        for col in _DATE_COLS:
            if col in df.columns:
                df[col] = _excel_serial_to_datetime(df[col])

        # string columns: strip
        for col in ("contracts", "client", "country", "estimate", "status",
                    "revenue_type", "produit", "type_sprint", "motion",
                    "upsell", "cross_sell"):
            if col in df.columns:
                df[col] = df[col].astype("string").str.strip()

        # derived: 0-100 scales aligned with HubSpot + normalized join key
        if "performance" in df.columns:
            df["gain_pct"] = (df["performance"] * 100).round(1)
        if "gross_margin" in df.columns:
            df["gross_margin_pct"] = (df["gross_margin"] * 100).round(1)
        if "estimate" in df.columns:
            df["quote_number"] = (
                df["estimate"].astype("string").str.strip().str.upper()
                .replace({t: pd.NA for t in _NA_TOKENS})
            )

        # drop fully-empty rows (trailing blanks in the sheet)
        df = df.dropna(how="all").reset_index(drop=True)
        return df

    def to_records(self) -> list:
        """Return list[dict] of the cleaned financial rows."""
        return self.load().to_dict(orient="records")


    def simulate_margin(self, df: pd.DataFrame) -> pd.DataFrame:
        """Simulate the margin for each deal with harmonized LS costs."""
        df = df.copy()
        df["simulated_costs_sprint_normalized"] = (df['ls_internal'].fillna(0) + df['ls_external'].fillna(0)) * 611 + 200 + 1062 + 302
        
        _dv = pd.to_numeric(df["deal_value_eur"], errors="coerce")
        df["simulated_margin"] = (
            ((_dv - df["simulated_costs_sprint_normalized"]) / _dv)
            .where(_dv.fillna(0) != 0, 0)
        )
        return df

# ── HubSpot ↔ Excel reconciliation ────────────────────────────────────────────

# (excel_col, hubspot_col, label) — the metrics compared side by side.
_COMPARE_METRICS = [
    ("deal_value_eur",   "campaign_deal_value", "deal_value"),
    ("costs_sprint",     "estimated_costs",     "costs"),
    ("gross_margin_pct", "margin_pct",          "margin_pct"),
    ("gain_pct",         "gain_pct",            "gain_pct"),
]


def compare_hubspot_vs_excel(financial_df=None, hubspot_df=None, tol: float = 0.02) -> pd.DataFrame:
    """
    Reconcile the Excel financial ledger against HubSpot on the exact quote-number join.

    Parameters
    ----------
    financial_df : pd.DataFrame | None
        Output of FinancialSprintLoader().load(); loaded automatically if None.
    hubspot_df : pd.DataFrame | None
        Output of sprint_loader.SprintLoader().load(); loaded automatically if None.
        Must expose campaign_deal_value / estimated_costs / margin_pct / gain_pct.
    tol : float
        Relative tolerance for the discrepancy flag (default 0.02 = 2%).

    Returns
    -------
    pd.DataFrame
        One row per matched quote_number, with <label>_xlsx / <label>_hs /
        <label>_diff / <label>_pct_diff / <label>_flag columns for each metric.
        A reconciliation summary is printed to stdout.
    """
    if financial_df is None:
        financial_df = FinancialSprintLoader().load()
    if hubspot_df is None:
        from sprint_loader import SprintLoader
        hubspot_df = SprintLoader().load()

    fin = financial_df.dropna(subset=["quote_number"]).copy()

    # HubSpot join key: quote_number, falling back to quote_number_2 when missing.
    hs = hubspot_df.copy()
    if "quote_number" not in hs.columns:
        raise KeyError("hubspot_df must contain 'quote_number' (from SprintLoader.load()).")
    key = hs["quote_number"]
    if "quote_number_2" in hs.columns:
        key = key.fillna(hs["quote_number_2"])
    hs = hs.assign(_key=key).dropna(subset=["_key"])

    # keep one row per key on each side (first wins) to avoid fan-out on the join
    fin_u = fin.drop_duplicates("quote_number")
    hs_u = hs.drop_duplicates("_key")

    # select + rename each side to unambiguous <label>_xlsx / <label>_hs names,
    # sidestepping merge suffixing on columns shared by both frames (gain_pct, …)
    fin_sel = fin_u[["quote_number", "client"] + [m[0] for m in _COMPARE_METRICS]].rename(
        columns={m[0]: f"{m[2]}_xlsx" for m in _COMPARE_METRICS}
    )
    hs_sel = hs_u[["_key"] + [m[1] for m in _COMPARE_METRICS]].rename(
        columns={m[1]: f"{m[2]}_hs" for m in _COMPARE_METRICS}
    )
    merged = fin_sel.merge(hs_sel, left_on="quote_number", right_on="_key", how="inner")

    out = pd.DataFrame({
        "quote_number": merged["quote_number"],
        "client":       merged["client"],
    })
    for xl_col, hs_col, label in _COMPARE_METRICS:
        xv = pd.to_numeric(merged[f"{label}_xlsx"], errors="coerce")
        hv = pd.to_numeric(merged[f"{label}_hs"], errors="coerce")
        diff = hv - xv
        pct = (diff / xv.abs()).where(xv.abs() > 0)
        out[f"{label}_xlsx"] = xv.round(2)
        out[f"{label}_hs"] = hv.round(2)
        out[f"{label}_diff"] = diff.round(2)
        out[f"{label}_pct_diff"] = (pct * 100).round(1)
        out[f"{label}_flag"] = pct.abs() > tol

    # ── reconciliation summary ────────────────────────────────────────────────
    n_fin, n_hs = len(fin_u), len(hs_u)
    n_match = len(out)
    print(f"Réconciliation HubSpot ↔ Excel (join sur quote_number, tol {tol:.0%}) :\n")
    print(f"  Excel (financier)   : {n_fin} devis")
    print(f"  HubSpot (sprints)   : {n_hs} devis")
    print(f"  Appariés            : {n_match}")
    print(f"  Excel sans HubSpot  : {n_fin - n_match}")
    print(f"  HubSpot sans Excel  : {n_hs - n_match}\n")
    print(f"  {'métrique':<12}{'n comparés':>11}{'écarts >tol':>13}{'écart médian':>15}")
    for _, _, label in _COMPARE_METRICS:
        pcol = out[f"{label}_pct_diff"]
        n_cmp = pcol.notna().sum()
        n_flag = int(out[f"{label}_flag"].sum())
        med = pcol.abs().median()
        med_s = f"{med:.1f}%" if pd.notna(med) else "—"
        print(f"  {label:<12}{n_cmp:>11}{n_flag:>13}{med_s:>15}")

    return out

if __name__ == "__main__":
    df = FinancialSprintLoader().load()
    print(f"loaded {len(df)} financial rows · {df.shape[1]} columns")
    print(df[["client", "deal_value_eur", "gross_margin_pct", "quote_number"]].head(8).to_string(index=False))
    print()
    compare_hubspot_vs_excel()

    #deal value équivalent : on france : nb_unit = nb_km * 175 if perf < 30 200 < 40 225 if > 40
