#!/usr/bin/env python3
"""
Export City of Scottsdale 2026 weekly new-business-license reports into buyer census artifacts.

The reports are direct City-issued evidence that a business license was issued during
the report week. They are NOT treated as proof that an older business remains active
forever; the note preserves that distinction for later closure/verification passes.
"""
from __future__ import annotations

import argparse
from collections import Counter
from datetime import date, timedelta
import io
import json
from pathlib import Path
import re
import urllib.error
import urllib.request

import pdfplumber

BASE = (
    "https://www.scottsdalelibrary.org/docs/"
    "scottsdalepubliclibrarylibraries/default-document-library/business-licenses"
)
UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/156 Safari/537.36"
LICENSE_RE = re.compile(r"^\d{6,8}$")
DATE_RE = re.compile(r"^\d{1,2}/\d{1,2}/\d{4}$")


def clean(v):
    return " ".join(str(v or "").split()).strip()


def fetch_pdf(url):
    req = urllib.request.Request(
        url,
        headers={
            "User-Agent": UA,
            "Accept": "application/pdf,application/octet-stream;q=0.9,*/*;q=0.8",
            "Referer": "https://www.scottsdalelibrary.org/online-resources/databases/new-business-licenses",
        },
    )
    try:
        with urllib.request.urlopen(req, timeout=45) as response:
            ctype = (response.headers.get("Content-Type") or "").lower()
            blob = response.read()
        if not blob.startswith(b"%PDF"):
            return None
        return blob
    except urllib.error.HTTPError as exc:
        if exc.code in (403, 404):
            return None
        raise


def sundays(start, end):
    cur = start
    while cur.weekday() != 6:
        cur += timedelta(days=1)
    while cur <= end:
        yield cur
        cur += timedelta(days=7)


def group_lines(words, tolerance=2.5):
    groups = []
    for word in sorted(words, key=lambda w: (float(w["top"]), float(w["x0"]))):
        top = float(word["top"])
        if not groups or abs(groups[-1]["top"] - top) > tolerance:
            groups.append({"top": top, "words": [word]})
        else:
            groups[-1]["words"].append(word)
    for group in groups:
        group["words"].sort(key=lambda w: float(w["x0"]))
    return groups


def header_boundaries(words):
    header = [w for w in words if 40 <= float(w["top"]) <= 180]
    # Find anchors from the visible table header. Coordinates are dynamic across PDF generation.
    by_text = {}
    for w in header:
        by_text.setdefault(w["text"].lower(), []).append(float(w["x0"]))

    business = sorted(by_text.get("business", []))
    license_x = sorted(by_text.get("license", []))
    owner = sorted(by_text.get("owner", []))
    service = sorted(by_text.get("service", []))
    mailing = sorted(by_text.get("mailing", []))

    if len(business) < 2 or len(license_x) < 2 or not owner or not service or not mailing:
        raise RuntimeError("Could not detect Scottsdale PDF table header columns")

    return {
        "business": business[0],
        "owner": owner[0],
        "type": license_x[-1],
        "service": service[0],
        "mailing": mailing[0],
        "start": business[-1],
    }


def words_in_col(block, lo, hi=None):
    vals = []
    for w in block:
        x = float(w["x0"])
        if x >= lo - 2 and (hi is None or x < hi - 2):
            vals.append((float(w["top"]), x, w["text"]))
    vals.sort()
    return [t for _, _, t in vals]


def category(name):
    n = name.lower()
    rules = [
        (("restaurant", "cafe", "coffee", "grill", "pizza", "kitchen", "bakery", "bar ", "tavern"), ("restaurants", "restaurants food service")),
        (("hotel", "motel", "resort", "inn "), ("hotels_motels", "hotels motels lodging")),
        (("medical", "med spa", "clinic", "dental", "dentist", "orthodont", "healthcare", "health care"), ("medical_centers", "medical dental clinics")),
        (("therapy", "counsel", "behavioral", "mental health", "psycholog"), ("therapy_behavioral", "therapy behavioral health")),
        (("school", "academy", "learning", "preschool", "daycare", "child care"), ("schools_education", "schools education childcare")),
        (("property", "realty", "real estate", "apartment", "hoa "), ("property_management", "property management real estate")),
        (("insurance", "financial", "accounting", "consult", "law ", "legal", "media", "marketing"), ("insurance_professional", "insurance finance professional offices")),
        (("auto", "motor", "tire", "car ", "vehicle", "truck"), ("auto_fleet", "auto fleet transportation")),
        (("spa", "salon", "boutique", "store", "shop", "retail"), ("retail", "retail stores")),
        (("church", "temple", "synagogue", "nonprofit", "foundation"), ("churches_nonprofits", "churches nonprofits religious organizations")),
    ]
    for needles, result in rules:
        if any(k in n for k in needles):
            return result
    return "general_business", "general commercial businesses"


def parse_report(blob, report_url, verified_date):
    records = []
    with pdfplumber.open(io.BytesIO(blob)) as pdf:
        for page_no, page in enumerate(pdf.pages, 1):
            words = page.extract_words(x_tolerance=1.5, y_tolerance=2.0, keep_blank_chars=False) or []
            if not words:
                continue
            bounds = header_boundaries(words)
            groups = group_lines(words)
            starts = []
            for group in groups:
                first = group["words"][0]["text"] if group["words"] else ""
                if LICENSE_RE.match(first):
                    starts.append((group["top"], first))
            for idx, (top, license_no) in enumerate(starts):
                next_top = starts[idx+1][0] if idx+1 < len(starts) else float(page.height) - 15
                block = [w for w in words if top - 1 <= float(w["top"]) < next_top - 1]
                business_words = words_in_col(block, bounds["business"], bounds["owner"])
                owner_words = words_in_col(block, bounds["owner"], bounds["type"])
                type_words = words_in_col(block, bounds["type"], bounds["service"])
                service_words = words_in_col(block, bounds["service"], bounds["mailing"])
                mailing_words = words_in_col(block, bounds["mailing"], bounds["start"])
                start_words = words_in_col(block, bounds["start"], None)

                business_name = clean(" ".join(business_words))
                if not business_name:
                    continue
                start_date = next((w for w in start_words if DATE_RE.match(w)), None)
                license_type = clean(" ".join(type_words[:2]))
                service_address = clean(" ".join(service_words))
                mailing_address = clean(" ".join(mailing_words))
                category_key, category_label = category(business_name)
                note = [
                    "City of Scottsdale weekly new-business-license report",
                    f"license {license_no}",
                    f"report page {page_no}",
                ]
                if license_type:
                    note.append(f"license type {license_type}")
                if start_date:
                    note.append(f"business start {start_date}")
                if service_address:
                    note.append(f"service address: {service_address}")
                note.append("direct issuance evidence; not standalone proof of continuing active status")

                records.append({
                    "side": "buyer",
                    "market": "Scottsdale",
                    "category_key": category_key,
                    "category_label": category_label,
                    "business_name": business_name,
                    "url": f"{report_url}#license-{license_no}",
                    "domain": "scottsdalelibrary.org",
                    "phone": None,
                    "email": None,
                    "official": False,
                "official_registry": True,
                    "verified_date": verified_date,
                    "license_number": license_no,
                    "license_type": license_type or None,
                    "service_address": service_address or None,
                    "mailing_address": mailing_address or None,
                    "business_start": start_date,
                    "note": " | ".join(note),
                })
    return records


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--date", required=True)
    parser.add_argument("--output-dir", type=Path, required=True)
    parser.add_argument("--year", type=int, default=2026)
    args = parser.parse_args()

    end = date.fromisoformat(args.date)
    start = date(args.year, 1, 1)
    all_records = []
    reports = []
    missing = []
    parse_failures = []

    for sunday in sundays(start, end):
        # The report filename is the Sunday beginning the report week.
        url = f"{BASE}/{sunday.isoformat()}.pdf"
        blob = fetch_pdf(url)
        if blob is None:
            missing.append(sunday.isoformat())
            continue
        try:
            rows = parse_report(blob, url, args.date)
        except Exception as exc:
            parse_failures.append({"date": sunday.isoformat(), "error": str(exc)})
            continue
        if not rows:
            parse_failures.append({"date": sunday.isoformat(), "error": "PDF parsed but no license rows recovered"})
            continue
        all_records.extend(rows)
        reports.append({"date": sunday.isoformat(), "url": url, "records": len(rows)})

    # The library currently retains a rolling recent set. Require most of that visible window rather than pretending a full-year archive exists.
    if len(reports) < 7:
        raise RuntimeError(
            f"Only {len(reports)} Scottsdale 2026 weekly license reports parsed; "
            f"missing={len(missing)} parse_failures={parse_failures[:5]}"
        )
    if len(all_records) < 30:
        raise RuntimeError(f"Scottsdale weekly-license census unexpectedly small: {len(all_records)} rows")

    # De-dupe repeated licenses defensively, preferring latest appearance.
    dedup = {}
    for row in all_records:
        dedup[row["license_number"]] = row
    records = sorted(dedup.values(), key=lambda r: (r["business_name"].casefold(), r["license_number"]))

    args.output_dir.mkdir(parents=True, exist_ok=True)
    out = args.output_dir / f"assistant-research-bootstrap-{args.date}-scottsdale-new-business-licenses-11.json"
    payload = {
        "generated_at": args.date + "T23:59:00Z",
        "purpose": "Assistant-led Scottsdale buyer census from the City of Scottsdale recent weekly new-business-license reports currently retained online.",
        "safety": "Inventory seed only. Does not promote buyers/vendors and does not stage or send outreach.",
        "source": "https://www.scottsdalelibrary.org/online-resources/databases/new-business-licenses",
        "source_stats": {
            "reports_parsed": len(reports),
            "reports": reports,
            "missing_report_dates": missing,
            "parse_failures": parse_failures,
            "raw_license_rows": len(all_records),
            "unique_license_rows": len(records),
            "by_category": dict(sorted(Counter(r["category_key"] for r in records).items())),
        },
        "count": len(records),
        "records": records,
    }
    out.write_text(json.dumps(payload, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    print(json.dumps(payload["source_stats"], indent=2, sort_keys=True))
    print(out)


if __name__ == "__main__":
    main()
