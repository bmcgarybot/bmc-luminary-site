#!/usr/bin/env python3
"""
Export a complete assistant-curated Homversa city census to auditable JSON artifacts.

This is a research artifact generator, not an outreach or provider-promotion tool.
Homversa states that Arizona listings are matched to the Arizona Registrar of
Contractors posting data. We preserve the ROC number and verification date and
class the rows as registry-derived evidence rather than direct business evidence.
"""
from __future__ import annotations

import argparse
from html import unescape
from html.parser import HTMLParser
import json
from pathlib import Path
import re
import time
import urllib.parse
import urllib.request

BASE = "https://homversa.com"
MARKETS = {
    "Phoenix": "phoenix",
    "Tucson": "tucson",
    "Scottsdale": "scottsdale",
    "Prescott": "prescott",
    "Prescott Valley": "prescott-valley",
    "Chino Valley": "chino-valley",
    "Camp Verde": "camp-verde",
    "Cottonwood": "cottonwood",
    "Sedona": "sedona",
    "Flagstaff": "flagstaff",
    "Winslow": "winslow",
    "Kingman": "kingman",
    "Bullhead City": "bullhead-city",
    "Golden Valley": "golden-valley",
    "Ash Fork": "ash-fork",
    "Seligman": "seligman",
    "Skull Valley": "skull-valley",
    "Mayer": "mayer",
    "Dewey-Humboldt": "dewey-humboldt",
    "Cordes Lakes": "cordes-lakes",
    "Williamson Valley": "williamson-valley",
}

TRADE_MAP = {
    "plumbers": ("backflow_plumbing", "Backflow & Commercial Plumbing"),
    "hvac": ("hvac_heat", "Heating & Air"),
    "electricians": ("electrical_service", "Electrician"),
    "roofers": ("facility_maintenance", "Building Maintenance Help"),
    "insulation-contractors": ("facility_maintenance", "Building Maintenance Help"),
    "low-voltage-contractors": ("facility_maintenance", "Building Maintenance Help"),
    "general-contractors": ("facility_maintenance", "Building Maintenance Help"),
    "concrete-contractors": ("epoxy_flooring", "Epoxy & Concrete Floors"),
    "painters": ("facility_maintenance", "Building Maintenance Help"),
    "drywall-contractors": ("facility_maintenance", "Building Maintenance Help"),
    "flooring-contractors": ("facility_maintenance", "Building Maintenance Help"),
    "masonry-contractors": ("facility_maintenance", "Building Maintenance Help"),
    "tile-contractors": ("facility_maintenance", "Building Maintenance Help"),
    "glass-glazing-contractors": ("facility_maintenance", "Building Maintenance Help"),
    "cabinet-carpentry-contractors": ("facility_maintenance", "Building Maintenance Help"),
    "stucco-plastering-contractors": ("facility_maintenance", "Building Maintenance Help"),
    "pool-contractors": ("pool_desert_property", "Pool & Outdoor Property Care"),
    "landscaping": ("landscaping", "Landscaping & Yard Cleanup"),
    "fence-contractors": ("facility_maintenance", "Building Maintenance Help"),
    "paving-contractors": ("parking_lot", "Parking Lot Cleaning & Striping"),
    "septic-contractors": ("rural_property", "Septic, Grading & Wells"),
    "well-drilling-contractors": ("rural_property", "Septic, Grading & Wells"),
}

TRADE_LINK_RE = re.compile(r"^/az/([a-z0-9-]+)/([a-z0-9-]+)/?$", re.I)
ROC_RE = re.compile(r"ROC(?:\s+License)?\s*#?\s*(\d{5,8})", re.I)
REST_ROC_RE = re.compile(r"^(.{2,220}?)\s*-\s*ROC\s*#(\d{5,8})\s*$", re.I)
DATE_RE = re.compile(r"(?:Checked as of|Verified)\s+([A-Z][a-z]+\s+\d{1,2},\s+20\d{2})", re.I)
COUNT_RE = re.compile(r"Homversa lists\s+([\d,]+)\s+", re.I)


class Tokens(HTMLParser):
    def __init__(self):
        super().__init__(convert_charrefs=True)
        self.tokens = []
        self.links = []
        self.href = None
        self.anchor = []

    def handle_starttag(self, tag, attrs):
        if tag.lower() == "a":
            self.href = dict(attrs).get("href")
            self.anchor = []

    def handle_data(self, data):
        text = " ".join(str(data or "").split())
        if not text:
            return
        self.tokens.append(text)
        if self.href is not None:
            self.anchor.append(text)

    def handle_endtag(self, tag):
        if tag.lower() == "a" and self.href is not None:
            self.links.append((self.href, " ".join(self.anchor).strip()))
            self.href = None
            self.anchor = []


def fetch(url, timeout=45, attempts=3):
    last = None
    for attempt in range(attempts):
        try:
            req = urllib.request.Request(
                url,
                headers={
                    "User-Agent": "BMC-Service-Network-Assistant-Research/1.0 (+https://bmcservicenetwork.com)",
                    "Accept": "text/html,application/xhtml+xml",
                },
            )
            with urllib.request.urlopen(req, timeout=timeout) as response:
                return response.read(10_000_000).decode("utf-8", "replace")
        except Exception as exc:
            last = exc
            if attempt + 1 < attempts:
                time.sleep(1.0 + attempt)
    raise last


def discover_trades(root_html, slug):
    parser = Tokens()
    parser.feed(root_html)
    parser.close()
    out = []
    seen = set()
    for href, _label in parser.links:
        parsed = urllib.parse.urlparse(href)
        path = parsed.path if parsed.scheme or parsed.netloc else href.split("?", 1)[0].split("#", 1)[0]
        match = TRADE_LINK_RE.match(path or "")
        if not match or match.group(1).lower() != slug.lower():
            continue
        trade = match.group(2).lower()
        if trade in seen:
            continue
        seen.add(trade)
        out.append((trade, urllib.parse.urljoin(BASE, path)))
    return out


def parse_ranked(page_html):
    parser = Tokens()
    parser.feed(page_html)
    parser.close()
    tokens = parser.tokens
    rows = []
    for i, token in enumerate(tokens):
        match = re.match(r"^(\d+)\.\s*(.*)$", token)
        if not match:
            continue
        rest = match.group(2).strip()
        if rest:
            name = rest
            start = i + 1
        elif i + 1 < len(tokens):
            name = tokens[i + 1].strip()
            start = i + 2
        else:
            continue
        if not name or len(name) > 220:
            continue
        block = " ".join(tokens[start : min(len(tokens), start + 24)])
        roc_match = ROC_RE.search(block)
        if roc_match:
            rows.append((name, roc_match.group(1)))

    # Some pages render the rank number and linked company name as separate
    # tokens in a way the numeric-token pass can miss. The company's anchor is
    # always immediately before "On the ROC register since ..."; recover those
    # ranked rows independently and let the caller deduplicate.
    for i, token in enumerate(tokens):
        if not token.lower().startswith("on the roc register since"):
            continue
        if i == 0:
            continue
        name = tokens[i - 1].strip()
        if not name or len(name) > 220 or re.match(r"^\d+\.$", name):
            continue
        block = " ".join(tokens[i : min(len(tokens), i + 24)])
        roc_match = ROC_RE.search(block)
        if roc_match:
            rows.append((name, roc_match.group(1)))
    return rows


def parse_all_list(page_html):
    rows = []
    for item in re.finditer(r"<li[^>]*>(.*?)</li>", page_html, re.I | re.S):
        visible = unescape(re.sub(r"<[^>]+>", " ", item.group(1)))
        visible = " ".join(visible.split())
        match = REST_ROC_RE.match(visible)
        if match:
            rows.append((match.group(1).strip(" -*"), match.group(2)))
    if rows:
        return rows

    parser = Tokens()
    parser.feed(page_html)
    parser.close()
    for token in parser.tokens:
        match = REST_ROC_RE.match(token)
        if match:
            rows.append((match.group(1).strip(" -*"), match.group(2)))
    return rows


def iso_date(human):
    if not human:
        return None
    from datetime import datetime

    return datetime.strptime(human, "%B %d, %Y").date().isoformat()


def page_metadata(main_html):
    text = unescape(re.sub(r"<[^>]+>", " ", main_html))
    text = " ".join(text.split())
    date_match = DATE_RE.search(text)
    count_match = COUNT_RE.search(text)
    return (
        int(count_match.group(1).replace(",", "")) if count_match else None,
        iso_date(date_match.group(1)) if date_match else None,
    )


def records_for_trade(market, trade, main_url, delay):
    main_html = fetch(main_url)
    claimed_count, verified_date = page_metadata(main_html)
    ranked_rows = parse_ranked(main_html)
    rows = list(ranked_rows)
    all_rows = []

    if claimed_count is None:
        raise RuntimeError(f"{trade}: could not parse claimed count from {main_url}")

    if claimed_count > len(rows):
        all_url = main_url.rstrip("/") + "/all"
        try:
            all_html = fetch(all_url)
            all_rows = parse_all_list(all_html)
            rows.extend(all_rows)
        except Exception as exc:
            raise RuntimeError(f"{trade}: failed complete A-to-Z page {all_url}: {exc}") from exc
        if delay:
            time.sleep(delay)

    dedup = {}
    for name, roc in rows:
        dedup[(name.casefold(), roc)] = (name, roc)
    rows = list(dedup.values())

    if len(rows) != claimed_count:
        raise RuntimeError(
            f"{trade}: completeness failure: page claims {claimed_count} verified companies, "
            f"but parser recovered {len(rows)} unique company/license pairs; "
            f"ranked_raw={len(ranked_rows)} all_raw={len(all_rows)} "
            f"ranked={ranked_rows!r}"
        )

    category_key, category_label = TRADE_MAP.get(
        trade, ("facility_maintenance", "Building Maintenance Help")
    )
    artifact_rows = []
    for name, roc in rows:
        artifact_rows.append(
            {
                "side": "vendor",
                "market": market,
                "category_key": category_key,
                "category_label": category_label,
                "business_name": name,
                "url": main_url,
                "domain": "homversa.com",
                "phone": None,
                "email": None,
                "official": False,
                "roc_license": roc,
                "trade": trade,
                "verified_date": verified_date,
                "note": (
                    f"ROC #{roc} | registry-derived {market} {trade} listing; "
                    f"Homversa reports current Arizona ROC credential verified {verified_date}"
                ),
            }
        )
    return artifact_rows, claimed_count, verified_date


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--market", required=True, choices=sorted(MARKETS))
    parser.add_argument("--date", required=True)
    parser.add_argument("--output-dir", type=Path, required=True)
    parser.add_argument("--delay", type=float, default=0.15)
    args = parser.parse_args()

    slug = MARKETS[args.market]
    root_url = f"{BASE}/az/{slug}"
    root_html = fetch(root_url)
    trades = discover_trades(root_html, slug)
    if not trades:
        raise SystemExit(f"No Homversa trade pages discovered for {args.market}")

    args.output_dir.mkdir(parents=True, exist_ok=True)
    summary = {
        "market": args.market,
        "root_url": root_url,
        "trade_pages": len(trades),
        "raw_trade_rows": 0,
        "trades": {},
        "files": [],
    }

    for trade, main_url in trades:
        rows, claimed_count, verified_date = records_for_trade(
            args.market, trade, main_url, args.delay
        )
        payload = {
            "researched_at": f"{args.date}T17:55:00-07:00",
            "market": args.market,
            "purpose": (
                "Assistant-led exhaustive licensed-trade census from published A-to-Z "
                "Arizona ROC-derived license evidence."
            ),
            "source": main_url,
            "source_method": (
                "Homversa city/trade page plus complete /all A-to-Z page; every row "
                "retains the published Arizona ROC license number."
            ),
            "verified_date": verified_date,
            "claimed_count": claimed_count,
            "count": len(rows),
            "records": rows,
        }
        out_name = (
            f"assistant-research-bootstrap-{args.date}-"
            f"{slug}-licensed-full-{trade}.json"
        )
        out_path = args.output_dir / out_name
        out_path.write_text(json.dumps(payload, indent=2) + "\n", encoding="utf-8")
        summary["raw_trade_rows"] += len(rows)
        summary["trades"][trade] = len(rows)
        summary["files"].append(out_name)
        print(f"{trade}: {len(rows)}/{claimed_count} complete -> {out_name}")
        if args.delay:
            time.sleep(args.delay)

    print(json.dumps(summary, indent=2))


if __name__ == "__main__":
    main()
