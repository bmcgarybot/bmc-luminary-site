#!/usr/bin/env python3
"""
Export NCES Common Core of Data public-school facilities for BMC markets.

Source: official NCES ArcGIS FeatureServer distribution for Public School Locations - Current,
as cataloged by Data.gov / U.S. Department of Education. The service is filtered to Arizona
at source before BMC-market filtering.

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

LAYER = "https://services1.arcgis.com/Ua5sjt3LWTPigjyD/arcgis/rest/services/Public_School_Locations_Current/FeatureServer/0"
QUERY = LAYER + "/query"
SOURCE_PAGE = "https://catalog.data.gov/dataset/public-school-locations-current"
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


def find_field(meta, preferred_names, alias_terms=()):
    fields = meta.get("fields") or []
    wanted = {norm(x) for x in preferred_names}
    for item in fields:
        if norm(item.get("name")) in wanted or norm(item.get("alias")) in wanted:
            return item.get("name")
    if alias_terms:
        for item in fields:
            hay = (str(item.get("name") or "") + " " + str(item.get("alias") or "")).lower()
            if all(term.lower() in hay for term in alias_terms):
                return item.get("name")
    return None


def field_value(attrs, field_name):
    if not field_name:
        return ""
    return clean(attrs.get(field_name))


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
    state_field = find_field(meta, ("STATE", "STABR", "LSTATE"), ("state",))
    city_field = find_field(meta, ("LCITY", "CITY"), ("city",))
    name_field = find_field(meta, ("NAME", "SCH_NAME"), ("school", "name"))
    id_field = find_field(meta, ("NCESSCH",), ("school", "id"))
    street_field = find_field(meta, ("STREET", "LSTREET1", "LSTREET"), ("address",))
    street2_field = find_field(meta, ("LSTREET2",), ())
    zip_field = find_field(meta, ("ZIP", "LZIP"), ("zip",))
    phone_field = find_field(meta, ("PHONE",), ("phone",))
    lea_field = find_field(meta, ("LEA_NAME", "LEA_Name"), ("agency", "name"))
    type_field = find_field(meta, ("SCHOOL_TYPE_TEXT",), ("school", "type"))
    status_field = find_field(meta, ("SY_STATUS_TEXT", "STATUS"), ("status",))
    low_field = find_field(meta, ("GSLO",), ())
    high_field = find_field(meta, ("GSHI",), ())
    enrollment_field = find_field(meta, ("MEMBER", "TOTAL"), ("student",))
    charter_field = find_field(meta, ("CHARTER_TEXT",), ("charter",))

    required = {"state":state_field,"city":city_field,"name":name_field,"id":id_field}
    missing = [k for k,v in required.items() if not v]
    if missing:
        raise RuntimeError(f"NCES FeatureServer missing required fields {missing}; available={[f.get('name') for f in meta.get('fields',[])]}")

    where = f"{state_field}='AZ'"
    count_payload = request_json(QUERY, {"where":where,"returnCountOnly":"true","f":"json"})
    arizona_count = int(count_payload.get("count") or 0)
    if arizona_count < 1000:
        raise RuntimeError(f"NCES Arizona school count unexpectedly small: {arizona_count}")

    out_fields = [x for x in [
        id_field,name_field,city_field,state_field,street_field,street2_field,zip_field,
        phone_field,lea_field,type_field,status_field,low_field,high_field,enrollment_field,charter_field
    ] if x]
    # preserve order while de-duplicating
    out_fields = list(dict.fromkeys(out_fields))

    records = []
    offset = 0
    page_size = min(int(meta.get("maxRecordCount") or 2000), 2000)
    while True:
        payload = request_json(QUERY, {
            "where": where,
            "outFields": ",".join(out_fields),
            "returnGeometry": "false",
            "resultOffset": offset,
            "resultRecordCount": page_size,
            "orderByFields": id_field,
            "f": "json",
        })
        features = payload.get("features") or []
        if not features:
            break
        for feature in features:
            a = feature.get("attributes") or {}
            city = field_value(a, city_field)
            market = market_for_city(city)
            if not market:
                continue
            status = field_value(a, status_field)
            if any(term in status.lower() for term in ("closed", "inactive")):
                continue
            name = field_value(a, name_field)
            nces_id = field_value(a, id_field)
            if not name or not nces_id:
                continue
            street = field_value(a, street_field)
            street2 = field_value(a, street2_field)
            zipcode = field_value(a, zip_field)
            phone = field_value(a, phone_field)
            lea = field_value(a, lea_field)
            school_type = field_value(a, type_field)
            grades_low = field_value(a, low_field)
            grades_high = field_value(a, high_field)
            enrollment = field_value(a, enrollment_field)
            charter = field_value(a, charter_field)
            full_street = " ".join(x for x in (street,street2) if x)

            note=["National Center for Education Statistics Common Core of Data public-school record",f"NCES school ID {nces_id}"]
            if school_type: note.append(school_type)
            if status: note.append(f"status: {status}")
            if lea: note.append(f"LEA: {lea}")
            if grades_low or grades_high: note.append(f"grades {grades_low or '?'}-{grades_high or '?'}")
            if enrollment and enrollment not in ("-1","-2","-9"): note.append(f"reported enrollment {enrollment}")
            if charter: note.append(f"charter: {charter}")
            if full_street: note.append(f"address: {full_street}, {city}, AZ {zipcode}".strip())

            records.append({
                "side":"buyer",
                "market":market,
                "category_key":"schools_education",
                "category_label":"Schools & Education",
                "business_name":name,
                "url":SOURCE_PAGE,
                "domain":"catalog.data.gov",
                "phone":phone or None,
                "email":None,
                "official":False,
                "official_registry":True,
                "verified_date":args.date,
                "address":full_street or None,
                "zip":zipcode or None,
                "nces_school_id":nces_id,
                "school_type":school_type or None,
                "operational_status":status or None,
                "lea_name":lea or None,
                "reported_enrollment":enrollment or None,
                "source_service":LAYER,
                "note":" | ".join(note),
            })
        offset += len(features)
        if len(features) < page_size:
            break
        if offset > arizona_count + page_size:
            raise RuntimeError("NCES pagination exceeded expected Arizona count")

    seen=set()
    deduped=[]
    for record in sorted(records,key=lambda r:(r["market"],r["business_name"].casefold(),r["nces_school_id"])):
        identity=(record["market"],record["nces_school_id"])
        if identity in seen: continue
        seen.add(identity); deduped.append(record)

    if len(deduped) < 300:
        raise RuntimeError(f"NCES BMC-market school export unexpectedly small: {len(deduped)} from {arizona_count} Arizona schools")

    by_market=dict(sorted(Counter(r["market"] for r in deduped).items()))
    out=args.output_dir / f"assistant-research-bootstrap-{args.date}-nces-public-schools-21.json"
    payload={
        "generated_at":args.date+"T23:59:00Z",
        "purpose":"Assistant-led BMC-market public-school buyer census from the official NCES Common Core of Data current school-location FeatureServer.",
        "safety":"Inventory seed only. Does not promote buyers/vendors and does not stage or send outreach.",
        "source":SOURCE_PAGE,
        "source_service":LAYER,
        "source_stats":{"arizona_school_rows":arizona_count,"bmc_market_records":len(deduped),"by_market":by_market},
        "count":len(deduped),
        "records":deduped,
    }
    out.write_text(json.dumps(payload,indent=2,ensure_ascii=False)+"\n",encoding="utf-8")
    print(json.dumps({"artifact":str(out),"count":len(deduped),"arizona_school_rows":arizona_count,"by_market":by_market},indent=2,sort_keys=True))


if __name__=="__main__":
    main()
