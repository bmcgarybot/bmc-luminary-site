#!/usr/bin/env python3
"""
Export NCES Common Core of Data public-school facilities for BMC markets.

Source: official NCES ArcGIS Hub CSV distribution for Public School Locations 2024-25,
as cataloged by Data.gov / U.S. Department of Education.

Inventory-only assistant census generator. No outreach is staged or sent.
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

CSV_URL = "https://data-nces.opendata.arcgis.com/api/download/v1/items/10e02c7ba56b4ef4a6a050f212f75134/csv?layers=0"
SOURCE_PAGE = "https://catalog.data.gov/dataset/public-school-locations-2024-25"
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
    return " ".join(str(v or "").split()).strip()


def norm(v):
    return re.sub(r"[^a-z0-9]+", "", clean(v).lower())


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


def field(row, *aliases):
    by_norm = {norm(k): v for k, v in row.items()}
    for alias in aliases:
        value = by_norm.get(norm(alias))
        if value not in (None, ""):
            return clean(value)
    return ""


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

    raw = fetch_bytes(CSV_URL)
    text = raw.decode("utf-8-sig", "replace")
    rows = list(csv.DictReader(io.StringIO(text)))
    if len(rows) < 50_000:
        raise RuntimeError(f"NCES public-school CSV unexpectedly small: {len(rows)}")

    records = []
    arizona_rows = 0
    skipped_other_market = 0
    skipped_closed = 0

    for row in rows:
        state = field(row, "STABR", "LSTATE", "Postal State Abbreviation Code", "Location State")
        if state.upper() != "AZ":
            continue
        arizona_rows += 1

        city = field(row, "LCITY", "Location City")
        market = market_for_city(city)
        if not market:
            skipped_other_market += 1
            continue

        status = field(row, "SY_STATUS_TEXT", "Start of year status (description)", "STATUS")
        if any(term in status.lower() for term in ("closed", "inactive")):
            skipped_closed += 1
            continue

        name = field(row, "SCH_NAME", "School Name", "NAME")
        if not name:
            continue

        nces_id = field(row, "NCESSCH", "Unique School ID")
        street = field(row, "LSTREET1", "Location Address, street 1", "LSTREET", "STREET")
        street2 = field(row, "LSTREET2", "Location Address, street2")
        zipcode = field(row, "LZIP", "Location 5 digit ZIP code", "ZIP")
        phone = field(row, "PHONE")
        school_type = field(row, "SCHOOL_TYPE_TEXT", "School Type (description)")
        lea = field(row, "LEA_Name", "LEA_NAME", "Education Agency Name")
        grades_low = field(row, "GSLO", "Grades Offered - Lowest")
        grades_high = field(row, "GSHI", "Grades Offered - Highest")
        enrollment = field(row, "MEMBER", "Total elementary/secondary students, All Grades (excludes AE)")
        charter = field(row, "CHARTER_TEXT", "Whether a Charter School")

        full_street = " ".join(x for x in (street, street2) if x)
        note = ["National Center for Education Statistics Common Core of Data public-school record"]
        if nces_id:
            note.append(f"NCES school ID {nces_id}")
        if school_type:
            note.append(school_type)
        if status:
            note.append(f"status: {status}")
        if lea:
            note.append(f"LEA: {lea}")
        if grades_low or grades_high:
            note.append(f"grades {grades_low or '?'}-{grades_high or '?'}")
        if enrollment and enrollment not in ("-1", "-2", "-9"):
            note.append(f"reported enrollment {enrollment}")
        if charter:
            note.append(f"charter: {charter}")
        if full_street:
            note.append(f"address: {full_street}, {city}, AZ {zipcode}".strip())

        records.append({
            "side": "buyer",
            "market": market,
            "category_key": "schools_education",
            "category_label": "Schools & Education",
            "business_name": name,
            "url": SOURCE_PAGE,
            "domain": "catalog.data.gov",
            "phone": phone or None,
            "email": None,
            "official": False,
            "official_registry": True,
            "verified_date": args.date,
            "address": full_street or None,
            "zip": zipcode or None,
            "nces_school_id": nces_id or None,
            "school_type": school_type or None,
            "operational_status": status or None,
            "lea_name": lea or None,
            "reported_enrollment": enrollment or None,
            "source_distribution": CSV_URL,
            "note": " | ".join(note),
        })

    if len(records) < 300:
        raise RuntimeError(
            f"NCES BMC-market school export unexpectedly small: {len(records)} "
            f"(Arizona rows={arizona_rows})"
        )

    # A school is one facility identity in this official layer.
    seen = set()
    deduped = []
    for record in sorted(records, key=lambda r: (r["market"], r["business_name"].casefold(), r.get("nces_school_id") or "")):
        identity = (record["market"], record.get("nces_school_id") or record["business_name"].casefold())
        if identity in seen:
            continue
        seen.add(identity)
        deduped.append(record)

    by_market = dict(sorted(Counter(r["market"] for r in deduped).items()))
    out = args.output_dir / f"assistant-research-bootstrap-{args.date}-nces-public-schools-21.json"
    payload = {
        "generated_at": args.date + "T23:59:00Z",
        "purpose": "Assistant-led BMC-market public-school buyer census from the official NCES Common Core of Data public-school location distribution.",
        "safety": "Inventory seed only. Does not promote buyers/vendors and does not stage or send outreach.",
        "source": SOURCE_PAGE,
        "source_distribution": CSV_URL,
        "source_stats": {
            "national_rows": len(rows),
            "arizona_rows": arizona_rows,
            "bmc_market_records": len(deduped),
            "by_market": by_market,
            "skipped_arizona_other_market": skipped_other_market,
            "skipped_closed_or_inactive": skipped_closed,
        },
        "count": len(deduped),
        "records": deduped,
    }
    out.write_text(json.dumps(payload, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    print(json.dumps({"artifact": str(out), "count": len(deduped), "by_market": by_market, "arizona_rows": arizona_rows}, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
