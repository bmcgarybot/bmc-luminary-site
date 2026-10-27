#!/usr/bin/env python3
"""
Export Arizona Department of Health Services licensed facilities for BMC markets.

Assistant-built census artifact generator only. No outreach is staged or sent.
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

LAYER = "https://services1.arcgis.com/mpVYz37anSdrK4d8/ArcGIS/rest/services/All_State_Licensed_Facilities_in_Arizona/FeatureServer/18"
QUERY = LAYER + "/query"
USER_AGENT = "BMC-Service-Network-Assistant-Research/1.0 (+https://bmcservicenetwork.com)"

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
    "Williamson Valley": {"williamson valley"},
    "Winslow": {"winslow"},
}


def clean(v):
    return " ".join(str(v or "").split()).strip()


def norm(v):
    return re.sub(r"[^a-z0-9]+", "", clean(v).lower())


def slug(v):
    return re.sub(r"[^a-z0-9]+", "-", v.lower()).strip("-")


def request_json(url, params=None, post=False, attempts=4):
    last = None
    for attempt in range(attempts):
        try:
            encoded = urllib.parse.urlencode(params or {}, doseq=True)
            if post:
                req = urllib.request.Request(
                    url,
                    data=encoded.encode(),
                    headers={
                        "User-Agent": USER_AGENT,
                        "Accept": "application/json",
                        "Content-Type": "application/x-www-form-urlencoded",
                    },
                )
            else:
                req = urllib.request.Request(
                    url + (("?" + encoded) if encoded else ""),
                    headers={"User-Agent": USER_AGENT, "Accept": "application/json"},
                )
            with urllib.request.urlopen(req, timeout=90) as response:
                payload = json.loads(response.read().decode("utf-8", "replace"))
            if isinstance(payload, dict) and payload.get("error"):
                raise RuntimeError(payload["error"])
            return payload
        except Exception as exc:
            last = exc
            if attempt + 1 < attempts:
                time.sleep(1.5 * (attempt + 1))
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


def all_features(chunk_size=400):
    meta = request_json(LAYER, {"f": "json"})
    oid_field = object_id_field(meta)
    ids = request_json(QUERY, {"where": "1=1", "returnIdsOnly": "true", "f": "json"}, post=True).get("objectIds") or []
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


def source_url(oid):
    return QUERY + "?" + urllib.parse.urlencode(
        {
            "objectIds": str(oid),
            "outFields": "*",
            "returnGeometry": "false",
            "f": "pjson",
        }
    )


def category(facility_type, name):
    corpus = (facility_type + " " + name).lower()
    if any(k in corpus for k in ("behavioral", "counsel", "outpatient treatment", "mental health", "substance", "psychiatr")):
        return "therapy_behavioral", "therapy behavioral health"
    if any(k in corpus for k in ("child care", "childcare", "preschool", "school", "developmental preschool")):
        return "schools_education", "schools education childcare"
    if any(k in corpus for k in (
        "hospital", "clinic", "medical", "health", "hospice", "nursing", "assisted living",
        "home health", "dialysis", "pain management", "birthing", "ambulatory", "adult day",
        "group home", "residential facility",
    )):
        return "medical_centers", "medical care facilities"
    if "marijuana" in corpus:
        return "retail", "retail stores"
    return "general_business", "general commercial businesses"


def market_for_city(city):
    key = clean(city).casefold()
    for market, aliases in MARKETS.items():
        if key in aliases:
            return market
    return None


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--date", required=True)
    parser.add_argument("--output-dir", type=Path, required=True)
    args = parser.parse_args()

    meta, oid_field, source_ids, features = all_features()
    name_field = find_field(meta, ("FacilityName", "FACILITY_NAME", "ProviderName", "PROVIDER_NAME", "Name"), ("name",))
    city_field = find_field(meta, ("City", "CITY"), ("city",))
    address_field = find_field(meta, ("Address", "ADDRESS", "StreetAddress"), ("address",), required=False)
    zip_field = find_field(meta, ("Zip", "ZIP", "ZipCode", "ZIP_CODE"), ("zip",), required=False)
    type_field = find_field(meta, ("FacilityType", "FACILITY_TYPE", "ProviderType", "PROVIDER_TYPE", "Type"), ("type",), required=False)
    phone_field = find_field(meta, ("Phone", "PHONE", "PhoneNumber"), ("phone",), required=False)

    by_market = {market: [] for market in MARKETS}
    skipped_other_city = 0

    for feature in features:
        a = feature.get("attributes") or {}
        city = clean(a.get(city_field))
        market = market_for_city(city)
        if not market:
            skipped_other_city += 1
            continue
        name = clean(a.get(name_field))
        if not name:
            continue
        facility_type = clean(a.get(type_field)) if type_field else ""
        address = clean(a.get(address_field)) if address_field else ""
        zipcode = clean(a.get(zip_field)) if zip_field else ""
        phone = clean(a.get(phone_field)) if phone_field else ""
        oid = a.get(oid_field)
        category_key, category_label = category(facility_type, name)
        note = ["Arizona Department of Health Services licensed-facility record"]
        if facility_type:
            note.append(facility_type)
        if address:
            note.append(f"address: {address}, {city}, AZ {zipcode}".strip())
        by_market[market].append(
            {
                "side": "buyer",
                "market": market,
                "category_key": category_key,
                "category_label": category_label,
                "business_name": name,
                "url": source_url(oid),
                "domain": "services1.arcgis.com",
                "phone": phone or None,
                "email": None,
                "official": True,
                "verified_date": args.date,
                "address": address or None,
                "zip": zipcode or None,
                "facility_type": facility_type or None,
                "source_object_id": oid,
                "note": " | ".join(note),
            }
        )

    args.output_dir.mkdir(parents=True, exist_ok=True)
    summary = {}
    total = 0
    for market, records in by_market.items():
        if market == "Tucson":
            continue
        if not records:
            continue
        records.sort(key=lambda r: (r["category_key"], r["business_name"].casefold(), str(r["source_object_id"])))
        path = args.output_dir / f"assistant-research-bootstrap-{args.date}-adhs-{slug(market)}-09.json"
        payload = {
            "generated_at": args.date + "T23:59:00Z",
            "purpose": f"Assistant-led {market} buyer census from Arizona Department of Health Services licensed-facility records.",
            "safety": "Inventory seed only. Does not promote buyers/vendors and does not stage or send outreach.",
            "source": LAYER,
            "source_stats": {
                "statewide_source_object_ids": len(source_ids),
                "statewide_downloaded_features": len(features),
                "market_records": len(records),
                "by_category": dict(sorted(Counter(r["category_key"] for r in records).items())),
                "by_facility_type": dict(sorted(Counter(r.get("facility_type") or "Unknown" for r in records).items())),
            },
            "count": len(records),
            "records": records,
        }
        path.write_text(json.dumps(payload, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
        summary[market] = len(records)
        total += len(records)

    if total < 1000:
        raise RuntimeError(f"ADHS BMC-market export unexpectedly small: {total}")

    print(json.dumps({
        "statewide_source_object_ids": len(source_ids),
        "statewide_downloaded_features": len(features),
        "skipped_other_city": skipped_other_city,
        "market_records_excluding_tucson": total,
        "by_market": summary,
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
