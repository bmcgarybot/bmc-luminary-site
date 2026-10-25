#!/usr/bin/env python3
"""Catch internal/strategy language on customer-facing BMC pages."""
from __future__ import annotations

import html
import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
MARKET_SLUGS = (
    "prescott","prescott-valley","chino-valley","cottonwood","camp-verde","sedona",
    "flagstaff","winslow","kingman","phoenix","scottsdale","tucson",
)
KEY_PAGES = (
    "index.html",
    "services/index.html",
    "request/index.html",
    "how-it-works/index.html",
    "providers/index.html",
)
FORBIDDEN_VISIBLE_PHRASES = (
    "bmc categorizes",
    "normal words",
    "service path",
    "service paths",
    "start with the outcome",
    "our backend",
    "provider routing",
    "productized research",
    "institutional facility maintenance concierge",
    "b2b quote sourcing concierge",
    "commercial equipment quote concierge",
    "local competitor intelligence pack",
    "local market expansion pack",
    "start with the problem, not the paperwork",
    "start with the need, not the vendor search",
    "no perfect category or diagnosis required",
    "what can start here",
)


def visible_text(path: Path) -> str:
    text = path.read_text(errors="ignore")
    text = re.sub(r"<script\b[^>]*>[\s\S]*?</script>", " ", text, flags=re.I)
    text = re.sub(r"<style\b[^>]*>[\s\S]*?</style>", " ", text, flags=re.I)
    text = re.sub(r"<[^>]+>", " ", text)
    text = html.unescape(text)
    return re.sub(r"\s+", " ", text).lower()


def main() -> int:
    targets = set(KEY_PAGES)
    targets.update(f"markets/{slug}/index.html" for slug in MARKET_SLUGS)

    services = json.loads((ROOT / "data/services.json").read_text())["services"]
    for service in services:
        front = service.get("live_front", "")
        if front.startswith("/portfolio/"):
            targets.add(front[len("/portfolio/"):].strip("/") + "/index.html")

    failures = []
    for rel in sorted(targets):
        path = ROOT / rel
        if not path.exists():
            continue
        text = visible_text(path)
        for phrase in FORBIDDEN_VISIBLE_PHRASES:
            if phrase in text:
                failures.append(f"{rel}: customer-visible internal phrase {phrase!r}")

    if failures:
        print("Public copy check failed:")
        for failure in failures:
            print(f" - {failure}")
        return 1

    print(f"Checked {len(targets)} customer-facing pages for internal/meta language.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
