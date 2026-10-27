#!/usr/bin/env python3
"""
Export additional official NCES education facilities for BMC markets:
- Private School Locations - Current (PSS)
- Postsecondary School Locations - Current (IPEDS)
- School District Office Locations - Current (CCD)

Each ArcGIS FeatureServer is filtered to STATE='AZ' before market filtering.
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

USER_AGENT = "Mozilla/5.0 (compatible; BMC-Service-Network-Assistant-Research/1.0; +https://bmcservicenetwork.com/)"

SOURCES = {
    "private_schools": {
        "layer": "https://services1.arcgis.com/Ua5sjt3LWTPigjyD/arcgis/rest/services/Private_School_Locations_Current/FeatureServer/0",
        "source_page": "https://catalog.data.gov/dataset/private-school-locations-current",
        "id_field": "PPIN",
        "category_label": "Private Schools",
        "minimum_bmc": 50,
    },
    "postsecondary": {
        "layer": "https://services1.arcgis.com/Ua5sjt3LWTPigjyD/arcgis/rest/services/Postsecondary_School_Locations_Current/FeatureServer/0",
        "source_page": "https://catalog.data.gov/dataset/postsecondary-school-locations-current",
        "id_field": "UNITID",
        "category_label": "Postsecondary & Vocational Education",
        "minimum_bmc": 30,
    },
    "district_offices": {
        "layer": "https://services1.arcgis.com/Ua5sjt3LWTPigjyD/ArcGIS/rest/services/School_District_Office_Locations_Current/FeatureServer/0",
        "source_page": "https://catalog.data.gov/dataset/school-district-office-locations-current",
        "id_field": "LEAID",
        "category_label": "School District Offices",
        "minimum_bmc": 20,
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


def request_json(url, params=None, attempts=5):
    last = None
    for attempt in range(attempts):
        try:
            encoded = urllib.parse.urlencode(params or {}, doseq=True)
            target = url + (("?" + encoded) if encoded else "")
            req = urllib.request.Request(
                target,
                headers={"User-Agent": USER_AGENT, "Accept": "application/json,*/*"},
            )
            with urllib.request.urlopen(req, timeout=120) as response:
                payload = json.loads(response.read().decode("utf-8", "replace"))
            if isinstance(payload, dict) and payload.get("error"):
                raise RuntimeError(payload["error"])
            return payload
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


def export_source(source_key, spec, date):
    layer = spec["layer"]
    query = layer + "/query"
    meta = request_json(layer, {"f": "json"})
    available = {str(f.get("name") or "") for f in meta.get("fields") or []}
    required = {"NAME", "CITY", "STATE", "STREET", "ZIP", spec["id_field"]}
    missing = sorted(required - available)
    if missing:
        raise RuntimeError(f"{source_key} missing expected fields {missing}; available={sorted(available)}")

    where = "STATE='AZ'"
    count_payload = request_json(query, {"where": where, "returnCountOnly": "true", "f": "json"})
    az_count = int(count_payload.get("count") or 0)
    if az_count < spec["minimum_bmc"]:
        raise RuntimeError(f"{source_key} Arizona source count unexpectedly small: {az_count}")

    out_fields = [spec["id_field"], "NAME", "STREET", "CITY", "STATE", "ZIP"]
    if "SCHOOLYEAR" in available:
        out_fields.append("SCHOOLYEAR")
    if "NMCNTY" in available:
        out_fields.append("NMCNTY")

    page_size = min(int(meta.get("maxRecordCount") or 2000), 2000)
    offset = 0
    records = []
    while True:
        payload = request_json(query, {
            "where": where,
            "outFields": ",".join(out_fields),
            "returnGeometry": "false",
            "resultOffset": offset,
            "resultRecordCount": page_size,
            "orderByFields": spec["id_field"],
            "f": "json",
        })
        features = payload.get("features") or []
        if not features:
            break
        for feature in features:
            attrs = feature.get("attributes") or {}
            city = clean(attrs.get("CITY"))
            market = market_for_city(city)
            if not market:
                continue
            name = clean(attrs.get("NAME"))
            identity_id = clean(attrs.get(spec["id_field"]))
            if not name or not identity_id:
                continue
            street = clean(attrs.get("STREET"))
            zipcode = clean(attrs.get("ZIP"))
            schoolyear = clean(attrs.get("SCHOOLYEAR"))
            county = clean(attrs.get("NMCNTY"))
            note = [
                f"National Center for Education Statistics {spec['category_label']} government record",
                f"{spec['id_field']} {identity_id}",
            ]
            if schoolyear:
                note.append(f"school year {schoolyear}")
            if county:
                note.append(county)
            if street:
                note.append(f"address: {street}, {city}, AZ {zipcode}".strip())

            records.append({
                "side": "buyer",
                "market": market,
                "category_key": "schools_education",
                "category_label": spec["category_label"],
                "business_name": name,
                "url": spec["source_page"],
                "domain": "catalog.data.gov",
                "phone": None,
                "email": None,
                "official": False,
                "official_registry": True,
                "verified_date": date,
                "address": street or None,
                "zip": zipcode or None,
                "nces_source": source_key,
                "nces_identifier": identity_id,
                "school_year": schoolyear or None,
                "county": county or None,
                "source_service": layer,
                "note": " | ".join(note),
            })
        offset += len(features)
        if len(features) < page_size:
            break
        if offset > az_count + page_size:
            raise RuntimeError(f"{source_key} pagination exceeded expected Arizona count")

    seen = set()
    deduped = []
    for record in sorted(records, key=lambda r: (r["market"], r["business_name"].casefold(), r["nces_identifier"])):
        identity = (record["market"], record["nces_identifier"])
        if identity in seen:
            continue
        seen.add(identity)
        deduped.append(record)

    if len(deduped) < spec["minimum_bmc"]:
        raise RuntimeError(
            f"{source_key} BMC-market export unexpectedly small: {len(deduped)} "
            f"(minimum {spec['minimum_bmc']}, Arizona source {az_count})"
        )

    return az_count, deduped


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--date", required=True)
    parser.add_argument("--output-dir", type=Path, required=True)
    args = parser.parse_args()
    args.output_dir.mkdir(parents=True, exist_ok=True)

    summary = {}
    total = 0
    for source_key, spec in SOURCES.items():
        az_count, records = export_source(source_key, spec, args.date)
        by_market = dict(sorted(Counter(r["market"] for r in records).items()))
        out = args.output_dir / f"assistant-research-bootstrap-{args.date}-nces-{source_key.replace('_','-')}-25.json"
        payload = {
            "generated_at": args.date + "T23:59:00Z",
            "purpose": f"Assistant-led BMC-market education-facility census from official NCES {spec['category_label']} location data.",
            "safety": "Inventory seed only. Does not promote buyers/vendors and does not stage or send outreach.",
            "source": spec["source_page"],
            "source_service": spec["layer"],
            "source_stats": {
                "arizona_source_rows": az_count,
                "bmc_market_records": len(records),
                "by_market": by_market,
            },
            "count": len(records),
            "records": records,
        }
        out.write_text(json.dumps(payload, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
        summary[source_key] = payload["source_stats"] | {"artifact": str(out)}
        total += len(records)

    if total < 150:
        raise RuntimeError(f"Combined NCES institutional export unexpectedly small: {total}")
    print(json.dumps({"combined_bmc_market_rows": total, "sources": summary}, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
