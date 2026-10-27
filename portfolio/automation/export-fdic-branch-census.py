#!/usr/bin/env python3
"""
Export current FDIC-insured bank branch/office locations for BMC markets.

Official source: FDIC BankFind Suite /locations API.
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

API = "https://api.fdic.gov/banks/locations"
SOURCE_PAGE = "https://banks.data.fdic.gov/bankfind-suite/bankfind"
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


def request_json(params, attempts=5):
    last = None
    for attempt in range(attempts):
        try:
            target = API + "?" + urllib.parse.urlencode(params)
            req = urllib.request.Request(
                target,
                headers={
                    "User-Agent": USER_AGENT,
                    "Accept": "application/json",
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


def market_for_city(city):
    c = clean(city).casefold()
    for market, aliases in MARKETS.items():
        if c in aliases:
            return market
    return None


def unwrap_rows(payload):
    rows = payload.get("data") if isinstance(payload, dict) else None
    if not isinstance(rows, list):
        raise RuntimeError(f"Unexpected FDIC response shape: {type(payload)}")
    out = []
    for item in rows:
        if isinstance(item, dict) and isinstance(item.get("data"), dict):
            out.append(item["data"])
        elif isinstance(item, dict):
            out.append(item)
    return out


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--date", required=True)
    parser.add_argument("--output-dir", type=Path, required=True)
    args = parser.parse_args()
    args.output_dir.mkdir(parents=True, exist_ok=True)

    fields = "NAME,OFFNAME,ADDRESS,CITY,STALP,ZIP,CERT,OFFNUM,ESTYMD,ENDDATE,BKCLASS,REGAGNT,WEBADDR"
    payload = request_json({
        "filters": "STALP:AZ",
        "fields": fields,
        "limit": 10000,
        "offset": 0,
        "format": "json",
        "sort_by": "CITY",
        "sort_order": "ASC",
    })
    rows = unwrap_rows(payload)

    meta = payload.get("meta") or payload.get("metadata") or {}
    total = meta.get("total")
    if isinstance(total, dict):
        total = total.get("value") or total.get("count")
    try:
        total = int(total)
    except Exception:
        total = len(rows)

    if len(rows) < 500:
        raise RuntimeError(f"FDIC Arizona location result unexpectedly small: {len(rows)}")

    records = []
    skipped_other_market = 0
    skipped_ended = 0
    for row in rows:
        city = clean(row.get("CITY"))
        market = market_for_city(city)
        if not market:
            skipped_other_market += 1
            continue

        end_date = clean(row.get("ENDDATE"))
        if end_date and end_date not in {"0", "00000000", "99991231"}:
            skipped_ended += 1
            continue

        bank_name = clean(row.get("NAME"))
        office_name = clean(row.get("OFFNAME"))
        address = clean(row.get("ADDRESS"))
        zipcode = clean(row.get("ZIP"))
        cert = clean(row.get("CERT"))
        offnum = clean(row.get("OFFNUM"))
        if not bank_name or not address:
            continue

        business_name = bank_name
        if office_name and office_name.casefold() not in {"main office", bank_name.casefold()}:
            business_name = f"{bank_name} - {office_name}"

        note = [
            "Federal Deposit Insurance Corporation BankFind branch/location government record",
        ]
        if cert:
            note.append(f"FDIC certificate {cert}")
        if offnum:
            note.append(f"office number {offnum}")
        if office_name:
            note.append(f"office name: {office_name}")
        estymd = clean(row.get("ESTYMD"))
        if estymd:
            note.append(f"established {estymd}")
        bkclass = clean(row.get("BKCLASS"))
        if bkclass:
            note.append(f"bank class {bkclass}")
        regulator = clean(row.get("REGAGNT"))
        if regulator:
            note.append(f"regulator {regulator}")
        note.append(f"address: {address}, {city}, AZ {zipcode}".strip())

        records.append({
            "side": "buyer",
            "market": market,
            "category_key": "insurance_professional",
            "category_label": "Banks & Financial Offices",
            "business_name": business_name,
            "url": SOURCE_PAGE,
            "domain": "fdic.gov",
            "phone": None,
            "email": None,
            "official": False,
            "official_registry": True,
            "verified_date": args.date,
            "address": address,
            "zip": zipcode or None,
            "fdic_bank_name": bank_name,
            "fdic_office_name": office_name or None,
            "fdic_certificate": cert or None,
            "fdic_office_number": offnum or None,
            "fdic_established_date": estymd or None,
            "fdic_bank_class": bkclass or None,
            "fdic_regulator": regulator or None,
            "fdic_website": clean(row.get("WEBADDR")) or None,
            "source_api": API,
            "note": " | ".join(note),
        })

    seen = set()
    deduped = []
    for record in sorted(records, key=lambda r: (r["market"], r["business_name"].casefold(), r.get("fdic_certificate") or "", r.get("fdic_office_number") or "")):
        identity = (
            record["market"],
            record.get("fdic_certificate") or "",
            record.get("fdic_office_number") or "",
            record.get("address") or "",
        )
        if identity in seen:
            continue
        seen.add(identity)
        deduped.append(record)

    if len(deduped) < 100:
        raise RuntimeError(
            f"FDIC BMC-market branch export unexpectedly small: {len(deduped)} "
            f"from {len(rows)} returned Arizona locations"
        )

    by_market = dict(sorted(Counter(r["market"] for r in deduped).items()))
    out = args.output_dir / f"assistant-research-bootstrap-{args.date}-fdic-bank-branches-28.json"
    artifact = {
        "generated_at": args.date + "T23:59:00Z",
        "purpose": "Assistant-led BMC-market financial-office buyer census from the official FDIC BankFind locations API.",
        "safety": "Inventory seed only. Does not promote buyers/vendors and does not stage or send outreach.",
        "source": SOURCE_PAGE,
        "source_api": API,
        "source_stats": {
            "fdic_reported_arizona_locations": total,
            "returned_arizona_rows": len(rows),
            "bmc_market_records": len(deduped),
            "excluded_other_market": skipped_other_market,
            "excluded_ended_locations": skipped_ended,
            "by_market": by_market,
        },
        "count": len(deduped),
        "records": deduped,
    }
    out.write_text(json.dumps(artifact, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    print(json.dumps({
        "artifact": str(out),
        "count": len(deduped),
        "returned_arizona_rows": len(rows),
        "reported_total": total,
        "by_market": by_market,
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
