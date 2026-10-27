#!/usr/bin/env python3
"""
Export official CMS provider-enrollment clinic/facility datasets for BMC markets.

This exporter resolves the latest version dynamically from https://data.cms.gov/data.json,
then pages the public CMS Data API. It currently covers:
- Federally Qualified Health Center Enrollments
- Rural Health Clinic Enrollments
- Home Infusion Therapy Providers
- Opioid Treatment Program Providers

Inventory-only assistant census generator. No outreach is staged or sent.
"""
from __future__ import annotations

import argparse
from collections import Counter
import json
from pathlib import Path
import re
import time
import urllib.parse
import urllib.request

CATALOG_URL = "https://data.cms.gov/data.json"
API_BASE = "https://data.cms.gov/data-api/v1/dataset"
USER_AGENT = "Mozilla/5.0 (compatible; BMC-Service-Network-Assistant-Research/1.0; +https://bmcservicenetwork.com/)"

DATASETS = {
    "fqhc": {
        "title": "Federally Qualified Health Center Enrollments",
        "category_key": "medical_centers",
        "category_label": "Federally Qualified Health Centers",
    },
    "rural_health_clinics": {
        "title": "Rural Health Clinic Enrollments",
        "category_key": "medical_centers",
        "category_label": "Rural Health Clinics",
    },
    "home_infusion": {
        "title": "Home Infusion Therapy Providers",
        "category_key": "medical_centers",
        "category_label": "Home Infusion Therapy Providers",
    },
    "opioid_treatment": {
        "title": "Opioid Treatment Program Providers",
        "category_key": "therapy_behavioral",
        "category_label": "Opioid Treatment Programs",
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


def clean(v):
    return " ".join(str(v or "").split()).strip()


def norm(v):
    return re.sub(r"[^a-z0-9]+", "", clean(v).lower())


def slug(v):
    return re.sub(r"[^a-z0-9]+", "-", v.lower()).strip("-")


def fetch_json(url, params=None, attempts=5):
    last = None
    for attempt in range(attempts):
        try:
            encoded = urllib.parse.urlencode(params or {}, doseq=True)
            target = url + (("?" + encoded) if encoded else "")
            req = urllib.request.Request(
                target,
                headers={
                    "User-Agent": USER_AGENT,
                    "Accept": "application/json,*/*",
                    "Cache-Control": "no-cache",
                },
            )
            with urllib.request.urlopen(req, timeout=120) as response:
                return json.loads(response.read().decode("utf-8", "replace"))
        except Exception as exc:
            last = exc
            if attempt + 1 < attempts:
                time.sleep(2.0 * (attempt + 1))
    raise last


def dataset_entries(catalog):
    if isinstance(catalog, dict):
        for key in ("dataset", "datasets"):
            if isinstance(catalog.get(key), list):
                return catalog[key]
    if isinstance(catalog, list):
        return catalog
    raise RuntimeError("Unexpected CMS data.json structure")


def extract_uuid(value):
    match = re.search(r"/dataset/([0-9a-fA-F-]{36})/(?:data|data-viewer)", str(value or ""))
    return match.group(1) if match else None


def resolve_latest(catalog, exact_title):
    entries = dataset_entries(catalog)
    candidates = [row for row in entries if clean(row.get("title")) == exact_title]
    if not candidates:
        raise RuntimeError(f"CMS catalog title not found: {exact_title}")

    # Prefer the DatasetSeries record whose 'last' pointer resolves to the newest version.
    for row in candidates:
        last = row.get("last")
        if isinstance(last, dict):
            uuid = extract_uuid(last.get("@id") or last.get("identifier"))
            if uuid:
                return uuid, row, last
        elif last:
            uuid = extract_uuid(last)
            if uuid:
                return uuid, row, {}

    # Fall back to a direct dataset identifier if the catalog exposes only one current item.
    for row in reversed(candidates):
        uuid = extract_uuid(row.get("@id") or row.get("identifier"))
        if uuid:
            return uuid, row, {}
    raise RuntimeError(f"Could not resolve latest UUID for CMS catalog title: {exact_title}")


def fetch_all(uuid, page_size=5000):
    rows = []
    offset = 0
    while True:
        payload = fetch_json(f"{API_BASE}/{uuid}/data", {"size": page_size, "offset": offset})
        if isinstance(payload, dict):
            batch = payload.get("data")
            if batch is None:
                # Some CMS endpoints return the row list directly under another common key.
                batch = payload.get("results") or payload.get("records")
        else:
            batch = payload
        if not isinstance(batch, list):
            raise RuntimeError(f"Unexpected CMS data response for {uuid}: {type(payload)}")
        rows.extend(batch)
        if len(batch) < page_size:
            break
        offset += len(batch)
        if offset > 2_000_000:
            raise RuntimeError(f"CMS pagination safety limit reached for {uuid}")
    return rows


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


def build_record(dataset_key, spec, uuid, row, verified_date):
    state = field(
        row,
        "STATE", "STATE_CD", "STATE CODE", "PRACTICE_STATE",
        "PRACTICE LOCATION STATE", "STATE_ABBR",
    )
    if state.upper() != "AZ":
        return None

    city = field(
        row,
        "CITY", "CITY_NAME", "PRACTICE_CITY",
        "PRACTICE LOCATION CITY", "ADDRESS_CITY",
    )
    market = market_for_city(city)
    if not market:
        return None

    legal_name = field(
        row,
        "ORGANIZATION NAME", "ORGANIZATION_NAME", "LEGAL BUSINESS NAME",
        "LEGAL_BUSINESS_NAME", "PROVIDER NAME", "PROVIDER_NAME",
        "BUSINESS NAME", "BUSINESS_NAME", "NAME",
    )
    dba = field(
        row,
        "DOING BUSINESS AS NAME", "DOING_BUSINESS_AS_NAME", "DBA NAME",
        "DBA_NAME", "DOING BUSINESS AS",
    )
    name = dba or legal_name
    if not name:
        return None

    address1 = field(
        row,
        "ADDRESS LINE 1", "ADDRESS_LINE_1", "ADDRESS1", "ADDRESS",
        "PRACTICE ADDRESS 1", "PRACTICE_ADDRESS1", "PRACTICE LOCATION ADDRESS 1",
    )
    address2 = field(
        row,
        "ADDRESS LINE 2", "ADDRESS_LINE_2", "ADDRESS2",
        "PRACTICE ADDRESS 2", "PRACTICE_ADDRESS2", "PRACTICE LOCATION ADDRESS 2",
    )
    zipcode = field(
        row,
        "ZIP CODE", "ZIP_CODE", "ZIP", "ZIP5", "PRACTICE_ZIP5",
        "PRACTICE LOCATION ZIP",
    )
    phone = field(
        row,
        "TELEPHONE NUMBER", "PHONE NUMBER", "PHONE", "TELEPHONE",
        "PRACTICE PHONE NUMBER", "PRACTICE_PHONE_NUMBER",
    )
    npi = field(row, "NPI", "NATIONAL PROVIDER IDENTIFIER")
    ccn = field(row, "CCN", "CMS CERTIFICATION NUMBER")
    enrollment_id = field(row, "ENROLLMENT ID", "ENROLLMENT_ID")
    org_type = field(row, "ORGANIZATION TYPE", "ORGANIZATION_TYPE", "PROVIDER TYPE TEXT", "PROVIDER_TYPE_TEXT")

    note = [f"Centers for Medicare & Medicaid Services (CMS) {spec['title']} government record"]
    if legal_name and dba and legal_name.casefold() != dba.casefold():
        note.append(f"legal business name: {legal_name}")
    if npi:
        note.append(f"NPI {npi}")
    if ccn:
        note.append(f"CCN {ccn}")
    if enrollment_id:
        note.append(f"enrollment {enrollment_id}")
    if org_type:
        note.append(org_type)
    if address1:
        full_address = " ".join(x for x in (address1, address2) if x)
        note.append(f"address: {full_address}, {city}, AZ {zipcode}".strip())

    return {
        "side": "buyer",
        "market": market,
        "category_key": spec["category_key"],
        "category_label": spec["category_label"],
        "business_name": name,
        "url": f"https://data.cms.gov/data-api/v1/dataset/{uuid}/data-viewer",
        "domain": "data.cms.gov",
        "phone": phone or None,
        "email": None,
        "official": False,
        "official_registry": True,
        "verified_date": verified_date,
        "address": " ".join(x for x in (address1, address2) if x) or None,
        "zip": zipcode or None,
        "cms_dataset": dataset_key,
        "cms_dataset_title": spec["title"],
        "cms_dataset_version_id": uuid,
        "npi": npi or None,
        "cms_ccn": ccn or None,
        "cms_enrollment_id": enrollment_id or None,
        "note": " | ".join(note),
    }


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--date", required=True)
    parser.add_argument("--output-dir", type=Path, required=True)
    args = parser.parse_args()
    args.output_dir.mkdir(parents=True, exist_ok=True)

    catalog = fetch_json(CATALOG_URL)
    summary = {}
    total = 0

    for dataset_key, spec in DATASETS.items():
        uuid, series_meta, version_meta = resolve_latest(catalog, spec["title"])
        rows = fetch_all(uuid)
        records = []
        seen = set()
        az_rows = 0

        for row in rows:
            state = field(
                row,
                "STATE", "STATE_CD", "STATE CODE", "PRACTICE_STATE",
                "PRACTICE LOCATION STATE", "STATE_ABBR",
            )
            if state.upper() == "AZ":
                az_rows += 1
            record = build_record(dataset_key, spec, uuid, row, args.date)
            if not record:
                continue
            identity = (
                record["market"],
                record["business_name"].casefold(),
                record.get("npi") or "",
                record.get("cms_ccn") or "",
                record.get("cms_enrollment_id") or "",
                record.get("address") or "",
            )
            if identity in seen:
                continue
            seen.add(identity)
            records.append(record)

        by_market = dict(sorted(Counter(r["market"] for r in records).items()))
        artifact_path = args.output_dir / f"assistant-research-bootstrap-{args.date}-cms-{slug(dataset_key)}-23.json"
        payload = {
            "generated_at": args.date + "T23:59:00Z",
            "purpose": f"Assistant-led BMC-market buyer census from official CMS {spec['title']} data.",
            "safety": "Inventory seed only. Does not promote buyers/vendors and does not stage or send outreach.",
            "source": f"https://data.cms.gov/data-api/v1/dataset/{uuid}/data-viewer",
            "source_catalog": CATALOG_URL,
            "source_stats": {
                "series_title": spec["title"],
                "latest_version_uuid": uuid,
                "latest_version_title": clean(version_meta.get("title")) if isinstance(version_meta, dict) else None,
                "catalog_modified": series_meta.get("modified"),
                "source_rows": len(rows),
                "arizona_rows": az_rows,
                "bmc_market_rows": len(records),
                "by_market": by_market,
            },
            "count": len(records),
            "records": sorted(records, key=lambda r: (r["market"], r["business_name"].casefold(), r.get("address") or "")),
        }
        artifact_path.write_text(json.dumps(payload, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
        summary[dataset_key] = payload["source_stats"] | {"artifact": str(artifact_path)}
        total += len(records)

    if total < 20:
        raise RuntimeError(f"Combined CMS enrollment clinic export unexpectedly small: {total}")

    print(json.dumps({"combined_bmc_market_rows": total, "datasets": summary}, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
