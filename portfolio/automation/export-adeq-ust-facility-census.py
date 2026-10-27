#!/usr/bin/env python3
"""
Export active ADEQ Underground Storage Tank (UST) facilities for BMC markets.

Official source:
https://services.arcgis.com/SzoH1oFM2apCSkx3/arcgis/rest/services/UST/FeatureServer/3

The ADEQ layer is regenerated daily and includes facility name, type, address,
city, county, ZIP and active/not-active status. This exporter keeps ACTIVE
facilities only, then filters to configured BMC markets.

Inventory-only government-registry census. No outreach is staged or sent.
"""
from __future__ import annotations

import argparse
from collections import Counter
import json
from pathlib import Path
import time
import urllib.parse
import urllib.request

LAYER = "https://services.arcgis.com/SzoH1oFM2apCSkx3/arcgis/rest/services/UST/FeatureServer/3"
QUERY = LAYER + "/query"
SOURCE_PAGE = "https://vei.azdeq.gov/ust"
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
                headers={
                    "User-Agent": USER_AGENT,
                    "Accept": "application/json,*/*",
                    "Cache-Control": "no-cache",
                },
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


def classify(place_type):
    p = clean(place_type).casefold()

    # ADEQ uses "GAS FILLING STATION - COMMERCIAL" for the largest retail-fuel
    # class and a separate fleet-fueling class. Keep those distinct so BMC can
    # target exterior/fuel-island maintenance without burying them in generic
    # commercial facilities.
    if "gas filling station" in p and "fleet" in p:
        return "auto_fleet", "Fleet Fueling Facilities"
    if "gas filling station" in p or "gasoline" in p or "service station" in p:
        return "retail", "Gas Stations & Fuel Facilities"
    if "grocery store" in p or "convenience store" in p:
        return "grocery", "Grocery & Convenience Stores"
    if "fuel storage" in p or "lpg facility" in p:
        return "warehouses_industrial", "Bulk Fuel & Industrial Facilities"
    if "parking lot" in p or "parking garage" in p:
        return "general_business", "Parking Lots & Garages"
    if "hotel" in p or "motel" in p or "lodging" in p:
        return "hotels_motels", "Hotels, Motels & Lodging"
    if "medical" in p or "hospital" in p or "clinic" in p:
        return "medical_centers", "Medical & Health Facilities"
    if "garage" in p or "auto" in p or "vehicle" in p or "transport" in p or "airport" in p or "airplane hangar" in p or "equipment yard" in p:
        return "auto_fleet", "Automotive, Fleet & Transportation Facilities"
    if "industrial" in p or "warehouse" in p or "manufactur" in p or "fabricator" in p or "machine shop" in p or "cement plant" in p:
        return "warehouses_industrial", "Industrial, Warehouse & Manufacturing Facilities"
    if "school" in p or "educational" in p or "college" in p or "university" in p:
        return "schools_education", "Schools & Education Facilities"
    if "church" in p or "synagogue" in p or "temple" in p or "mosque" in p:
        return "churches_nonprofits", "Churches & Religious Facilities"
    if "public office" in p or "government" in p or "municipal" in p or "fire station" in p or "police station" in p or "post office" in p or "public works" in p:
        return "public_facilities", "Public & Government Facilities"
    if "apartment" in p or "townhouse" in p or "housing" in p or "mobile/manufactured home park" in p:
        return "property_management", "Multifamily & Property Facilities"
    if "commercial" in p or "retail" in p or "business park" in p:
        return "general_business", "Commercial Facilities"
    return "general_business", "Commercial & Institutional Facilities"


def service_hypotheses(place_type, category_key):
    p = clean(place_type).casefold()
    tags = []

    def add_tags(*values):
        for value in values:
            if value not in tags:
                tags.append(value)

    if "gas filling station" in p or "gasoline" in p or "service station" in p:
        add_tags(
            "fuel-island / pump-pad pressure washing",
            "sidewalk and storefront pressure washing",
            "dumpster-pad degreasing",
            "parking-lot sweeping",
            "parking-lot striping / restriping",
            "commercial window cleaning",
        )
    if "fleet" in p or "equipment yard" in p or "auto" in p or "vehicle" in p or "transport" in p:
        add_tags(
            "fleet / equipment washing",
            "oil and grease stain cleanup",
            "yard / parking-lot sweeping",
            "parking-lot striping / restriping",
            "exterior pressure washing",
        )
    if category_key in {"retail", "grocery"}:
        add_tags(
            "sidewalk and storefront pressure washing",
            "dumpster-pad cleaning",
            "parking-lot sweeping",
            "parking-lot striping / restriping",
            "commercial window cleaning",
        )
    if category_key == "hotels_motels":
        add_tags(
            "exterior pressure washing",
            "parking-lot sweeping",
            "parking-lot striping / restriping",
            "commercial window cleaning",
            "recurring common-area cleaning",
        )
    if category_key == "medical_centers":
        add_tags(
            "parking-lot sweeping",
            "parking-lot striping / restriping",
            "sidewalk pressure washing",
            "commercial window cleaning",
            "recurring janitorial cleaning",
        )
    if category_key == "property_management":
        add_tags(
            "parking-lot sweeping",
            "parking-lot striping / restriping",
            "exterior pressure washing",
            "dumpster-area cleaning",
            "turnover / common-area cleaning",
        )
    if category_key in {"warehouses_industrial", "general_business", "public_facilities", "schools_education", "churches_nonprofits"}:
        add_tags(
            "parking-lot sweeping",
            "parking-lot striping / restriping",
            "exterior pressure washing",
            "commercial window cleaning",
        )
    return tags


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--date", required=True)
    parser.add_argument("--output-dir", type=Path, required=True)
    args = parser.parse_args()
    args.output_dir.mkdir(parents=True, exist_ok=True)

    meta = request_json(LAYER, {"f": "json"})
    available = {str(f.get("name") or "") for f in meta.get("fields") or []}
    required = {"OBJECTID", "PLACE_ID", "PLACE_TYPE", "ADDRESS", "CITY", "COUNTY", "ZIP_CODE", "STATUS", "FACILITY", "PLACE_NAME"}
    missing = sorted(required - available)
    if missing:
        raise RuntimeError(f"ADEQ UST layer missing expected fields: {missing}")

    where = "STATUS='ACTIVE'"
    active_count = int(
        request_json(QUERY, {"where": where, "returnCountOnly": "true", "f": "json"}).get("count") or 0
    )
    if active_count < 1000:
        raise RuntimeError(f"ADEQ active UST facility count unexpectedly small: {active_count}")

    out_fields = ",".join(sorted(required | {"LATITUDE", "LONGITUDE", "GENERATED", "LUST_NUM"}))
    page_size = min(int(meta.get("maxRecordCount") or 2000), 2000)
    offset = 0
    records = []

    while True:
        payload = request_json(
            QUERY,
            {
                "where": where,
                "outFields": out_fields,
                "returnGeometry": "false",
                "resultOffset": offset,
                "resultRecordCount": page_size,
                "orderByFields": "OBJECTID",
                "f": "json",
            },
        )
        features = payload.get("features") or []
        if not features:
            break

        for feature in features:
            a = feature.get("attributes") or {}
            city = clean(a.get("CITY"))
            market = market_for_city(city)
            if not market:
                continue

            name = clean(a.get("PLACE_NAME"))
            facility = clean(a.get("FACILITY"))
            if not name:
                name = facility or f"ADEQ UST Facility {clean(a.get('PLACE_ID'))}"
            address = clean(a.get("ADDRESS"))
            zipcode = clean(a.get("ZIP_CODE"))
            county = clean(a.get("COUNTY"))
            place_type = clean(a.get("PLACE_TYPE"))
            place_id = clean(a.get("PLACE_ID"))
            category_key, category_label = classify(place_type)
            opportunity_tags = service_hypotheses(place_type, category_key)

            note = [
                "Arizona Department of Environmental Quality active Underground Storage Tank facility government record",
                f"facility type: {place_type or 'unspecified'}",
            ]
            if place_id:
                note.append(f"ADEQ place ID {place_id}")
            if facility:
                note.append(f"facility code {facility}")
            if address:
                note.append(f"address: {address}, {city}, AZ {zipcode}".strip())
            if county:
                note.append(f"{county} County")
            note.append(
                "UST-facility presence is a facility/prospect signal only; it does not prove a current need for pressure washing, sweeping, striping or other BMC services"
            )

            records.append(
                {
                    "side": "buyer",
                    "market": market,
                    "category_key": category_key,
                    "category_label": category_label,
                    "business_name": name,
                    "url": SOURCE_PAGE,
                    "domain": "azdeq.gov",
                    "phone": None,
                    "email": None,
                    "official": False,
                    "official_registry": True,
                    "verified_date": args.date,
                    "address": address or None,
                    "zip": zipcode or None,
                    "county": county or None,
                    "adeq_ust_place_id": place_id or None,
                    "adeq_ust_facility_code": facility or None,
                    "adeq_ust_place_type": place_type or None,
                    "adeq_ust_status": "ACTIVE",
                    "commercial_service_hypotheses": opportunity_tags,
                    "opportunity_qualification_required": True,
                    "latitude": a.get("LATITUDE"),
                    "longitude": a.get("LONGITUDE"),
                    "source_service": LAYER,
                    "note": " | ".join(note),
                }
            )

        offset += len(features)
        if len(features) < page_size:
            break
        if offset > active_count + page_size:
            raise RuntimeError("ADEQ UST pagination exceeded expected active count")

    seen = set()
    deduped = []
    for record in sorted(
        records,
        key=lambda r: (
            r["market"],
            r["business_name"].casefold(),
            r.get("adeq_ust_place_id") or "",
            r.get("address") or "",
        ),
    ):
        identity = (
            record["market"],
            record.get("adeq_ust_place_id") or "",
            record.get("adeq_ust_facility_code") or "",
            record.get("address") or "",
        )
        if identity in seen:
            continue
        seen.add(identity)
        deduped.append(record)

    if len(deduped) < 300:
        raise RuntimeError(
            f"ADEQ UST BMC-market export unexpectedly small: {len(deduped)} "
            f"from {active_count} active Arizona facilities"
        )

    by_market = dict(sorted(Counter(r["market"] for r in deduped).items()))
    by_type = dict(sorted(Counter(r.get("adeq_ust_place_type") or "UNKNOWN" for r in deduped).items()))
    by_category = dict(sorted(Counter(r["category_key"] for r in deduped).items()))

    out = args.output_dir / f"assistant-research-bootstrap-{args.date}-adeq-active-ust-facilities-31.json"
    payload = {
        "generated_at": args.date + "T23:59:00Z",
        "purpose": "Assistant-led BMC-market fuel/exterior-maintenance-heavy commercial buyer census from the official ADEQ active UST facility layer.",
        "safety": "Inventory seed only. Does not imply service need, promote buyers/vendors, or stage/send outreach.",
        "source": SOURCE_PAGE,
        "source_service": LAYER,
        "source_stats": {
            "active_arizona_ust_facilities": active_count,
            "bmc_market_records": len(deduped),
            "by_market": by_market,
            "by_place_type": by_type,
            "by_category": by_category,
        },
        "count": len(deduped),
        "records": deduped,
    }
    out.write_text(json.dumps(payload, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    print(
        json.dumps(
            {
                "artifact": str(out),
                "count": len(deduped),
                "active_arizona_ust_facilities": active_count,
                "by_market": by_market,
                "by_place_type": by_type,
                "by_category": by_category,
            },
            indent=2,
            sort_keys=True,
        )
    )


if __name__ == "__main__":
    main()
