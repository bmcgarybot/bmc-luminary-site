#!/usr/bin/env python3
"""Prevent BMC service-search cards from falling back to generic photography.

A mechanical check cannot judge subject relevance; owner screenshot review is
still required. This guards only category coverage and usable source syntax.
"""
import json
import re
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]
registry=json.loads((ROOT/"data/services.json").read_text())["services"]
finder=(ROOT/"assets/service-finder.js").read_text()
segment=finder.split("const images={",1)[1].split("\n  };",1)[0]
assigned=dict(re.findall(r'^\s*([a-z_]+):"([^"]+)"',segment,re.M))
wanted={item["service_key"] for item in registry}
missing=sorted(wanted-set(assigned))
invalid=sorted(k for k,url in assigned.items() if k in wanted and not url.startswith("https://"))
unused=sorted(set(assigned)-wanted)
assert not missing, "No dedicated photo for: "+", ".join(missing)
assert not invalid, "Invalid photo source: "+", ".join(invalid)
assert not unused, "Stale photo map keys: "+", ".join(unused)
print(f"PASS: {len(wanted)} service categories have assigned search-card images")
