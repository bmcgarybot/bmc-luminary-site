#!/usr/bin/env python3
"""
Export current Arizona IRS Exempt Organizations Business Master File records
for configured BMC markets.

Official source:
  https://www.irs.gov/pub/irs-soi/eo_az.csv

The EO BMF is cumulative and contains the most recent IRS Business Master File
information for organizations that received recognition of tax-exempt status.
Records are filtered to configured BMC filing-address cities. Status code 25
(terminating private foundation status) is excluded; status codes and IRS
classification fields are otherwise preserved as government evidence.

Inventory-only census. No outreach is staged or sent.
"""
from __future__ import annotations

import argparse
from collections import Counter
import csv
import io
import json
from pathlib import Path
import re
import time
import urllib.request

CSV_URL = "https://www.irs.gov/pub/irs-soi/eo_az.csv"
SOURCE_PAGE = "https://www.irs.gov/charities-non-profits/exempt-organizations-business-master-file-extract-eo-bmf"
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

NTEE_LABELS = {
    "A": "Arts, Culture & Humanities Nonprofits",
    "B": "Education Nonprofits",
    "C": "Environmental Nonprofits",
    "D": "Animal-Related Nonprofits",
    "E": "Health Care Nonprofits",
    "F": "Mental Health & Crisis Intervention Nonprofits",
    "G": "Voluntary Health & Medical Nonprofits",
    "H": "Medical Research Nonprofits",
    "I": "Crime & Legal Nonprofits",
    "J": "Employment Nonprofits",
    "K": "Food, Agriculture & Nutrition Nonprofits",
    "L": "Housing & Shelter Nonprofits",
    "M": "Public Safety & Disaster Relief Nonprofits",
    "N": "Recreation & Sports Nonprofits",
    "O": "Youth Development Nonprofits",
    "P": "Human Services Nonprofits",
    "Q": "International Affairs Nonprofits",
    "R": "Civil Rights & Advocacy Nonprofits",
    "S": "Community Improvement Nonprofits",
    "T": "Philanthropy & Grantmaking Foundations",
    "U": "Science & Technology Nonprofits",
    "V": "Social Science Nonprofits",
    "W": "Public & Societal Benefit Nonprofits",
    "X": "Religion-Related Organizations",
    "Y": "Mutual & Membership Benefit Organizations",
    "Z": "Other / Unclassified Nonprofits",
}

STATUS_LABELS = {
    "01": "Unconditional Exemption",
    "02": "Conditional Exemption",
    "12": "Section 4947(a)(2) Trust",
    "25": "Terminating Private Foundation Status",
}

FOUNDATION_LABELS = {
    "10": "Church",
    "11": "School",
    "12": "Hospital or Medical Research Organization",
    "13": "College/University Benefit Organization",
    "14": "Governmental Unit",
    "15": "Publicly Supported Organization",
    "16": "509(a)(2) Public Charity",
    "17": "509(a)(3) Supporting Organization",
    "18": "Public Safety Testing Organization",
    "21": "509(a)(3) Type I",
    "22": "509(a)(3) Type II",
    "23": "509(a)(3) Type III Functionally Integrated",
    "24": "509(a)(3) Type III Not Functionally Integrated",
}


def clean(v):
    return " ".join(str(v or "").split()).strip()


def norm_code(v, width=None):
    value = clean(v)
    if not value:
        return ""
    # csv readers may preserve zero padding; normalize numeric-like strings.
    try:
        if "." in value:
            value = str(int(float(value)))
        elif value.isdigit():
            value = str(int(value))
    except Exception:
        pass
    if width and value.isdigit():
        value = value.zfill(width)
    return value


def fetch_bytes(url, attempts=5):
    last = None
    for attempt in range(attempts):
        try:
            req = urllib.request.Request(
                url,
                headers={
                    "User-Agent": USER_AGENT,
                    "Accept": "text/csv,text/plain,*/*",
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


def market_for_city(city):
    c = clean(city).casefold()
    for market, aliases in MARKETS.items():
        if c in aliases:
            return market
    return None


def money(v):
    value = clean(v)
    if not value:
        return None
    try:
        return int(float(value))
    except Exception:
        return None


def classify(row):
    ntee = clean(row.get("NTEE_CD")).upper()
    foundation = norm_code(row.get("FOUNDATION"), 2)
    filing_req = norm_code(row.get("FILING_REQ_CD"), 2)

    if foundation == "10" or filing_req in {"06", "13"} or ntee.startswith("X"):
        return "churches_nonprofits", "Churches & Religious Organizations"
    if foundation in {"11", "13"} or ntee.startswith("B"):
        return "schools_education", NTEE_LABELS.get("B")
    if foundation == "12" or ntee[:1] in {"E", "G", "H"}:
        return "medical_centers", NTEE_LABELS.get(ntee[:1], "Health Care Nonprofits")
    if ntee.startswith("F"):
        return "therapy_behavioral", NTEE_LABELS.get("F")
    if ntee.startswith("L"):
        return "property_management", NTEE_LABELS.get("L")
    return "churches_nonprofits", NTEE_LABELS.get(ntee[:1], "Nonprofit & Exempt Organizations")


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--date", required=True)
    parser.add_argument("--output-dir", type=Path, required=True)
    args = parser.parse_args()
    args.output_dir.mkdir(parents=True, exist_ok=True)

    raw = fetch_bytes(CSV_URL)
    rows = list(csv.DictReader(io.StringIO(raw.decode("utf-8-sig", "replace"))))
    if len(rows) < 20_000:
        raise RuntimeError(f"IRS Arizona EO BMF unexpectedly small: {len(rows)}")

    required = {"EIN", "NAME", "STREET", "CITY", "STATE", "ZIP", "SUBSECTION", "STATUS", "FOUNDATION", "NTEE_CD"}
    missing = required - set(rows[0].keys())
    if missing:
        raise RuntimeError(f"IRS EO BMF missing expected columns: {sorted(missing)}")

    records = []
    excluded_terminating = 0
    excluded_other_market = 0
    statuses = Counter()

    for row in rows:
        if clean(row.get("STATE")).upper() != "AZ":
            continue

        status = norm_code(row.get("STATUS"), 2)
        statuses[status] += 1
        if status == "25":
            excluded_terminating += 1
            continue

        city = clean(row.get("CITY"))
        market = market_for_city(city)
        if not market:
            excluded_other_market += 1
            continue

        name = clean(row.get("NAME"))
        ein = re.sub(r"\D", "", clean(row.get("EIN")))
        if not name or len(ein) != 9:
            continue

        street = clean(row.get("STREET"))
        zipcode = clean(row.get("ZIP"))
        sort_name = clean(row.get("SORT_NAME"))
        ico = clean(row.get("ICO"))
        subsection = norm_code(row.get("SUBSECTION"), 2)
        foundation = norm_code(row.get("FOUNDATION"), 2)
        filing_req = norm_code(row.get("FILING_REQ_CD"), 2)
        ntee = clean(row.get("NTEE_CD")).upper()
        ruling = clean(row.get("RULING"))
        tax_period = clean(row.get("TAX_PERIOD"))
        assets = money(row.get("ASSET_AMT"))
        income = money(row.get("INCOME_AMT"))
        revenue = money(row.get("REVENUE_AMT"))
        deductibility = norm_code(row.get("DEDUCTIBILITY"))

        category_key, category_label = classify(row)
        status_label = STATUS_LABELS.get(status, f"IRS EO status {status or 'blank'}")
        foundation_label = FOUNDATION_LABELS.get(foundation)
        ntee_label = NTEE_LABELS.get(ntee[:1]) if ntee else None

        note = [
            "Internal Revenue Service Exempt Organizations Business Master File government record",
            f"EIN {ein}",
            f"status: {status_label}",
        ]
        if subsection:
            note.append(f"IRC subsection 501(c)({subsection})")
        if foundation_label:
            note.append(foundation_label)
        if ntee:
            note.append(f"NTEE {ntee}" + (f" ({ntee_label})" if ntee_label else ""))
        if ruling:
            note.append(f"IRS ruling date {ruling}")
        if tax_period:
            note.append(f"latest tax period {tax_period}")
        if street:
            note.append(f"filing address: {street}, {city}, AZ {zipcode}".strip())
        if sort_name:
            note.append(f"secondary/sort name: {sort_name}")
        note.append("IRS state/city reflects filing/headquarters address and does not by itself prove operations outside that address")

        records.append({
            "side": "buyer",
            "market": market,
            "category_key": category_key,
            "category_label": category_label,
            "business_name": name,
            "url": SOURCE_PAGE,
            "domain": "irs.gov",
            "phone": None,
            "email": None,
            "official": False,
            "official_registry": True,
            "verified_date": args.date,
            "address": street or None,
            "zip": zipcode or None,
            "irs_ein": ein,
            "irs_subsection": subsection or None,
            "irs_status": status or None,
            "irs_status_label": status_label,
            "irs_foundation_code": foundation or None,
            "irs_foundation_label": foundation_label,
            "irs_ntee_code": ntee or None,
            "irs_ntee_label": ntee_label,
            "irs_deductibility_code": deductibility or None,
            "irs_ruling_date": ruling or None,
            "irs_tax_period": tax_period or None,
            "irs_asset_amount": assets,
            "irs_income_amount": income,
            "irs_revenue_amount": revenue,
            "irs_in_care_of": ico or None,
            "irs_sort_name": sort_name or None,
            "source_distribution": CSV_URL,
            "note": " | ".join(note),
        })

    # One EIN is the legal/tax identity in this source. Preserve one record per
    # EIN+market even when name formatting is repeated.
    seen = set()
    deduped = []
    for record in sorted(records, key=lambda r: (r["market"], r["business_name"].casefold(), r["irs_ein"])):
        identity = (record["market"], record["irs_ein"])
        if identity in seen:
            continue
        seen.add(identity)
        deduped.append(record)

    if len(deduped) < 1_000:
        raise RuntimeError(
            f"IRS EO BMF BMC-market export unexpectedly small: {len(deduped)} "
            f"from {len(rows)} Arizona file rows"
        )

    by_market = dict(sorted(Counter(r["market"] for r in deduped).items()))
    by_category = dict(sorted(Counter(r["category_key"] for r in deduped).items()))
    out = args.output_dir / f"assistant-research-bootstrap-{args.date}-irs-eo-bmf-27.json"
    payload = {
        "generated_at": args.date + "T23:59:00Z",
        "purpose": "Assistant-led BMC-market nonprofit/religious/community buyer census from the official IRS Arizona Exempt Organizations Business Master File.",
        "safety": "Inventory seed only. Does not promote buyers/vendors and does not stage or send outreach.",
        "source": SOURCE_PAGE,
        "source_distribution": CSV_URL,
        "source_stats": {
            "arizona_source_rows": len(rows),
            "bmc_market_records": len(deduped),
            "excluded_terminating_status_25": excluded_terminating,
            "excluded_arizona_other_market": excluded_other_market,
            "source_status_counts": dict(sorted(statuses.items())),
            "by_market": by_market,
            "by_category": by_category,
        },
        "count": len(deduped),
        "records": deduped,
    }
    out.write_text(json.dumps(payload, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    print(json.dumps({
        "artifact": str(out),
        "count": len(deduped),
        "arizona_source_rows": len(rows),
        "excluded_terminating": excluded_terminating,
        "by_market": by_market,
        "by_category": by_category,
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
