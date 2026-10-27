#!/usr/bin/env python3
"""Export City of Phoenix liquor-license locations as official buyer census evidence."""
from __future__ import annotations

import argparse
from collections import Counter
from datetime import datetime, timezone
import json
from pathlib import Path
import urllib.parse
import urllib.request

LAYER = "https://maps.phoenix.gov/pub/rest/services/Public/RCAMap/MapServer/1"
QUERY = LAYER + "/query"
UA = "BMC-Service-Network-Assistant-Research/1.0 (+https://bmcservicenetwork.com)"

SERIES = {
    1: ("warehouses_industrial", "beverage producers industrial"),
    3: ("restaurants", "microbreweries restaurants hospitality"),
    4: ("warehouses_industrial", "beverage wholesalers industrial"),
    5: ("public_facilities", "government public facilities"),
    8: ("general_business", "licensed conveyance businesses"),
    11: ("hotels_motels", "hotels motels lodging"),
    12: ("restaurants", "restaurants bars food service"),
    14: ("entertainment_venues", "clubs entertainment venues"),
}


def req(url, params):
    data = urllib.parse.urlencode(params).encode()
    request = urllib.request.Request(
        url,
        data=data,
        headers={"User-Agent": UA, "Accept": "application/json", "Content-Type": "application/x-www-form-urlencoded"},
    )
    with urllib.request.urlopen(request, timeout=90) as response:
        payload = json.loads(response.read().decode("utf-8", "replace"))
    if payload.get("error"):
        raise RuntimeError(payload["error"])
    return payload


def clean(v):
    return " ".join(str(v or "").split()).strip()


def record_url(oid):
    return QUERY + "?" + urllib.parse.urlencode({
        "objectIds": str(oid), "outFields": "*", "returnGeometry": "false", "f": "pjson"
    })


def address(a):
    pieces = [
        clean(a.get("ADDR_STREET_NBR")),
        clean(a.get("ADDR_PREDIR_CODE")),
        clean(a.get("ADDR_STREET_NAME")),
        clean(a.get("ADDR_STREET_TYPE")),
        clean(a.get("ADDR_POSTDIR_CODE")),
    ]
    street = " ".join(x for x in pieces if x)
    unit = clean(a.get("ADDR_UNIT_NBR"))
    if unit:
        street += " Unit " + unit
    zipcode = clean(a.get("ADDR_ZIPCODE_NBR"))
    return (street + (f", Phoenix, AZ {zipcode}" if zipcode else ", Phoenix, AZ")).strip(", ")


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--date", required=True)
    parser.add_argument("--output-dir", type=Path, required=True)
    args = parser.parse_args()

    count_payload = req(QUERY, {
        "where": "1=1", "returnCountOnly": "true", "f": "json"
    })
    source_count = int(count_payload.get("count") or 0)
    if source_count < 500:
        raise RuntimeError(f"Phoenix liquor-license layer unexpectedly small: {source_count} rows")

    features = []
    offset = 0
    page_size = 1000
    while offset < source_count:
        payload = req(QUERY, {
            "where": "1=1",
            "outFields": "*",
            "returnGeometry": "false",
            "resultOffset": str(offset),
            "resultRecordCount": str(page_size),
            "f": "json",
        })
        page = payload.get("features") or []
        if not page:
            break
        features.extend(page)
        offset += len(page)
        if len(page) < page_size:
            break
    if len(features) != source_count:
        raise RuntimeError(
            f"Phoenix liquor pagination completeness failure: source count {source_count}, downloaded {len(features)}"
        )

    records = []
    for feature in features:
        a = feature.get("attributes") or {}
        name = clean(a.get("BUSINESS_NAME"))
        oid = a.get("ESRI_OID")
        if not name or oid is None:
            continue
        try:
            series = int(a.get("SERIES")) if a.get("SERIES") is not None else None
        except Exception:
            series = None
        category_key, category_label = SERIES.get(series, ("general_business", "general commercial businesses"))
        addr = address(a)
        state_license = clean(a.get("STATE_LICENSE"))
        aka = clean(a.get("AKA"))
        status = clean(a.get("BLRM_STATUS"))
        file_date = a.get("FILE_DATE")
        note = ["City of Phoenix liquor-license location record"]
        if series is not None:
            note.append(f"license series {series}")
        if state_license:
            note.append(f"state license {state_license}")
        if aka:
            note.append(f"AKA {aka}")
        if status:
            note.append(f"BLRM status {status}")
        if addr:
            note.append(f"service address: {addr}")
        if file_date:
            try:
                dt = datetime.fromtimestamp(float(file_date)/1000, tz=timezone.utc).date().isoformat()
                note.append(f"file date {dt}")
            except Exception:
                pass
        records.append({
            "side": "buyer",
            "market": "Phoenix",
            "category_key": category_key,
            "category_label": category_label,
            "business_name": name,
            "url": record_url(oid),
            "domain": "maps.phoenix.gov",
            "phone": None,
            "email": None,
            "official": True,
            "verified_date": args.date,
            "address": addr or None,
            "state_liquor_license": state_license or None,
            "license_series": series,
            "aka": aka or None,
            "source_object_id": oid,
            "note": " | ".join(note),
        })

    if len(records) < 500:
        raise RuntimeError(f"Phoenix liquor export unexpectedly small after parsing: {len(records)}")
    records.sort(key=lambda r: (r["category_key"], r["business_name"].casefold(), str(r["source_object_id"])))

    args.output_dir.mkdir(parents=True, exist_ok=True)
    out = args.output_dir / f"assistant-research-bootstrap-{args.date}-phoenix-liquor-locations-10.json"
    payload = {
        "generated_at": args.date + "T23:59:00Z",
        "purpose": "Assistant-led Phoenix buyer census from City of Phoenix official liquor-license location records.",
        "safety": "Inventory seed only. Does not promote buyers/vendors and does not stage or send outreach.",
        "source": LAYER,
        "source_stats": {
            "source_count": source_count,
            "downloaded_features": len(features),
            "included_records": len(records),
            "by_category": dict(sorted(Counter(r["category_key"] for r in records).items())),
            "by_series": dict(sorted(Counter(str(r.get("license_series")) for r in records).items())),
        },
        "count": len(records),
        "records": records,
    }
    out.write_text(json.dumps(payload, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    print(json.dumps(payload["source_stats"], indent=2, sort_keys=True))
    print(out)


if __name__ == "__main__":
    main()
