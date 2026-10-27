#!/usr/bin/env python3
"""
Export current active Arizona Registrar of Contractors records into BMC vendor census artifacts.

The exporter discovers the current "All Current Contractors" CSV link from the
official AZ ROC posting-list page, downloads it, filters to BMC markets, and
preserves official license evidence. It does NOT stage or send outreach.
"""
from __future__ import annotations

import argparse
import csv
from collections import Counter
from datetime import datetime
from html.parser import HTMLParser
import io
import json
from pathlib import Path
import re
import urllib.parse
import urllib.request

POSTING_PAGE = "https://roc.az.gov/posting-list"
UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156 Safari/537.36"

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


def slug(v):
    return re.sub(r"[^a-z0-9]+", "-", v.lower()).strip("-")


def request_bytes(url, *, referer=None, timeout=120):
    headers = {
        "User-Agent": UA,
        "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,text/csv;q=0.9,application/octet-stream;q=0.8,*/*;q=0.7",
        "Accept-Language": "en-US,en;q=0.9",
    }
    if referer:
        headers["Referer"] = referer
    req = urllib.request.Request(url, headers=headers)
    with urllib.request.urlopen(req, timeout=timeout) as response:
        return response.read(), response.geturl(), dict(response.headers)


class LinkCollector(HTMLParser):
    def __init__(self):
        super().__init__()
        self.links = []
        self.current = None

    def handle_starttag(self, tag, attrs):
        if tag.lower() != "a":
            return
        href = dict(attrs).get("href")
        if href:
            self.current = {"href": href, "text": []}

    def handle_data(self, data):
        if self.current is not None:
            self.current["text"].append(data)

    def handle_endtag(self, tag):
        if tag.lower() == "a" and self.current is not None:
            self.current["text"] = clean(" ".join(self.current["text"]))
            self.links.append(self.current)
            self.current = None


def discover_current_csv():
    blob, final_url, _ = request_bytes(POSTING_PAGE)
    html = blob.decode("utf-8", "replace")
    parser = LinkCollector()
    parser.feed(html)

    candidates = []
    for link in parser.links:
        href = link["href"]
        text_label = link["text"].lower()
        absolute = urllib.parse.urljoin(final_url, href)
        hay = (text_label + " " + href.lower())
        if "csv" in hay or absolute.lower().endswith(".csv"):
            candidates.append((text_label, absolute))

    # Prefer link text / nearby filename semantics for current contractors.
    for text_label, absolute in candidates:
        hay = (text_label + " " + absolute.lower())
        if "all" in hay and "contract" in hay and not any(x in hay for x in ("new", "pending", "disciplin", "unlicensed")):
            return absolute, html

    # Some Drupal templates put only "CSV" in the anchor text. Use page order:
    # first current-contractor CSV after the current-active section is the all-current file.
    lower = html.lower()
    marker = lower.find("list of current active contractors")
    if marker >= 0:
        section = html[marker: marker + 25000]
        parser2 = LinkCollector()
        parser2.feed(section)
        for link in parser2.links:
            href = link["href"]
            absolute = urllib.parse.urljoin(final_url, href)
            if ".csv" in href.lower() or "csv" in link["text"].lower():
                return absolute, html

    raise RuntimeError(
        "Could not discover official AZ ROC all-current-contractors CSV link. "
        f"CSV-like links found: {candidates[:12]!r}"
    )


def find_header(headers, exact=(), contains=(), required=True):
    normalized = {norm(h): h for h in headers}
    for name in exact:
        if norm(name) in normalized:
            return normalized[norm(name)]
    for h in headers:
        n = norm(h)
        if all(norm(term) in n for term in contains):
            return h
    if required:
        raise RuntimeError(
            f"Missing expected CSV field exact={exact} contains={contains}; headers={headers}"
        )
    return None


def decode_csv(blob):
    for encoding in ("utf-8-sig", "cp1252", "latin-1"):
        try:
            text = blob.decode(encoding)
            # Pick a plausible delimiter.
            sample = text[:10000]
            dialect = csv.Sniffer().sniff(sample, delimiters=",|\t;")
            reader = csv.DictReader(io.StringIO(text), dialect=dialect)
            rows = list(reader)
            if reader.fieldnames and rows:
                return reader.fieldnames, rows, encoding, dialect.delimiter
        except Exception:
            continue
    raise RuntimeError("Unable to decode/parse AZ ROC CSV")


def market_for_city(city):
    key = clean(city).casefold()
    for market, aliases in MARKETS.items():
        if key in aliases:
            return market
    return None


def classify(class_code, class_desc, business_name):
    corpus = " ".join([clean(class_code), clean(class_desc), clean(business_name)]).lower()

    rules = [
        (("plumb", "water heater", "sewer", "gas piping"), ("plumbing", "Plumbing")),
        (("electrical", "electrician", "wiring"), ("electrical", "Electrical")),
        (("air conditioning", "heating", "hvac", "refrigeration"), ("hvac", "HVAC")),
        (("roof",), ("roofing", "Roofing")),
        (("landscap", "irrigation"), ("landscaping", "Landscaping")),
        (("pool", "spa "), ("pool_service", "Pool Service")),
        (("septic", "sewage treatment"), ("septic", "Septic")),
        (("well drilling", "water well"), ("well_pump", "Well / Pump")),
        (("locksmith", "lock "), ("locksmith", "Locksmith")),
        (("low voltage", "communication", "alarm", "security system"), ("low_voltage_security", "Low Voltage / Security")),
        (("glass", "glazing"), ("glass_windows", "Glass / Windows")),
        (("floor", "tile", "marble", "granite"), ("epoxy_flooring", "Flooring / Epoxy")),
        (("concrete", "masonry", "paving", "asphalt"), ("epoxy_flooring", "Concrete / Flooring")),
        (("painting", "paint", "drywall", "stucco", "carpentry", "insulation", "remodel", "general building"), ("facility_maintenance", "Building Maintenance Help")),
    ]
    for needles, result in rules:
        if any(k in corpus for k in needles):
            return result
    return "facility_maintenance", "Building Maintenance Help"


def license_source_url(license_no):
    # Official posting page is stable source provenance. The fragment preserves license identity.
    return POSTING_PAGE + "#roc-" + urllib.parse.quote(clean(license_no), safe="")


def parse_posting_date(html):
    # Current table currently renders ISO date before the all-current row.
    m = re.search(
        r"List\s+of\s+Current\s+Active\s+Contractors.*?(20\d{2}-\d{2}-\d{2})",
        html,
        re.I | re.S,
    )
    return m.group(1) if m else None


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--date", required=True)
    parser.add_argument("--output-dir", type=Path, required=True)
    args = parser.parse_args()

    csv_url, posting_html = discover_current_csv()
    csv_blob, csv_final_url, csv_headers = request_bytes(csv_url, referer=POSTING_PAGE)
    headers, rows, encoding, delimiter = decode_csv(csv_blob)

    if len(rows) < 50000:
        raise RuntimeError(f"AZ ROC active-contractor CSV unexpectedly small: {len(rows)} rows")

    name_field = find_header(
        headers,
        exact=("Business Name", "Company Name", "Name", "Licensee Name"),
        contains=("business", "name"),
    )
    license_field = find_header(
        headers,
        exact=("License Number", "License No", "ROC Number", "ROC #", "License"),
        contains=("license",),
    )
    city_field = find_header(
        headers,
        exact=("City", "Business City", "Address City"),
        contains=("city",),
    )
    address_field = find_header(
        headers,
        exact=("Address", "Business Address", "Street Address", "Address1"),
        contains=("address",),
        required=False,
    )
    zip_field = find_header(
        headers,
        exact=("Zip", "Zip Code", "Postal Code"),
        contains=("zip",),
        required=False,
    )
    phone_field = find_header(
        headers,
        exact=("Phone", "Phone Number", "Business Phone"),
        contains=("phone",),
        required=False,
    )
    class_code_field = find_header(
        headers,
        exact=("Class", "License Class", "Classification", "Class Code"),
        contains=("class",),
        required=False,
    )
    class_desc_field = find_header(
        headers,
        exact=("Classification Description", "Class Description", "License Classification Description", "Description"),
        contains=("description",),
        required=False,
    )
    status_field = find_header(
        headers,
        exact=("Status", "License Status"),
        contains=("status",),
        required=False,
    )
    expiration_field = find_header(
        headers,
        exact=("Expiration Date", "Expire Date", "Expiration"),
        contains=("expir",),
        required=False,
    )

    posting_date = parse_posting_date(posting_html) or args.date
    by_market = {market: [] for market in MARKETS}
    unmatched_city = Counter()

    for row in rows:
        city = clean(row.get(city_field))
        market = market_for_city(city)
        if not market:
            if city:
                unmatched_city[city] += 1
            continue

        name = clean(row.get(name_field))
        license_no = clean(row.get(license_field))
        if not name or not license_no:
            continue

        status = clean(row.get(status_field)) if status_field else ""
        # Source is titled current active contractors. If an explicit status exists and contradicts that, skip.
        if status and any(x in status.lower() for x in ("inactive", "suspend", "cancel", "revoked", "expired", "closed")):
            continue

        class_code = clean(row.get(class_code_field)) if class_code_field else ""
        class_desc = clean(row.get(class_desc_field)) if class_desc_field else ""
        category_key, category_label = classify(class_code, class_desc, name)
        address = clean(row.get(address_field)) if address_field else ""
        zipcode = clean(row.get(zip_field)) if zip_field else ""
        phone = clean(row.get(phone_field)) if phone_field else ""
        expiration = clean(row.get(expiration_field)) if expiration_field else ""

        note = [
            "Arizona Registrar of Contractors current active-contractor posting",
            f"ROC {license_no}",
            f"registry update {posting_date}",
        ]
        if class_code:
            note.append(f"class {class_code}")
        if class_desc:
            note.append(class_desc)
        if status:
            note.append(f"status {status}")
        if address:
            note.append(f"address: {address}, {city}, AZ {zipcode}".strip())
        if expiration:
            note.append(f"expiration {expiration}")

        by_market[market].append({
            "side": "vendor",
            "market": market,
            "category_key": category_key,
            "category_label": category_label,
            "business_name": name,
            "url": license_source_url(license_no),
            "domain": "roc.az.gov",
            "phone": phone or None,
            "email": None,
            "official": False,
                "official_registry": True,
            "roc_license": license_no,
            "trade": class_desc or class_code or "Arizona ROC active contractor",
            "verified_date": posting_date,
            "address": address or None,
            "zip": zipcode or None,
            "license_class": class_code or None,
            "license_class_description": class_desc or None,
            "license_status": status or "current active posting",
            "license_expiration": expiration or None,
            "source_csv": csv_final_url,
            "note": " | ".join(note),
        })

    args.output_dir.mkdir(parents=True, exist_ok=True)
    summary = {
        "posting_page": POSTING_PAGE,
        "posting_date": posting_date,
        "source_csv": csv_final_url,
        "csv_rows": len(rows),
        "csv_bytes": len(csv_blob),
        "encoding": encoding,
        "delimiter": delimiter,
        "headers": headers,
        "market_rows": 0,
        "by_market": {},
        "by_category": {},
        "files": [],
    }

    all_categories = Counter()
    for market, records in by_market.items():
        if not records:
            continue
        # Strict duplicate defense for repeated identical license/class rows in source.
        dedup = {}
        for record in records:
            key = (
                record["roc_license"],
                record["category_key"],
                record["business_name"].casefold(),
                record.get("license_class") or "",
            )
            dedup[key] = record
        records = sorted(
            dedup.values(),
            key=lambda r: (r["category_key"], r["business_name"].casefold(), r["roc_license"])
        )

        out = args.output_dir / f"assistant-research-bootstrap-{args.date}-azroc-active-{slug(market)}-12.json"
        market_categories = Counter(r["category_key"] for r in records)
        payload = {
            "generated_at": args.date + "T23:59:00Z",
            "purpose": f"Assistant-led {market} vendor census from Arizona Registrar of Contractors current active-contractor posting.",
            "safety": "Inventory seed only. Does not promote vendors and does not stage or send outreach.",
            "source": POSTING_PAGE,
            "source_csv": csv_final_url,
            "source_updated": posting_date,
            "source_stats": {
                "statewide_csv_rows": len(rows),
                "market_records": len(records),
                "by_category": dict(sorted(market_categories.items())),
            },
            "count": len(records),
            "records": records,
        }
        out.write_text(json.dumps(payload, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
        summary["market_rows"] += len(records)
        summary["by_market"][market] = len(records)
        summary["files"].append(out.name)
        all_categories.update(market_categories)

    summary["by_category"] = dict(sorted(all_categories.items()))

    if summary["market_rows"] < 5000:
        raise RuntimeError(
            f"AZ ROC BMC-market export unexpectedly small: {summary['market_rows']} rows; "
            f"by_market={summary['by_market']}"
        )

    # Require major markets plus the exact unsupported-market set where the secondary source failed.
    required = {
        "Phoenix", "Tucson", "Scottsdale", "Prescott", "Prescott Valley",
        "Bullhead City", "Chino Valley", "Cottonwood", "Kingman"
    }
    missing_required = sorted(required - set(summary["by_market"]))
    if missing_required:
        raise RuntimeError(f"AZ ROC export missing required markets: {missing_required}")

    print(json.dumps(summary, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
