#!/usr/bin/env python3
"""
Export current Arizona MVD valid dealer-license facilities for BMC markets.

Official source landing page:
https://azdot.gov/mvd/businesses-organizations/dealer-licensing

ADOT publishes a dated Valid Dealer Report Excel file and states that it is
updated every Tuesday and Thursday. This exporter discovers the current .xls
link from the official page at runtime, reads the workbook, locates the header
row defensively, and filters physical dealer/licensee addresses to configured
BMC markets.

Inventory-only government-registry census. No outreach is staged or sent.
"""
from __future__ import annotations

import argparse
from collections import Counter
import html
import io
import json
from pathlib import Path
import re
import time
import urllib.parse
import urllib.request

import pandas as pd

LANDING = "https://azdot.gov/mvd/businesses-organizations/dealer-licensing"
# Current official report URL exposed by ADOT's Valid Dealer Report link.
# The landing page intermittently returns 403 to automated runners even while
# this public spreadsheet remains downloadable.
FALLBACK_REPORT_URL = "https://apps.azdot.gov/files/26/valid-dealer-report/Report-2026-10-22-00-14-59.xls"
USER_AGENT = "Mozilla/5.0 (compatible; BMC-Service-Network-Assistant-Research/1.0; +https://bmcservicenetwork.com/)"

MARKETS = {
    "Ash Fork": {"ash fork"},
    "Bullhead City": {"bullhead city"},
    "Camp Verde": {"camp verde"},
    "Chino Valley": {"chino valley"},
    "Cordes Lakes": {"cordes lakes"},
    "Cottonwood": {"cottonwood"},
    "Dewey-Humboldt": {"dewey-humboldt", "dewey", "humboldt"},
    "Flagstaff": {"flagstaff"},
    "Golden Valley": {"golden valley"},
    "Kingman": {"kingman"},
    "Mayer": {"mayer"},
    "Phoenix": {"phoenix"},
    "Prescott": {"prescott"},
    "Prescott Valley": {"prescott valley"},
    "Scottsdale": {"scottsdale"},
    "Sedona": {"sedona"},
    "Seligman": {"seligman"},
    "Skull Valley": {"skull valley"},
    "Tucson": {"tucson"},
    "Williamson Valley": {"williamson valley"},
    "Winslow": {"winslow"},
}


def clean(v):
    if v is None:
        return ""
    s = str(v)
    if s.lower() == "nan":
        return ""
    return " ".join(s.split()).strip()


def norm(v):
    return re.sub(r"[^a-z0-9]+", "", clean(v).lower())


def fetch_bytes(url, accept="*/*", attempts=5):
    last = None
    for attempt in range(attempts):
        try:
            req = urllib.request.Request(
                url,
                headers={
                    "User-Agent": USER_AGENT,
                    "Accept": accept,
                    "Cache-Control": "no-cache",
                },
            )
            with urllib.request.urlopen(req, timeout=180) as response:
                return response.read()
        except Exception as exc:
            last = exc
            if attempt + 1 < attempts:
                time.sleep(2.0 * (attempt + 1))
    raise last


def discover_report_url():
    try:
        text = fetch_bytes(LANDING, "text/html,*/*").decode("utf-8", "replace")
        text = html.unescape(text)

        # Prefer the current dated Valid Dealer Report path when the landing
        # page permits automated access.
        candidates = re.findall(r'href=["\']([^"\']+\.xlsx?[^"\']*)["\']', text, flags=re.I)
        candidates += re.findall(r'(https?://[^\s"\']+valid-dealer-report/[^\s"\']+\.xlsx?)', text, flags=re.I)
        candidates = [urllib.parse.urljoin(LANDING, c) for c in candidates]

        preferred = [c for c in candidates if "valid-dealer-report" in c.lower()]
        if preferred:
            return preferred[0]
        if candidates:
            return candidates[0]
    except Exception:
        # ADOT's public Drupal landing page has intermittently returned HTTP
        # 403 to GitHub Actions. Do not treat that as loss of the underlying
        # public report when the official report link itself is known.
        pass

    return FALLBACK_REPORT_URL


def locate_header(raw_df):
    best = None
    for idx in range(min(len(raw_df), 40)):
        cells = [clean(x).lower() for x in raw_df.iloc[idx].tolist()]
        joined = " | ".join(cells)
        score = 0
        if "dealer" in joined or "business" in joined:
            score += 2
        if "license" in joined:
            score += 2
        if "city" in joined:
            score += 2
        if "address" in joined or "street" in joined:
            score += 1
        if "zip" in joined:
            score += 1
        if score >= 5 and (best is None or score > best[0]):
            best = (score, idx)
    if best is None:
        raise RuntimeError(
            "Could not identify ADOT dealer-report header row; "
            f"first_rows={raw_df.head(10).fillna('').astype(str).values.tolist()}"
        )
    return best[1]


def make_unique_headers(values):
    seen = {}
    out = []
    for i, value in enumerate(values):
        base = clean(value) or f"column_{i}"
        key = base
        n = seen.get(base, 0)
        if n:
            key = f"{base}_{n+1}"
        seen[base] = n + 1
        out.append(key)
    return out


def find_col(columns, exact=(), terms=(), exclude=()):
    normalized = {norm(c): c for c in columns}
    for candidate in exact:
        if norm(candidate) in normalized:
            return normalized[norm(candidate)]
    for c in columns:
        low = clean(c).lower()
        if exclude and any(x.lower() in low for x in exclude):
            continue
        if terms and all(x.lower() in low for x in terms):
            return c
    return None


def market_for_city(city):
    c = clean(city).casefold()
    for market, aliases in MARKETS.items():
        if c in aliases:
            return market
    return None


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--date", required=True)
    parser.add_argument("--output-dir", type=Path, required=True)
    args = parser.parse_args()
    args.output_dir.mkdir(parents=True, exist_ok=True)

    report_url = discover_report_url()
    raw = fetch_bytes(report_url, "application/vnd.ms-excel,application/octet-stream,*/*")
    if len(raw) < 50_000:
        raise RuntimeError(f"ADOT dealer workbook unexpectedly small: {len(raw)} bytes")

    raw_df = pd.read_excel(io.BytesIO(raw), sheet_name=0, header=None, dtype=str, engine="xlrd")
    header_row = locate_header(raw_df)
    headers = make_unique_headers(raw_df.iloc[header_row].tolist())
    df = raw_df.iloc[header_row + 1 :].copy()
    df.columns = headers
    df = df.dropna(how="all")

    cols = list(df.columns)
    name_col = find_col(cols, ("Dealer Name", "Business Name", "Licensee Name"), ("dealer", "name"))
    if not name_col:
        name_col = find_col(cols, (), ("business", "name"))
    dba_col = find_col(cols, ("DBA", "DBA Name", "Doing Business As"), ("dba",))
    license_col = find_col(cols, ("Dealer License Number", "License Number", "License #"), ("license",), ("type",))
    type_col = find_col(cols, ("License Type", "Dealer Type", "Type"), ("type",))
    address_col = find_col(cols, ("Business Address", "Address", "Street Address"), ("address",))
    if not address_col:
        address_col = find_col(cols, (), ("street",))
    city_col = find_col(cols, ("City", "Business City"), ("city",))
    state_col = find_col(cols, ("State", "Business State"), ("state",))
    zip_col = find_col(cols, ("Zip", "ZIP Code", "Postal Code"), ("zip",))
    phone_col = find_col(cols, ("Phone", "Business Phone", "Telephone"), ("phone",))
    county_col = find_col(cols, ("County",), ("county",))
    expiration_col = find_col(cols, ("Expiration Date", "Expires", "Expiration"), ("expir",))

    required = {
        "name": name_col,
        "license": license_col,
        "address": address_col,
        "city": city_col,
    }
    missing = [k for k, v in required.items() if not v]
    if missing:
        raise RuntimeError(
            f"ADOT dealer report missing required detected fields {missing}; columns={cols}"
        )

    records = []
    parsed_rows = 0
    excluded_other_market = 0
    excluded_non_az = 0

    for _, row in df.iterrows():
        name = clean(row.get(name_col))
        license_no = clean(row.get(license_col))
        address = clean(row.get(address_col))
        city = clean(row.get(city_col))
        if not name or not license_no or not address or not city:
            continue
        parsed_rows += 1

        state = clean(row.get(state_col)) if state_col else ""
        if state and state.upper() not in {"AZ", "ARIZONA"}:
            excluded_non_az += 1
            continue

        market = market_for_city(city)
        if not market:
            excluded_other_market += 1
            continue

        dba = clean(row.get(dba_col)) if dba_col else ""
        dealer_type = clean(row.get(type_col)) if type_col else ""
        zipcode = clean(row.get(zip_col)) if zip_col else ""
        phone = clean(row.get(phone_col)) if phone_col else ""
        county = clean(row.get(county_col)) if county_col else ""
        expires = clean(row.get(expiration_col)) if expiration_col else ""

        display_name = dba if dba and dba.casefold() != name.casefold() else name
        note = [
            "Arizona Department of Transportation Motor Vehicle Division Valid Dealer Report government record",
            f"dealer license {license_no}",
        ]
        if name and display_name.casefold() != name.casefold():
            note.append(f"licensee: {name}")
        if dealer_type:
            note.append(f"license/dealer type: {dealer_type}")
        if expires:
            note.append(f"expiration: {expires}")
        if address:
            note.append(f"address: {address}, {city}, AZ {zipcode}".strip())
        if county:
            note.append(f"{county} County")
        note.append("ADOT identifies the record as a currently valid dealer/licensee in its regularly refreshed Valid Dealer Report")

        records.append(
            {
                "side": "buyer",
                "market": market,
                "category_key": "auto_fleet",
                "category_label": "Auto Dealers, Vehicle Businesses & Fleet Facilities",
                "business_name": display_name,
                "url": LANDING,
                "domain": "azdot.gov",
                "phone": phone or None,
                "email": None,
                "official": False,
                "official_registry": True,
                "verified_date": args.date,
                "address": address,
                "zip": zipcode or None,
                "county": county or None,
                "adot_licensee_name": name,
                "adot_dealer_license": license_no,
                "adot_dealer_type": dealer_type or None,
                "adot_expiration": expires or None,
                "source_distribution": report_url,
                "note": " | ".join(note),
            }
        )

    if parsed_rows < 500:
        raise RuntimeError(f"ADOT dealer workbook parsed too few usable rows: {parsed_rows}")

    seen = set()
    deduped = []
    for record in sorted(
        records,
        key=lambda r: (
            r["market"],
            r["business_name"].casefold(),
            r["adot_dealer_license"],
            r["address"].casefold(),
        ),
    ):
        identity = (
            record["market"],
            record["adot_dealer_license"],
            record["address"].casefold(),
        )
        if identity in seen:
            continue
        seen.add(identity)
        deduped.append(record)

    if len(deduped) < 100:
        raise RuntimeError(
            f"ADOT BMC-market valid-dealer export unexpectedly small: {len(deduped)} "
            f"from {parsed_rows} usable workbook rows"
        )

    by_market = dict(sorted(Counter(r["market"] for r in deduped).items()))
    by_type = dict(sorted(Counter(r.get("adot_dealer_type") or "UNSPECIFIED" for r in deduped).items()))

    out = args.output_dir / f"assistant-research-bootstrap-{args.date}-adot-valid-dealers-33.json"
    payload = {
        "generated_at": args.date + "T23:59:00Z",
        "purpose": "Assistant-led BMC-market automotive/fleet commercial buyer census from the current official ADOT MVD Valid Dealer Report.",
        "safety": "Inventory seed only. Does not promote buyers/vendors and does not stage or send outreach.",
        "source": LANDING,
        "source_distribution": report_url,
        "source_stats": {
            "workbook_header_row_zero_based": header_row,
            "workbook_usable_rows": parsed_rows,
            "bmc_market_records": len(deduped),
            "excluded_other_market": excluded_other_market,
            "excluded_non_arizona": excluded_non_az,
            "by_market": by_market,
            "by_dealer_type": by_type,
        },
        "count": len(deduped),
        "records": deduped,
    }
    out.write_text(json.dumps(payload, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    print(
        json.dumps(
            {
                "artifact": str(out),
                "report_url": report_url,
                "workbook_usable_rows": parsed_rows,
                "count": len(deduped),
                "by_market": by_market,
                "by_dealer_type": by_type,
            },
            indent=2,
            sort_keys=True,
        )
    )


if __name__ == "__main__":
    main()
