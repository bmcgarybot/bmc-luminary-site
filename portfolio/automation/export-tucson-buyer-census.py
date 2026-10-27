#!/usr/bin/env python3
"""
Export official-source Tucson buyer census artifacts.

Sources:
1. City of Tucson GIS current active business-license layer.
2. Arizona Department of Health Services licensed-facility ArcGIS layer.

This is an inventory/research generator only. It never stages or sends outreach.
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

CITY_LAYER = "https://gis.tucsonaz.gov/arcgis/rest/services/PublicMaps/OpenData_EconomicDevelopment/MapServer/3"
CITY_QUERY = CITY_LAYER + "/query"
ADHS_LAYER = "https://services1.arcgis.com/mpVYz37anSdrK4d8/ArcGIS/rest/services/All_State_Licensed_Facilities_in_Arizona/FeatureServer/18"
ADHS_QUERY = ADHS_LAYER + "/query"

USER_AGENT = "BMC-Service-Network-Assistant-Research/1.0 (+https://bmcservicenetwork.com)"


def request_json(url: str, params: dict | None = None, *, post: bool = False, attempts: int = 4):
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
            with urllib.request.urlopen(req, timeout=90) as response:
                payload = json.loads(response.read().decode("utf-8", "replace"))
            if isinstance(payload, dict) and payload.get("error"):
                raise RuntimeError(f"ArcGIS error from {url}: {payload['error']}")
            return payload
        except Exception as exc:
            last = exc
            if attempt + 1 < attempts:
                time.sleep(1.5 * (attempt + 1))
    raise last


def norm(value) -> str:
    return re.sub(r"[^a-z0-9]+", "", str(value or "").lower())


def text(value) -> str:
    return " ".join(str(value or "").split()).strip()


def find_field(meta: dict, exact_names=(), alias_terms=(), required=True):
    fields = meta.get("fields") or []
    by_norm = {}
    for field in fields:
        for candidate in (field.get("name"), field.get("alias")):
            if candidate:
                by_norm.setdefault(norm(candidate), field.get("name"))
    for name in exact_names:
        if norm(name) in by_norm:
            return by_norm[norm(name)]
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


def object_id_field(meta: dict):
    field = meta.get("objectIdField") or meta.get("objectIdFieldName")
    if field:
        return field
    for item in meta.get("fields") or []:
        if str(item.get("type") or "").lower().endswith("oid"):
            return item.get("name")
    raise RuntimeError("No ObjectID field found")


def all_features(layer_url: str, query_url: str, *, chunk_size: int = 400):
    meta = request_json(layer_url, {"f": "json"})
    oid_field = object_id_field(meta)
    ids_payload = request_json(
        query_url,
        {"where": "1=1", "returnIdsOnly": "true", "f": "json"},
        post=True,
    )
    object_ids = sorted(ids_payload.get("objectIds") or [])
    features = []
    for start in range(0, len(object_ids), chunk_size):
        chunk = object_ids[start : start + chunk_size]
        payload = request_json(
            query_url,
            {
                "objectIds": ",".join(str(x) for x in chunk),
                "outFields": "*",
                "returnGeometry": "false",
                "f": "json",
            },
            post=True,
        )
        features.extend(payload.get("features") or [])
    return meta, oid_field, object_ids, features


def source_record_url(query_url: str, oid: object) -> str:
    return query_url + "?" + urllib.parse.urlencode(
        {
            "objectIds": str(oid),
            "outFields": "*",
            "returnGeometry": "false",
            "f": "pjson",
        }
    )


def city_category(name: str, naics: str, description: str, type_desc: str):
    corpus = " ".join([name, description, type_desc]).lower()
    digits = re.sub(r"\D", "", naics or "")

    keyword_rules = [
        (("church", "temple", "synagogue", "mosque", "religious"), ("churches_nonprofits", "churches nonprofits religious organizations")),
        (("grocery", "supermarket", "food market"), ("grocery", "grocery supermarkets food markets")),
        (("pharmacy", "drug store", "drugstore"), ("pharmacy", "pharmacies drug stores")),
        (("hotel", "motel", "lodging", "resort", "inn "), ("hotels_motels", "hotels motels lodging")),
        (("restaurant", "cafe", "coffee shop", "bar ", "tavern", "food service"), ("restaurants", "restaurants food service")),
        (("dentist", "dental", "orthodont"), ("medical_centers", "medical dental clinics")),
        (("hospital", "clinic", "medical", "physician", "doctor", "urgent care"), ("medical_centers", "medical dental clinics")),
        (("behavioral", "counsel", "therapy", "therapist", "mental health", "psycholog"), ("therapy_behavioral", "therapy behavioral health")),
        (("school", "academy", "college", "university", "day care", "daycare", "child care", "preschool"), ("schools_education", "schools education childcare")),
        (("theater", "theatre", "cinema", "museum", "performing arts", "entertainment"), ("entertainment_venues", "theaters entertainment recreation venues")),
        (("property management", "real estate management", "apartment management"), ("property_management", "property management real estate")),
        (("warehouse", "distribution", "manufactur", "industrial", "wholesale"), ("warehouses_industrial", "warehouses industrial manufacturing wholesale")),
        (("insurance", "financial", "accounting", "law office", "attorney", "professional office"), ("insurance_professional", "insurance finance professional offices")),
        (("auto repair", "automotive", "car dealer", "truck", "fleet"), ("auto_fleet", "auto fleet transportation")),
    ]
    for needles, result in keyword_rules:
        if any(needle in corpus for needle in needles):
            return result

    if digits.startswith("721"):
        return "hotels_motels", "hotels motels lodging"
    if digits.startswith("722"):
        return "restaurants", "restaurants food service"
    if digits.startswith("62"):
        return "medical_centers", "medical dental clinics"
    if digits.startswith("61"):
        return "schools_education", "schools education childcare"
    if digits.startswith("813"):
        return "churches_nonprofits", "churches nonprofits religious organizations"
    if digits.startswith("711") or digits.startswith("712") or digits.startswith("713"):
        return "entertainment_venues", "theaters entertainment recreation venues"
    if digits.startswith("52") or digits.startswith("54") or digits.startswith("55"):
        return "insurance_professional", "insurance finance professional offices"
    if digits.startswith("53"):
        return "property_management", "property management real estate"
    if digits.startswith(("31", "32", "33", "42", "21", "22")):
        return "warehouses_industrial", "warehouses industrial manufacturing wholesale"
    if digits.startswith(("48", "49")):
        return "auto_fleet", "auto fleet transportation"
    if digits.startswith(("44", "45")):
        return "retail", "retail stores"
    if digits.startswith("92"):
        return "public_facilities", "public civic facilities"
    return "general_business", "general commercial businesses"


def adhs_category(facility_type: str, name: str):
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


def build_city_records(verified_date: str):
    meta, oid_field, source_ids, features = all_features(CITY_LAYER, CITY_QUERY)
    name_field = find_field(meta, ("ACC_NAME", "ACCOUNT_NAME"), ("name",))
    city_field = find_field(meta, ("CITY",), ("city",))
    state_field = find_field(meta, ("STATE",), ("state",), required=False)
    address_field = find_field(meta, ("ADD_ORIG", "ADDRESS"), ("address",), required=False)
    zip_field = find_field(meta, ("ZIP_CODE", "ZIP"), ("zip",), required=False)
    naics_field = find_field(meta, ("NAIC_CODE", "NAICS", "NAICS_CODE"), ("naic",), required=False)
    naics_desc_field = find_field(meta, ("NAIC_DESC", "NAICS_DESC"), ("naic", "desc"), required=False)
    type_code_field = find_field(meta, ("TYPE_CODE",), ("type", "code"), required=False)
    type_desc_field = find_field(meta, ("TYPE_DESC",), ("type", "desc"), required=False)
    account_field = find_field(meta, ("ACC_NUM", "ACCOUNT_NUMBER"), ("account",), required=False)

    records = []
    excluded_rrp = 0
    excluded_non_tucson = 0
    for feature in features:
        a = feature.get("attributes") or {}
        city = text(a.get(city_field))
        if city.lower() != "tucson":
            excluded_non_tucson += 1
            continue
        state = text(a.get(state_field)) if state_field else ""
        if state and state.upper() != "AZ":
            continue
        type_code = text(a.get(type_code_field)) if type_code_field else ""
        type_desc = text(a.get(type_desc_field)) if type_desc_field else ""
        if type_code.upper() == "RRP" or "rental real property" in type_desc.lower():
            excluded_rrp += 1
            continue
        name = text(a.get(name_field))
        if not name:
            continue
        oid = a.get(oid_field)
        address = text(a.get(address_field)) if address_field else ""
        zipcode = text(a.get(zip_field)) if zip_field else ""
        naics = text(a.get(naics_field)) if naics_field else ""
        naics_desc = text(a.get(naics_desc_field)) if naics_desc_field else ""
        category_key, category_label = city_category(name, naics, naics_desc, type_desc)
        account = text(a.get(account_field)) if account_field else ""
        note_parts = ["City of Tucson current active business-license GIS record"]
        if address:
            note_parts.append(f"physical/geocoded address: {address}, Tucson, AZ {zipcode}".strip())
        if naics:
            note_parts.append(f"NAICS {naics}")
        if naics_desc:
            note_parts.append(naics_desc)
        if type_desc:
            note_parts.append(type_desc)
        if account:
            note_parts.append(f"license account {account}")
        records.append(
            {
                "side": "buyer",
                "market": "Tucson",
                "category_key": category_key,
                "category_label": category_label,
                "business_name": name,
                "url": source_record_url(CITY_QUERY, oid),
                "domain": "gis.tucsonaz.gov",
                "phone": None,
                "email": None,
                "official": False,
                "official_registry": True,
                "verified_date": verified_date,
                "address": address or None,
                "zip": zipcode or None,
                "naics": naics or None,
                "source_object_id": oid,
                "note": " | ".join(note_parts),
            }
        )

    records.sort(key=lambda r: (r["category_key"], r["business_name"].casefold(), str(r["source_object_id"])))
    return records, {
        "source_object_ids": len(source_ids),
        "downloaded_features": len(features),
        "excluded_non_tucson": excluded_non_tucson,
        "excluded_rental_real_property": excluded_rrp,
        "included_records": len(records),
        "by_category": dict(sorted(Counter(r["category_key"] for r in records).items())),
    }


def build_adhs_records(verified_date: str):
    meta, oid_field, source_ids, features = all_features(ADHS_LAYER, ADHS_QUERY)

    name_field = find_field(
        meta,
        ("FacilityName", "FACILITY_NAME", "ProviderName", "PROVIDER_NAME", "Name"),
        ("name",),
    )
    city_field = find_field(meta, ("City", "CITY"), ("city",))
    address_field = find_field(meta, ("Address", "ADDRESS", "StreetAddress"), ("address",), required=False)
    zip_field = find_field(meta, ("Zip", "ZIP", "ZipCode", "ZIP_CODE"), ("zip",), required=False)
    type_field = find_field(
        meta,
        ("FacilityType", "FACILITY_TYPE", "ProviderType", "PROVIDER_TYPE", "Type"),
        ("type",),
        required=False,
    )
    phone_field = find_field(meta, ("Phone", "PHONE", "PhoneNumber"), ("phone",), required=False)

    records = []
    for feature in features:
        a = feature.get("attributes") or {}
        city = text(a.get(city_field))
        if city.lower() != "tucson":
            continue
        name = text(a.get(name_field))
        if not name:
            continue
        facility_type = text(a.get(type_field)) if type_field else ""
        address = text(a.get(address_field)) if address_field else ""
        zipcode = text(a.get(zip_field)) if zip_field else ""
        phone = text(a.get(phone_field)) if phone_field else ""
        oid = a.get(oid_field)
        category_key, category_label = adhs_category(facility_type, name)
        note_parts = ["Arizona Department of Health Services licensed-facility record"]
        if facility_type:
            note_parts.append(facility_type)
        if address:
            note_parts.append(f"address: {address}, Tucson, AZ {zipcode}".strip())
        records.append(
            {
                "side": "buyer",
                "market": "Tucson",
                "category_key": category_key,
                "category_label": category_label,
                "business_name": name,
                "url": source_record_url(ADHS_QUERY, oid),
                "domain": "services1.arcgis.com",
                "phone": phone or None,
                "email": None,
                "official": False,
                "official_registry": True,
                "verified_date": verified_date,
                "address": address or None,
                "zip": zipcode or None,
                "facility_type": facility_type or None,
                "source_object_id": oid,
                "note": " | ".join(note_parts),
            }
        )

    records.sort(key=lambda r: (r["category_key"], r["business_name"].casefold(), str(r["source_object_id"])))
    return records, {
        "source_object_ids": len(source_ids),
        "downloaded_features": len(features),
        "included_tucson_records": len(records),
        "by_category": dict(sorted(Counter(r["category_key"] for r in records).items())),
        "by_facility_type": dict(sorted(Counter(r.get("facility_type") or "Unknown" for r in records).items())),
    }


def write_artifact(path: Path, *, purpose: str, source: str, verified_date: str, records: list, stats: dict):
    payload = {
        "generated_at": verified_date + "T23:59:00Z",
        "purpose": purpose,
        "safety": "Inventory seed only. Does not promote buyers/vendors and does not stage or send outreach.",
        "source": source,
        "source_stats": stats,
        "count": len(records),
        "records": records,
    }
    path.write_text(json.dumps(payload, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--date", required=True)
    parser.add_argument("--output-dir", type=Path, required=True)
    args = parser.parse_args()
    args.output_dir.mkdir(parents=True, exist_ok=True)

    city_records, city_stats = build_city_records(args.date)
    adhs_records, adhs_stats = build_adhs_records(args.date)

    if len(city_records) < 1000:
        raise RuntimeError(f"City Tucson census unexpectedly small: {len(city_records)}")
    if len(adhs_records) < 500:
        raise RuntimeError(f"ADHS Tucson facility census unexpectedly small: {len(adhs_records)}")

    city_path = args.output_dir / f"assistant-research-bootstrap-{args.date}-tucson-official-businesses-06.json"
    adhs_path = args.output_dir / f"assistant-research-bootstrap-{args.date}-tucson-adhs-facilities-07.json"

    write_artifact(
        city_path,
        purpose="Assistant-led Tucson buyer census from City of Tucson current active business-license GIS records; excludes rental-real-property license rows.",
        source=CITY_LAYER,
        verified_date=args.date,
        records=city_records,
        stats=city_stats,
    )
    write_artifact(
        adhs_path,
        purpose="Assistant-led Tucson regulated-facility buyer census from Arizona Department of Health Services licensed-facility records.",
        source=ADHS_LAYER,
        verified_date=args.date,
        records=adhs_records,
        stats=adhs_stats,
    )

    print(json.dumps({
        "city_artifact": str(city_path),
        "city": city_stats,
        "adhs_artifact": str(adhs_path),
        "adhs": adhs_stats,
        "combined_rows": len(city_records) + len(adhs_records),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
