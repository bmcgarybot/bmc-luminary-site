#!/usr/bin/env python3
"""
Export official CMS Provider Data facilities for BMC Service Network markets.

Sources:
- Hospital General Information (xubh-q36u)
- Nursing Home Provider Information (4pq5-n9py)
- Home Health Care Agencies (6jpm-sxkc)
- Hospice - General Information (yc9t-dgbk)

The exporter resolves each current CSV from the stable CMS dataset metadata ID,
downloads the official bulk file once, filters Arizona records to configured BMC
markets, and writes inventory-only government-registry census artifacts.

No outreach is staged or sent.
"""
from __future__ import annotations

import argparse
import csv
import io
import json
from pathlib import Path
import re
import time
import urllib.request

METADATA_BASE = "https://data.cms.gov/provider-data/api/1/metastore/schemas/dataset/items"
USER_AGENT = "Mozilla/5.0 (compatible; BMC-Service-Network-Assistant-Research/1.0; +https://bmcservicenetwork.com/)"

DATASETS = {
    "hospitals": {
        "id": "xubh-q36u",
        "title": "Hospital General Information",
        "category_label": "Hospitals & Medical Centers",
        "minimum_az_rows": 40,
    },
    "nursing_homes": {
        "id": "4pq5-n9py",
        "title": "Nursing Home Provider Information",
        "category_label": "Nursing Homes & Rehab Facilities",
        "minimum_az_rows": 50,
    },
    "home_health": {
        "id": "6jpm-sxkc",
        "title": "Home Health Care Agencies",
        "category_label": "Home Health Agencies",
        "minimum_az_rows": 50,
    },
    "hospice": {
        "id": "yc9t-dgbk",
        "title": "Hospice - General Information",
        "category_label": "Hospice Providers",
        "minimum_az_rows": 100,
    },
    "dialysis": {
        "id": "23ew-n7w9",
        "title": "Dialysis Facility - Listing by Facility",
        "category_label": "Dialysis Centers",
        "minimum_az_rows": 50,
    },
    "inpatient_rehab": {
        "id": "7t8x-u3ir",
        "title": "Inpatient Rehabilitation Facility - General Information",
        "category_label": "Inpatient Rehabilitation Facilities",
        "minimum_az_rows": 10,
    },
    "long_term_care_hospitals": {
        "id": "azum-44iv",
        "title": "Long-Term Care Hospital - General Information",
        "category_label": "Long-Term Care Hospitals",
        "minimum_az_rows": 3,
    },
}

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


def clean(value) -> str:
    return " ".join(str(value or "").split()).strip()


def slug(value: str) -> str:
    return re.sub(r"[^a-z0-9]+", "-", value.lower()).strip("-")


def key(value: str) -> str:
    return re.sub(r"[^a-z0-9]+", "", clean(value).lower())


def fetch_bytes(url: str, *, accept: str, attempts: int = 5) -> bytes:
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
            with urllib.request.urlopen(req, timeout=120) as response:
                return response.read()
        except Exception as exc:
            last = exc
            if attempt + 1 < attempts:
                time.sleep(2.0 * (attempt + 1))
    raise last


def fetch_json(url: str):
    return json.loads(fetch_bytes(url, accept="application/json,*/*").decode("utf-8", "replace"))


def current_distribution(dataset_id: str):
    meta_url = f"{METADATA_BASE}/{dataset_id}"
    meta = fetch_json(meta_url)
    distributions = meta.get("distribution") or []
    csv_dist = next(
        (
            item
            for item in distributions
            if str(item.get("mediaType") or "").lower() == "text/csv"
            and item.get("downloadURL")
        ),
        None,
    )
    if not csv_dist:
        raise RuntimeError(f"No CSV distribution found for CMS dataset {dataset_id}")
    return meta_url, meta, csv_dist["downloadURL"]


def parse_csv(url: str):
    raw = fetch_bytes(url, accept="text/csv,text/plain,*/*")
    text = raw.decode("utf-8-sig", "replace")
    reader = csv.DictReader(io.StringIO(text))
    rows = list(reader)
    if not rows:
        raise RuntimeError(f"CMS CSV returned no rows: {url}")
    return rows


def field(row: dict, *aliases: str) -> str:
    normalized = {key(k): v for k, v in row.items()}
    for alias in aliases:
        value = normalized.get(key(alias))
        if value not in (None, ""):
            return clean(value)
    return ""


def market_for_city(city: str):
    c = clean(city).casefold()
    for market, aliases in MARKETS.items():
        if c in aliases:
            return market
    return None


def source_record_url(dataset_id: str, ccn: str) -> str:
    base = f"https://data.cms.gov/provider-data/dataset/{dataset_id}"
    if not ccn:
        return base
    # Stable landing page is intentionally used as provenance; CCN is retained
    # explicitly in the artifact record and evidence note.
    return base


def record_from_row(dataset_key: str, spec: dict, row: dict, verified_date: str):
    state = field(row, "State")
    if state.upper() != "AZ":
        return None

    city = field(row, "City/Town", "City")
    market = market_for_city(city)
    if not market:
        return None

    name = field(row, "Facility Name", "Provider Name", "Name", "Legal Business Name")
    if not name:
        return None

    ccn = field(row, "CMS Certification Number (CCN)", "Facility ID", "Provider ID", "CCN")
    address = field(row, "Address", "Provider Address", "Address Line 1")
    address2 = field(row, "Address Line 2")
    zipcode = field(row, "ZIP Code", "Zip")
    county = field(row, "County/Parish", "County")
    phone = field(row, "Telephone Number", "Phone Number", "Phone")
    ownership = field(row, "Ownership Type", "Type of Ownership", "Hospital Ownership", "Profit or Non-Profit")
    certification_date = field(
        row,
        "Certification Date",
        "Date First Approved to Provide Medicare and Medicaid Services",
    )
    facility_type = field(row, "Hospital Type", "Provider Type")

    note_parts = [
        f"Centers for Medicare & Medicaid Services (CMS) {spec['title']} government record"
    ]
    if ccn:
        note_parts.append(f"CCN {ccn}")
    if facility_type:
        note_parts.append(facility_type)
    if ownership:
        note_parts.append(ownership)
    if address:
        full_address = " ".join(x for x in (address, address2) if x)
        note_parts.append(f"address: {full_address}, {city}, AZ {zipcode}".strip())
    if county:
        note_parts.append(f"{county} County")
    if certification_date:
        note_parts.append(f"certification date {certification_date}")

    return {
        "side": "buyer",
        "market": market,
        "category_key": "medical_centers",
        "category_label": spec["category_label"],
        "business_name": name,
        "url": source_record_url(spec["id"], ccn),
        "domain": "data.cms.gov",
        "phone": phone or None,
        "email": None,
        "official": False,
        "official_registry": True,
        "verified_date": verified_date,
        "address": " ".join(x for x in (address, address2) if x) or None,
        "zip": zipcode or None,
        "county": county or None,
        "cms_dataset": dataset_key,
        "cms_dataset_id": spec["id"],
        "cms_ccn": ccn or None,
        "ownership": ownership or None,
        "facility_type": facility_type or None,
        "certification_date": certification_date or None,
        "note": " | ".join(note_parts),
    }


def write_artifact(path: Path, *, dataset_key: str, spec: dict, meta_url: str, meta: dict, download_url: str, verified_date: str, records: list, source_rows: int, arizona_rows: int):
    by_market = {}
    for row in records:
        by_market[row["market"]] = by_market.get(row["market"], 0) + 1

    payload = {
        "generated_at": verified_date + "T23:59:00Z",
        "purpose": f"Assistant-led BMC-market buyer census from official CMS {spec['title']} bulk data.",
        "safety": "Inventory seed only. Does not promote buyers/vendors and does not stage or send outreach.",
        "source": f"https://data.cms.gov/provider-data/dataset/{spec['id']}",
        "source_metadata": meta_url,
        "source_distribution": download_url,
        "source_stats": {
            "dataset_id": spec["id"],
            "dataset_title": meta.get("title") or spec["title"],
            "modified": meta.get("modified"),
            "released": meta.get("released"),
            "source_rows": source_rows,
            "arizona_rows": arizona_rows,
            "bmc_market_rows": len(records),
            "by_market": dict(sorted(by_market.items())),
        },
        "count": len(records),
        "records": sorted(records, key=lambda r: (r["market"], r["business_name"].casefold(), r.get("cms_ccn") or "")),
    }
    path.write_text(json.dumps(payload, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--date", required=True)
    parser.add_argument("--output-dir", type=Path, required=True)
    args = parser.parse_args()
    args.output_dir.mkdir(parents=True, exist_ok=True)

    summary = {}
    total = 0

    for dataset_key, spec in DATASETS.items():
        meta_url, meta, download_url = current_distribution(spec["id"])
        rows = parse_csv(download_url)
        arizona_rows = sum(1 for row in rows if field(row, "State").upper() == "AZ")
        if arizona_rows < spec["minimum_az_rows"]:
            raise RuntimeError(
                f"CMS {dataset_key} Arizona row count unexpectedly small: "
                f"{arizona_rows} < {spec['minimum_az_rows']}"
            )

        records = []
        seen = set()
        for row in rows:
            record = record_from_row(dataset_key, spec, row, args.date)
            if not record:
                continue
            identity = (
                record["market"],
                record["business_name"].casefold(),
                record.get("cms_ccn") or "",
            )
            if identity in seen:
                continue
            seen.add(identity)
            records.append(record)

        path = args.output_dir / f"assistant-research-bootstrap-{args.date}-cms-{slug(dataset_key)}-18.json"
        write_artifact(
            path,
            dataset_key=dataset_key,
            spec=spec,
            meta_url=meta_url,
            meta=meta,
            download_url=download_url,
            verified_date=args.date,
            records=records,
            source_rows=len(rows),
            arizona_rows=arizona_rows,
        )
        summary[dataset_key] = {
            "dataset_id": spec["id"],
            "source_rows": len(rows),
            "arizona_rows": arizona_rows,
            "bmc_market_rows": len(records),
            "artifact": str(path),
            "modified": meta.get("modified"),
            "released": meta.get("released"),
        }
        total += len(records)

    if total < 100:
        raise RuntimeError(f"Combined CMS BMC-market export unexpectedly small: {total}")

    print(json.dumps({"combined_bmc_market_rows": total, "datasets": summary}, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
