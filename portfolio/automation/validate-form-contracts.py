#!/usr/bin/env python3
from __future__ import annotations
import re
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]
FORM_RE=re.compile(r'<form\b[^>]*data-bmc-form[^>]*data-form-type="([^"]+)"[^>]*>([\s\S]*?)</form>',re.I)
NAME_RE=re.compile(r'\bname="([^"]+)"',re.I)

SPECIAL={
  "universal_request":{"scope","market","consent"},
  "facility_maintenance":{"scope","market","consent"},
  "vendor_partner":{"business_name","market","pilot_terms"},
  "vendor_pilot_activation":{"vendor_id","pilot_terms"},
  "vendor_response":{"lead_id","vendor_id","token","response"},
  "job_update":{"lead_id","vendor_id","token","job_status"},
}

def main()->int:
    failures=[]
    forms=0
    for path in ROOT.rglob("*.html"):
        text=path.read_text(errors="ignore")
        for form_type,body in FORM_RE.findall(text):
            forms+=1
            names=set(NAME_RE.findall(body))
            required=SPECIAL.get(form_type,{"market","consent"})
            missing=sorted(required-names)
            if missing:
                failures.append(f"{path.relative_to(ROOT)} [{form_type}] missing {', '.join(missing)}")
            if form_type=="facility_maintenance" and not any(n.startswith("need_") for n in names):
                failures.append(f"{path.relative_to(ROOT)} [facility_maintenance] has no need_* service choices")
            if form_type not in ("vendor_response","job_update","vendor_pilot_activation","vendor_partner") and "scope" not in names:
                failures.append(f"{path.relative_to(ROOT)} [{form_type}] missing scope/details field")
    if failures:
        print("Form contract validation failed:")
        for item in failures:
            print(" -",item)
        return 1
    print(f"Validated {forms} public form contracts.")
    return 0

if __name__=="__main__":
    raise SystemExit(main())
