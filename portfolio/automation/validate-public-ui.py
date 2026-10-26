#!/usr/bin/env python3
"""Guard the public BMC site against mixed legacy/new UI generations."""
from __future__ import annotations

import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
LEGACY_MARKERS = ("BMC Service Portfolio", "service-front-4")
FORBIDDEN_PUBLIC_PHRASES = (
    "Local service routing",
    "routing path underneath",
    "Tow / roadside matching",
    "100 qualified prospects",
    "begin fulfillment",
    "fulfillment starts",
    "Payment confirmation is recorded server-side",
    "vendor routing",
    "lead-routing tests",
)
MARKET_SLUGS = (
    "prescott", "prescott-valley", "chino-valley", "cottonwood",
    "camp-verde", "sedona", "flagstaff", "winslow", "kingman",
    "phoenix", "scottsdale", "tucson",
)
REQUIRED_EDITORIAL = (
    "index.html",
    "services/index.html",
    "request/index.html",
    "how-it-works/index.html",
    "providers/index.html",
    "provider-pilot/index.html",
    "provider-pilot-activate/index.html",
    "provider-response/index.html",
    "provider-job-update/index.html",
    "growth-packs/index.html",
    "competitor-intelligence/index.html",
    "market-expansion-pack/index.html",
    "privacy/index.html",
    "terms/index.html",
    "order-complete/index.html",
    "payment-success/index.html",
)


def read(rel: str) -> str:
    path = ROOT / rel
    if not path.exists():
        raise AssertionError(f"Missing public page: {rel}")
    return path.read_text(errors="ignore")


def main() -> int:
    failures: list[str] = []

    for html in ROOT.rglob("*.html"):
        rel = html.relative_to(ROOT)
        text = html.read_text(errors="ignore")
        for marker in LEGACY_MARKERS:
            if marker in text:
                failures.append(f"{rel}: legacy marker {marker!r}")
        for phrase in FORBIDDEN_PUBLIC_PHRASES:
            if phrase in text:
                failures.append(f"{rel}: internal/awkward public phrase {phrase!r}")

    services = json.loads((ROOT / "data/services.json").read_text())["services"]
    for service in services:
        front = service.get("live_front", "")
        if not front.startswith("/portfolio/"):
            continue
        rel = front[len("/portfolio/"):].strip("/") + "/index.html"
        text = read(rel)
        if 'class="editorial-site' not in text:
            failures.append(f"{rel}: registered service front is not on editorial-site shell")

    for slug in MARKET_SLUGS:
        rel = f"markets/{slug}/index.html"
        text = read(rel)
        if 'class="editorial-site' not in text:
            failures.append(f"{rel}: market hub is not on editorial-site shell")

    for rel in REQUIRED_EDITORIAL:
        text = read(rel)
        if 'class="editorial-site' not in text:
            failures.append(f"{rel}: key public/support page is not on editorial-site shell")

    if failures:
        print("Public UI generation check failed:")
        for item in failures:
            print(f" - {item}")
        return 1

    print(f"Validated {len(services)} registered service fronts, {len(MARKET_SLUGS)} market hubs, and key public/support pages.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
