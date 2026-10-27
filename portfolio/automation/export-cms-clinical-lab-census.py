#!/usr/bin/env python3
"""
Export official CMS clinical laboratory facilities for BMC markets.

Source: Provider of Services File - Clinical Laboratories (CMS Data).
The exporter resolves the current version from data.cms.gov/data.json and applies
STATE_CD=AZ at the CMS API before paging results. Only configured BMC markets are
written. Inventory-only assistant census generator; no outreach is staged/sent.
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
TITLE_MATCH = "clinical laboratories"
FALLBACK_CURRENT_UUID = "899fd424-a4aa-400f-85ce-5a7e98334b03"
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


def fetch_json(url, params=None, attempts=5):
    last = None
    for attempt in range(attempts):
        try:
            encoded = urllib.parse.urlencode(params or {}, doseq=True)
            target = url + (("?" + encoded) if encoded else "")
            req = urllib.request.Request(
                target,
                headers={"User-Agent": USER_AGENT, "Accept": "application/json,*/*", "Cache-Control": "no-cache"},
            )
            with urllib.request.urlopen(req, timeout=120) as response:
                return json.loads(response.read().decode("utf-8", "replace"))
        except Exception as exc:
            last = exc
            if attempt + 1 < attempts:
                time.sleep(2.0 * (attempt + 1))
    raise last


def catalog_entries(catalog):
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


def resolve_latest(catalog):
    candidates = []
    for row in catalog_entries(catalog):
        title = clean(row.get("title"))
        if TITLE_MATCH in title.lower():
            candidates.append(row)

    def sort_key(row):
        title = clean(row.get("title"))
        suffix = title.rsplit(" : ", 1)[-1] if " : " in title else ""
        return (clean(row.get("modified")), suffix, title)

    for row in sorted(candidates, key=sort_key, reverse=True):
        last = row.get("last")
        if isinstance(last, dict):
            uuid = extract_uuid(last.get("@id") or last.get("identifier"))
            if uuid:
                return uuid, row
        elif last:
            uuid = extract_uuid(last)
            if uuid:
                return uuid, row
        uuid = extract_uuid(row.get("@id") or row.get("identifier"))
        if uuid:
            return uuid, row

    # Guarded fallback: CMS's current API documentation identifies this exact
    # Q1 2026 dataset-version UUID. The source-data sanity checks below still
    # have to pass before an artifact can be written.
    return FALLBACK_CURRENT_UUID, {
        "title": "Provider of Services File - Clinical Laboratories",
        "modified": "2026-04-15",
        "resolver": "documented_current_uuid_fallback",
    }


def market_for_city(city):
    c = clean(city).casefold()
    for market, aliases in MARKETS.items():
        if c in aliases:
            return market
    return None


def field(row, *aliases):
    by_norm = {norm(k): v for k, v in row.items()}
    for alias in aliases:
        value = by_norm.get(norm(alias))
        if value not in (None, ""):
            return clean(value)
    return ""


def fetch_arizona_rows(uuid):
    rows = []
    offset = 0
    size = 5000
    while True:
        batch = fetch_json(
            f"{API_BASE}/{uuid}/data",
            {
                "filter[STATE_CD]": "AZ",
                "size": size,
                "offset": offset,
                "sort": "PRVDR_NUM",
            },
        )
        if isinstance(batch, dict):
            batch = batch.get("data") or batch.get("results") or batch.get("records")
        if not isinstance(batch, list):
            raise RuntimeError(f"Unexpected CMS clinical-lab response type for {uuid}")
        rows.extend(batch)
        if len(batch) < size:
            break
        offset += len(batch)
        if offset > 100_000:
            raise RuntimeError("CMS Arizona clinical-lab pagination safety limit reached")
    return rows


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--date", required=True)
    parser.add_argument("--output-dir", type=Path, required=True)
    args = parser.parse_args()
    args.output_dir.mkdir(parents=True, exist_ok=True)

    catalog = fetch_json(CATALOG_URL)
    uuid, meta = resolve_latest(catalog)
    az_rows = fetch_arizona_rows(uuid)

    if not (500 <= len(az_rows) <= 50_000):
        raise RuntimeError(f"CMS Arizona clinical-lab row count outside sanity bounds: {len(az_rows)}")

    records = []
    excluded_terminated = 0
    excluded_other_market = 0
    for row in az_rows:
        city = field(row, "CITY_NAME")
        market = market_for_city(city)
        if not market:
            excluded_other_market += 1
            continue

        # POS carries termination fields. Exclude explicitly terminated providers
        # while retaining records where termination is blank/zero/not applicable.
        term_code = field(row, "PGM_TRMNTN_CD", "CLIA_TRMNTN_CD")
        term_date = field(row, "TRMNTN_EXPRTN_DT")
        if term_code and term_code not in ("0", "00", "N", "NO"):
            excluded_terminated += 1
            continue

        name = field(row, "FAC_NAME", "ADDTNL_FAC_NAME")
        if not name:
            continue
        provider_number = field(row, "PRVDR_NUM")
        clia_number = field(row, "CLIA_MDCR_NUM")
        address = field(row, "ST_ADR")
        address2 = field(row, "ADDTNL_ST_ADR")
        zipcode = field(row, "ZIP_CD")
        phone = field(row, "PHNE_NUM")
        certification_date = field(row, "CRTFCTN_DT", "CRTFCT_EFCTV_DT")
        classification = field(row, "CURRENT_CLIA_LAB_CLSFCTN_CD")
        test_volume = field(row, "FORM_116_TEST_VOL_CNT")

        full_address = " ".join(x for x in (address, address2) if x)
        note = ["Centers for Medicare & Medicaid Services Provider of Services clinical-laboratory government record"]
        if provider_number:
            note.append(f"provider number {provider_number}")
        if clia_number:
            note.append(f"CLIA/Medicare number {clia_number}")
        if classification:
            note.append(f"CLIA classification {classification}")
        if certification_date:
            note.append(f"certification date {certification_date}")
        if test_volume:
            note.append(f"reported test volume {test_volume}")
        if full_address:
            note.append(f"address: {full_address}, {city}, AZ {zipcode}".strip())

        records.append({
            "side": "buyer",
            "market": market,
            "category_key": "medical_centers",
            "category_label": "Clinical Laboratories",
            "business_name": name,
            "url": f"https://data.cms.gov/data-api/v1/dataset/{uuid}/data-viewer",
            "domain": "data.cms.gov",
            "phone": phone or None,
            "email": None,
            "official": False,
            "official_registry": True,
            "verified_date": args.date,
            "address": full_address or None,
            "zip": zipcode or None,
            "cms_dataset": "clinical_laboratories",
            "cms_dataset_version_id": uuid,
            "cms_provider_number": provider_number or None,
            "clia_medicare_number": clia_number or None,
            "clia_classification": classification or None,
            "certification_date": certification_date or None,
            "note": " | ".join(note),
        })

    # Provider number/CLIA/address/name may expose multiple source rows for one lab;
    # retain distinct official facility identities but collapse exact repeated rows.
    seen = set()
    deduped = []
    for record in sorted(records, key=lambda r: (r["market"], r["business_name"].casefold(), r.get("cms_provider_number") or "", r.get("address") or "")):
        identity = (
            record["market"],
            record["business_name"].casefold(),
            record.get("cms_provider_number") or "",
            record.get("clia_medicare_number") or "",
            record.get("address") or "",
        )
        if identity in seen:
            continue
        seen.add(identity)
        deduped.append(record)

    if len(deduped) < 100:
        raise RuntimeError(
            f"CMS clinical-lab BMC-market export unexpectedly small: {len(deduped)} "
            f"from {len(az_rows)} Arizona source rows"
        )

    by_market = dict(sorted(Counter(r["market"] for r in deduped).items()))
    out = args.output_dir / f"assistant-research-bootstrap-{args.date}-cms-clinical-labs-24.json"
    payload = {
        "generated_at": args.date + "T23:59:00Z",
        "purpose": "Assistant-led BMC-market clinical-laboratory buyer census from the official CMS Provider of Services file.",
        "safety": "Inventory seed only. Does not promote buyers/vendors and does not stage or send outreach.",
        "source": f"https://data.cms.gov/data-api/v1/dataset/{uuid}/data-viewer",
        "source_catalog": CATALOG_URL,
        "source_stats": {
            "catalog_title": meta.get("title"),
            "latest_version_uuid": uuid,
            "catalog_modified": meta.get("modified"),
            "arizona_source_rows": len(az_rows),
            "bmc_market_records": len(deduped),
            "excluded_other_market": excluded_other_market,
            "excluded_explicitly_terminated": excluded_terminated,
            "by_market": by_market,
        },
        "count": len(deduped),
        "records": deduped,
    }
    out.write_text(json.dumps(payload, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    print(json.dumps({"artifact": str(out), "count": len(deduped), "arizona_source_rows": len(az_rows), "by_market": by_market}, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
