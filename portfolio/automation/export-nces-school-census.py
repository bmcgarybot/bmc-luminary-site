#!/usr/bin/env python3
"""
Export NCES Common Core of Data public-school facilities for BMC markets.

Source: NCES EDGE / CCD public school point layer, 2024-25 final school universe.
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

LAYER = "https://nces.ed.gov/arcgis/rest/services/CCD/CCD_Data/MapServer/0"
QUERY = LAYER + "/query"
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


def request_json(url, params=None, *, post=False, attempts=5):
    last = None
    for attempt in range(attempts):
        try:
            encoded = urllib.parse.urlencode(params or {}, doseq=True)
            if post:
                req = urllib.request.Request(
                    url,
                    data=encoded.encode("utf-8"),
                    headers={
                        "User-Agent": USER_AGENT,
                        "Accept": "application/json",
                        "Content-Type": "application/x-www-form-urlencoded",
                    },
                )
            else:
                target = url + (("?" + encoded) if encoded else "")
                req = urllib.request.Request(
                    target,
                    headers={"User-Agent": USER_AGENT, "Accept": "application/json"},
                )
            with urllib.request.urlopen(req, timeout=120) as response:
                payload = json.loads(response.read().decode("utf-8", "replace"))
            if isinstance(payload, dict) and payload.get("error"):
                raise RuntimeError(payload["error"])
            return payload
        except Exception as exc:
            last = exc
            if attempt + 1 < attempts:
                time.sleep(2 * (attempt + 1))
    raise last


def find_field(meta, exact_names=(), alias_terms=(), required=True):
    fields = meta.get("fields") or []
    by_norm = {}
    for field in fields:
        for candidate in (field.get("name"), field.get("alias")):
            if candidate:
                by_norm.setdefault(norm(candidate), field.get("name"))
    for candidate in exact_names:
        if norm(candidate) in by_norm:
            return by_norm[norm(candidate)]
    for field in fields:
        hay = " ".join([str(field.get("name") or ""), str(field.get("alias") or "")]).lower()
        if all(term.lower() in hay for term in alias_terms):
            return field.get("name")
    if required:
        raise RuntimeError(
            f"Could not identify field exact={exact_names} alias_terms={alias_terms}; "
            f"available={[f.get('name') for f in fields]}"
        )
    return None


def object_id_field(meta):
    field = meta.get("objectIdField") or meta.get("objectIdFieldName")
    if field:
        return field
    for item in meta.get("fields") or []:
        if str(item.get("type") or "").lower().endswith("oid"):
            return item.get("name")
    raise RuntimeError("No ObjectID field found")


def all_features(chunk_size=500):
    meta = request_json(LAYER, {"f": "json"})
    oid_field = object_id_field(meta)
    ids = request_json(
        QUERY,
        {"where": "1=1", "returnIdsOnly": "true", "f": "json"},
        post=True,
    ).get("objectIds") or []
    ids = sorted(ids)
    features = []
    for start in range(0, len(ids), chunk_size):
        chunk = ids[start:start + chunk_size]
        payload = request_json(
            QUERY,
            {
                "objectIds": ",".join(str(x) for x in chunk),
                "outFields": "*",
                "returnGeometry": "false",
                "f": "json",
            },
            post=True,
        )
        features.extend(payload.get("features") or [])
    return meta, oid_field, ids, features


def market_for_city(city):
    c = clean(city).casefold()
    for market, aliases in MARKETS.items():
        if c in aliases:
            return market
    return None


def source_url(oid):
    return QUERY + "?" + urllib.parse.urlencode(
        {
            "objectIds": str(oid),
            "outFields": "*",
            "returnGeometry": "false",
            "f": "pjson",
        }
    )


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--date", required=True)
    parser.add_argument("--output-dir", type=Path, required=True)
    args = parser.parse_args()
    args.output_dir.mkdir(parents=True, exist_ok=True)

    meta, oid_field, source_ids, features = all_features()

    name_field = find_field(meta, ("NAME", "SCH_NAME", "SCHOOL_NAME"), ("school", "name"))
    city_field = find_field(meta, ("LCITY", "CITY", "LOCATION_CITY"), ("city",))
    state_field = find_field(meta, ("LSTATE", "STATE", "LOCATION_STATE"), ("state",))
    street_field = find_field(meta, ("LSTREET", "STREET", "LOCATION_STREET"), ("street",), required=False)
    zip_field = find_field(meta, ("LZIP", "ZIP", "ZIP_CODE"), ("zip",), required=False)
    phone_field = find_field(meta, ("PHONE",), ("phone",), required=False)
    nces_field = find_field(meta, ("NCESSCH", "NCES_SCHOOL_ID"), ("nces",), required=False)
    status_field = find_field(meta, ("SY_STATUS_TEXT", "STATUS_TEXT"), ("status", "description"), required=False)
    school_type_field = find_field(meta, ("SCHOOL_TYPE_TEXT",), ("school", "type"), required=False)
    lea_field = find_field(meta, ("LEA_NAME", "LEANM"), ("lea", "name"), required=False)

    records = []
    skipped_non_az = 0
    skipped_other_market = 0
    skipped_closed = 0

    for feature in features:
        a = feature.get("attributes") or {}
        state = clean(a.get(state_field))
        if state.upper() != "AZ":
            skipped_non_az += 1
            continue
        city = clean(a.get(city_field))
        market = market_for_city(city)
        if not market:
            skipped_other_market += 1
            continue
        status = clean(a.get(status_field)) if status_field else ""
        if any(term in status.lower() for term in ("closed", "inactive")):
            skipped_closed += 1
            continue
        name = clean(a.get(name_field))
        if not name:
            continue
        oid = a.get(oid_field)
        street = clean(a.get(street_field)) if street_field else ""
        zipcode = clean(a.get(zip_field)) if zip_field else ""
        phone = clean(a.get(phone_field)) if phone_field else ""
        nces_id = clean(a.get(nces_field)) if nces_field else ""
        school_type = clean(a.get(school_type_field)) if school_type_field else ""
        lea = clean(a.get(lea_field)) if lea_field else ""

        note = ["National Center for Education Statistics Common Core of Data public-school record"]
        if nces_id:
            note.append(f"NCES school ID {nces_id}")
        if school_type:
            note.append(school_type)
        if status:
            note.append(f"status: {status}")
        if lea:
            note.append(f"LEA: {lea}")
        if street:
            note.append(f"address: {street}, {city}, AZ {zipcode}".strip())

        records.append({
            "side": "buyer",
            "market": market,
            "category_key": "schools_education",
            "category_label": "Schools & Education",
            "business_name": name,
            "url": source_url(oid),
            "domain": "nces.ed.gov",
            "phone": phone or None,
            "email": None,
            "official": False,
            "official_registry": True,
            "verified_date": args.date,
            "address": street or None,
            "zip": zipcode or None,
            "nces_school_id": nces_id or None,
            "school_type": school_type or None,
            "operational_status": status or None,
            "lea_name": lea or None,
            "source_object_id": oid,
            "note": " | ".join(note),
        })

    if len(records) < 300:
        raise RuntimeError(f"NCES BMC-market school export unexpectedly small: {len(records)}")

    records.sort(key=lambda r: (r["market"], r["business_name"].casefold(), r.get("nces_school_id") or ""))
    by_market = dict(sorted(Counter(r["market"] for r in records).items()))

    path = args.output_dir / f"assistant-research-bootstrap-{args.date}-nces-public-schools-21.json"
    payload = {
        "generated_at": args.date + "T23:59:00Z",
        "purpose": "Assistant-led BMC-market public-school buyer census from the official NCES Common Core of Data school point layer.",
        "safety": "Inventory seed only. Does not promote buyers/vendors and does not stage or send outreach.",
        "source": LAYER,
        "source_stats": {
            "statewide_national_source_object_ids": len(source_ids),
            "downloaded_features": len(features),
            "bmc_market_records": len(records),
            "by_market": by_market,
            "skipped_non_arizona": skipped_non_az,
            "skipped_arizona_other_market": skipped_other_market,
            "skipped_closed_or_inactive": skipped_closed,
        },
        "count": len(records),
        "records": records,
    }
    path.write_text(json.dumps(payload, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    print(json.dumps({"artifact": str(path), "count": len(records), "by_market": by_market}, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
