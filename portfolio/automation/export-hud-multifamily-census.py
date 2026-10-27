#!/usr/bin/env python3
"""
Export current HUD insured multifamily properties for BMC markets.

Source: HUD Insured Multifamily Properties FeatureServer, official HUD open data.
The source is filtered to STD_ST='AZ' at the ArcGIS service before BMC market filtering.
Inventory-only government-registry census; no outreach is staged or sent.
"""
from __future__ import annotations

import argparse
from collections import Counter
import json
from pathlib import Path
import time
import urllib.parse
import urllib.request

LAYER = "https://services.arcgis.com/VTyQ9soqVukalItT/arcgis/rest/services/HUD_Insured_Multifamily_Properties/FeatureServer/0"
QUERY = LAYER + "/query"
SOURCE_PAGE = "https://catalog.data.gov/dataset/hud-insured-multifamily-properties"
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


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--date", required=True)
    parser.add_argument("--output-dir", type=Path, required=True)
    args = parser.parse_args()
    args.output_dir.mkdir(parents=True, exist_ok=True)

    meta = request_json(LAYER, {"f": "json"})
    available = {str(f.get("name") or "") for f in meta.get("fields") or []}
    required = {
        "PROPERTY_ID", "PROPERTY_NAME_TEXT", "STD_ADDR", "STD_CITY", "STD_ST",
        "STD_ZIP5", "TOTAL_UNIT_COUNT", "PROPERTY_CATEGORY_NAME",
    }
    missing = sorted(required - available)
    if missing:
        raise RuntimeError(f"HUD multifamily source missing expected fields: {missing}")

    where = "STD_ST='AZ'"
    count = int(request_json(QUERY, {"where": where, "returnCountOnly": "true", "f": "json"}).get("count") or 0)
    if count < 100:
        raise RuntimeError(f"HUD Arizona insured multifamily source unexpectedly small: {count}")

    optional = [
        "PROPERTY_ON_SITE_PHONE_NUMBER", "MGMT_AGENT_ORG_NAME", "MGMT_CONTACT_FULL_NAME",
        "MGMT_CONTACT_MAIN_PHN_NBR", "MGMT_CONTACT_EMAIL_TEXT", "TOTAL_ASSISTED_UNIT_COUNT",
        "IS_ASSISTED_LIVING_IND", "IS_NURSING_HOME_IND", "IS_HOSPITAL_IND",
        "PRIMARY_FHA_NUMBER", "PRIMARY_FINANCING_TYPE", "LVL2KX",
    ]
    out_fields = list(required) + [f for f in optional if f in available]

    page_size = min(int(meta.get("maxRecordCount") or 2000), 2000)
    offset = 0
    records = []
    while True:
        payload = request_json(QUERY, {
            "where": where,
            "outFields": ",".join(out_fields),
            "returnGeometry": "false",
            "resultOffset": offset,
            "resultRecordCount": page_size,
            "orderByFields": "PROPERTY_ID",
            "f": "json",
        })
        features = payload.get("features") or []
        if not features:
            break
        for feature in features:
            a = feature.get("attributes") or {}
            city = clean(a.get("STD_CITY"))
            market = market_for_city(city)
            if not market:
                continue
            name = clean(a.get("PROPERTY_NAME_TEXT"))
            property_id = clean(a.get("PROPERTY_ID"))
            if not name or not property_id:
                continue

            address = clean(a.get("STD_ADDR"))
            zipcode = clean(a.get("STD_ZIP5"))
            phone = clean(a.get("PROPERTY_ON_SITE_PHONE_NUMBER"))
            units = a.get("TOTAL_UNIT_COUNT")
            assisted_units = a.get("TOTAL_ASSISTED_UNIT_COUNT")
            category = clean(a.get("PROPERTY_CATEGORY_NAME"))
            mgmt_agent = clean(a.get("MGMT_AGENT_ORG_NAME"))
            mgmt_name = clean(a.get("MGMT_CONTACT_FULL_NAME"))
            mgmt_phone = clean(a.get("MGMT_CONTACT_MAIN_PHN_NBR"))
            mgmt_email = clean(a.get("MGMT_CONTACT_EMAIL_TEXT"))
            fha = clean(a.get("PRIMARY_FHA_NUMBER"))
            financing = clean(a.get("PRIMARY_FINANCING_TYPE"))
            geocode_quality = clean(a.get("LVL2KX"))

            note = [
                "U.S. Department of Housing and Urban Development insured multifamily property government record",
                f"HUD property ID {property_id}",
            ]
            if category:
                note.append(category)
            if units not in (None, "", -4):
                note.append(f"total units {units}")
            if assisted_units not in (None, "", -4):
                note.append(f"assisted units {assisted_units}")
            if mgmt_agent:
                note.append(f"management agent: {mgmt_agent}")
            if fha:
                note.append(f"FHA {fha}")
            if financing:
                note.append(financing)
            if address:
                note.append(f"address: {address}, {city}, AZ {zipcode}".strip())
            if geocode_quality:
                note.append(f"HUD geocode quality {geocode_quality}")

            records.append({
                "side": "buyer",
                "market": market,
                "category_key": "property_management",
                "category_label": "Multifamily & Apartment Properties",
                "business_name": name,
                "url": SOURCE_PAGE,
                "domain": "catalog.data.gov",
                "phone": phone or mgmt_phone or None,
                "email": mgmt_email or None,
                "official": False,
                "official_registry": True,
                "verified_date": args.date,
                "address": address or None,
                "zip": zipcode or None,
                "hud_property_id": property_id,
                "hud_property_category": category or None,
                "total_units": units,
                "assisted_units": assisted_units,
                "management_agent": mgmt_agent or None,
                "management_contact_name": mgmt_name or None,
                "management_contact_phone": mgmt_phone or None,
                "management_contact_email": mgmt_email or None,
                "primary_fha_number": fha or None,
                "primary_financing_type": financing or None,
                "source_service": LAYER,
                "note": " | ".join(note),
            })
        offset += len(features)
        if len(features) < page_size:
            break
        if offset > count + page_size:
            raise RuntimeError("HUD multifamily pagination exceeded expected Arizona count")

    seen = set()
    deduped = []
    for record in sorted(records, key=lambda r: (r["market"], r["business_name"].casefold(), r["hud_property_id"])):
        identity = (record["market"], record["hud_property_id"])
        if identity in seen:
            continue
        seen.add(identity)
        deduped.append(record)

    if len(deduped) < 100:
        raise RuntimeError(
            f"HUD BMC-market multifamily export unexpectedly small: {len(deduped)} "
            f"from {count} Arizona properties"
        )

    by_market = dict(sorted(Counter(r["market"] for r in deduped).items()))
    out = args.output_dir / f"assistant-research-bootstrap-{args.date}-hud-insured-multifamily-26.json"
    payload = {
        "generated_at": args.date + "T23:59:00Z",
        "purpose": "Assistant-led BMC-market multifamily/apartment buyer census from the official HUD insured multifamily property layer.",
        "safety": "Inventory seed only. Does not promote buyers/vendors and does not stage or send outreach.",
        "source": SOURCE_PAGE,
        "source_service": LAYER,
        "source_stats": {
            "arizona_source_rows": count,
            "bmc_market_records": len(deduped),
            "by_market": by_market,
        },
        "count": len(deduped),
        "records": deduped,
    }
    out.write_text(json.dumps(payload, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    print(json.dumps({"artifact": str(out), "count": len(deduped), "arizona_source_rows": count, "by_market": by_market}, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
