#!/usr/bin/env python3
"""Generate/check the priority BMC customer storefronts from shared data.

Usage:
  python portfolio/automation/generate-storefronts.py
  python portfolio/automation/generate-storefronts.py --check
"""
from __future__ import annotations

import argparse
import html
import json
from pathlib import Path

PORTFOLIO = Path(__file__).resolve().parents[1]
CONFIG = PORTFOLIO / "data" / "storefront-overrides.json"


def esc(value: object) -> str:
    return html.escape(str(value), quote=True)


def render(key: str, p: dict) -> str:
    robots = '<meta name="robots" content="noindex,follow">' if p.get("noindex") else ""
    proof = "".join(f"<span>{esc(x)}</span>" for x in p["proof"])
    needs = "".join(
        f'<div class="category-tile"><span class="tile-icon">0{i}</span>'
        f"<strong>{esc(item[0])}</strong><span>{esc(item[1])}</span></div>"
        for i, item in enumerate(p["needs"], 1)
    )
    return f'''<!doctype html><html lang="en"><head>
<meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1">
<title>{esc(p["title"])}</title><meta name="description" content="{esc(p["desc"])}">{robots}
<meta name="bmc-webhook" content="https://hooks.bmcservicenetwork.com/api/intake"><link rel="stylesheet" href="../assets/core.css?v=clarity-10">
</head><body class="editorial-site service-page">
<nav class="nav"><div class="wrap nav-in"><a class="brand" href="../services/">{esc(p["name"])}</a><div class="nav-links"><a href="#request">Get help</a><a href="../services/">Other services</a></div></div></nav>

<header class="customer-hero"><div class="wrap editorial-hero-grid">
<div><div class="editorial-kicker">{esc(p["name"])}</div><h1>{esc(p["headline"])}</h1><p class="hero-sub">{esc(p["sub"])}</p>
<div class="actions"><a class="btn btn-primary" href="#request">Get help</a><a class="btn btn-secondary" href="#common">Common jobs</a></div>
<div class="customer-proof">{proof}</div></div>
<div class="hero-photo"><img src="{esc(p["image"])}" alt="{esc(p["alt"])}" width="1400" height="1000" fetchpriority="high"><div class="hero-photo-card"><small>{esc(p["name"])}</small><strong>Need help with this?</strong><span>Send the job details and timing.</span></div></div>
</div></header>

<section class="editorial-section alt" id="common"><div class="wrap">
<div class="editorial-intro"><div class="editorial-kicker">Common jobs</div><h2>{esc(p.get("common_heading","A few things we can help with."))}</h2><p>{esc(p.get("common_text","Pick one or tell us what you need."))}</p></div>
<div class="category-tiles">{needs}</div>
</div></section>

<section class="editorial-section"><div class="wrap"><div class="soft-panel">
<div class="editorial-intro"><div class="editorial-kicker">Get started</div><h2>{esc(p.get("start_heading","Tell us what you need."))}</h2><p>{esc(p.get("start_text","Add the location and timing."))}</p></div>
<div class="actions"><a class="btn btn-primary" href="#request">Start my request</a></div>
</div></div></section>

<section class="editorial-section" id="request"><div class="request-shell">
<form class="request-card" data-bmc-form data-form-type="{key}" data-subject="{esc(p["name"])} request">
<input class="hidden" name="website" tabindex="-1" autocomplete="off">
<h2>What do you need?</h2><p class="lead">Tell us what needs to be done.</p>
<div class="field"><label>Describe the job or problem</label><textarea name="scope" required placeholder="What needs to be done? Include anything important about size, condition, access, urgency, or the deadline."></textarea></div>
<div class="row"><div class="field"><label>City / area</label><select name="market" data-market-select required><option value="">Choose your city / area</option></select></div><div class="field"><label>When do you need help?</label><select name="timing"><option>ASAP</option><option>Within 7 days</option><option>Within 30 days</option><option>Just planning / getting a quote</option></select></div></div>
<div class="row"><div class="field"><label>Your name</label><input name="contact_name" autocomplete="name" required></div><div class="field"><label>Email</label><input type="email" name="email" autocomplete="email" required></div></div>
<div class="field"><label>Phone <span class="muted">(optional)</span></label><input type="tel" name="phone" autocomplete="tel"></div>
<label class="check"><input type="checkbox" name="consent" value="yes" required><span>I’m asking BMC to help with this request and understand that my contact details may be shared with a participating provider if that provider accepts the job.</span></label>
<div class="notice" data-form-notice></div><div class="actions"><button class="btn btn-primary" type="submit" data-label="Send my request">Send my request</button></div>
</form></div></section>

<footer><div class="wrap footer-in"><span>{esc(p["name"])} · BMC Service Network</span><span><a class="provider-footer-link" href="../providers/">I provide services</a> · © <span data-year></span> BMC Luminary Ventures LLC</span></div></footer>
<div class="mobile-sticky-cta"><a class="btn btn-primary" href="#request">Get help</a></div>
<script src="../assets/core.js?v=clarity-10"></script></body></html>'''


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--check", action="store_true", help="Fail if generated storefronts differ from committed files.")
    args = ap.parse_args()

    data = json.loads(CONFIG.read_text())
    failures = []
    for key in data["managed_service_keys"]:
        p = data["overrides"][key]
        target = PORTFOLIO / p["slug"] / "index.html"
        expected = render(key, p)
        if args.check:
            actual = target.read_text() if target.exists() else ""
            if actual != expected:
                failures.append(str(target.relative_to(PORTFOLIO.parent)))
        else:
            target.parent.mkdir(parents=True, exist_ok=True)
            target.write_text(expected)

    if failures:
        print("Storefronts out of sync with generator:")
        for f in failures:
            print(f" - {f}")
        return 1

    print(f'{"Checked" if args.check else "Generated"} {len(data["managed_service_keys"])} priority storefronts.')
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
