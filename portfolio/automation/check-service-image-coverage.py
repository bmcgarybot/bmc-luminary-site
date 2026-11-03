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
invalid=sorted(k for k,url in assigned.items() if k in wanted and not (url.startswith("https://") or (url.startswith("/assets/images/") and (ROOT/url.lstrip("/")).is_file())))
unused=sorted(set(assigned)-wanted)
assert not missing, "No dedicated photo for: "+", ".join(missing)
assert not invalid, "Invalid photo source: "+", ".join(invalid)
assert not unused, "Stale photo map keys: "+", ".join(unused)
print(f"PASS: {len(wanted)} service categories have assigned search-card images")

catalog=json.loads((ROOT/"data/service-images.json").read_text())
assert catalog==json.loads((ROOT/"automation/api/service_images.json").read_text()), "VPS image catalog differs"
assert {key:value["src"] for key,value in catalog["services"].items()}==assigned, "Image catalog differs from search cards"
