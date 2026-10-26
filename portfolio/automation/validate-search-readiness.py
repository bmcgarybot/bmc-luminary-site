#!/usr/bin/env python3
from __future__ import annotations

import json
import re
import zipfile
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]
DOMAIN="https://bmcservicenetwork.com"

def main()->int:
    failures=[]

    services=json.loads((ROOT/"data/services.json").read_text())["services"]
    sitemap=(ROOT/"sitemap.xml").read_text()
    sitemap_urls=set(re.findall(r"<loc>(https://bmcservicenetwork\.com[^<]+)</loc>",sitemap))
    required_public_pages={
        DOMAIN+"/",
        DOMAIN+"/services/",
        DOMAIN+"/providers/",
        DOMAIN+"/request/",
        DOMAIN+"/how-it-works/",
    }
    for required in sorted(required_public_pages):
        if required not in sitemap_urls:
            failures.append(f"sitemap missing required public page: {required}")

    for svc in services:
        front=str(svc.get("live_front") or "")
        if not front:
            continue
        public_path=front.replace("/portfolio","",1)
        expected=DOMAIN+public_path
        if expected not in sitemap_urls:
            failures.append(f"sitemap missing live service front: {expected}")

    for url in sitemap_urls:
        if not url.startswith(DOMAIN+"/"):
            failures.append(f"unexpected sitemap origin: {url}")
            continue
        rel=url[len(DOMAIN):].strip("/")
        page=ROOT/"index.html" if not rel else ROOT/rel/"index.html"
        if not page.exists():
            failures.append(f"sitemap URL has no matching page: {url}")
            continue
        text=page.read_text(errors="ignore")
        if re.search(r'<meta\s+name="robots"\s+content="[^"]*noindex',text,re.I):
            failures.append(f"sitemap URL is marked noindex: {url}")
            continue
        rel=url[len(DOMAIN):].strip("/")
        page=ROOT/"index.html" if not rel else ROOT/rel/"index.html"
        if not page.exists():
            failures.append(f"sitemap URL has no public page: {url}")
            continue
        text=page.read_text(errors="ignore")
        if re.search(r'<meta\s+name="robots"\s+content="[^"]*noindex',text,re.I):
            failures.append(f"sitemap URL is marked noindex: {url}")

    robots=(ROOT/"robots.txt").read_text()
    if f"Sitemap: {DOMAIN}/sitemap.xml" not in robots:
        failures.append("robots.txt does not advertise the canonical BMC sitemap")

    core=(ROOT/"assets/core.js").read_text()
    if 'canonical.href="https://bmcservicenetwork.com"+location.pathname;' not in core:
        failures.append("core.js canonical URL is not locked to the non-www BMC origin")
    if "canonical.href=location.origin" in core:
        failures.append("core.js still derives canonical origin from the visitor hostname")

    sample=ROOT/"growth-packs/sample/sample-growth-pack.xlsx"
    try:
        with zipfile.ZipFile(sample) as zf:
            names=set(zf.namelist())
            for required in ("[Content_Types].xml","xl/workbook.xml","xl/worksheets/sheet1.xml"):
                if required not in names:
                    failures.append(f"Growth Pack XLSX missing package part: {required}")
    except Exception as exc:
        failures.append(f"Growth Pack XLSX is not a readable Excel package: {exc}")

    if failures:
        print("Search/launch readiness validation failed:")
        for item in failures:
            print(" -",item)
        return 1

    print(f"Search/launch readiness passed: {len(services)} services represented and Growth Pack XLSX package is readable.")
    return 0

if __name__=="__main__":
    raise SystemExit(main())
