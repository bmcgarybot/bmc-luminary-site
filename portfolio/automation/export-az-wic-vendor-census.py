#!/usr/bin/env python3
"""
Export Arizona WIC authorized grocery/food retailers for BMC markets.

Official source:
https://www.azdhs.gov/documents/prevention/azwic/az-wic-vendor-list.pdf

The PDF is parsed with pdfplumber table extraction. Only rows with state=AZ and
cities matching configured BMC markets are written. Inventory-only census; no
outreach is staged or sent.
"""
from __future__ import annotations
import argparse, io, json, re, time, urllib.request
from collections import Counter
from pathlib import Path

PDF_URL="https://www.azdhs.gov/documents/prevention/azwic/az-wic-vendor-list.pdf"
SOURCE_PAGE="https://www.azdhs.gov/prevention/azwic/vendors/index.php"
USER_AGENT="Mozilla/5.0 (compatible; BMC-Service-Network-Assistant-Research/1.0; +https://bmcservicenetwork.com/)"

MARKETS={
"Ash Fork":{"ash fork"},"Bullhead City":{"bullhead city"},"Camp Verde":{"camp verde"},
"Chino Valley":{"chino valley"},"Cordes Lakes":{"cordes lakes"},"Cottonwood":{"cottonwood"},
"Dewey-Humboldt":{"dewey-humboldt","dewey","humboldt"},"Flagstaff":{"flagstaff"},
"Golden Valley":{"golden valley"},"Kingman":{"kingman"},"Mayer":{"mayer"},"Phoenix":{"phoenix"},
"Prescott":{"prescott"},"Prescott Valley":{"prescott valley"},"Scottsdale":{"scottsdale"},
"Sedona":{"sedona"},"Seligman":{"seligman"},"Skull Valley":{"skull valley"},"Tucson":{"tucson"},
"Williamson Valley":{"williamson valley"},"Winslow":{"winslow"},
}

def clean(v): return " ".join(str(v or "").replace("\n"," ").split()).strip()

def fetch():
    last=None
    for i in range(5):
        try:
            req=urllib.request.Request(PDF_URL,headers={"User-Agent":USER_AGENT,"Accept":"application/pdf,*/*"})
            with urllib.request.urlopen(req,timeout=180) as r: return r.read()
        except Exception as e:
            last=e
            if i<4: time.sleep(2*(i+1))
    raise last

def market_for(city):
    c=clean(city).casefold()
    for m,aliases in MARKETS.items():
        if c in aliases:return m
    return None

def parse_tables(pdf_bytes):
    import pdfplumber
    rows=[]
    with pdfplumber.open(io.BytesIO(pdf_bytes)) as pdf:
        for page in pdf.pages:
            tables=page.extract_tables({
                "vertical_strategy":"lines",
                "horizontal_strategy":"lines",
                "intersection_tolerance":5,
                "snap_tolerance":3,
            }) or []
            for table in tables:
                for r in table:
                    if not r or len(r)<6: continue
                    vals=[clean(x) for x in r[:6]]
                    if [x.lower() for x in vals[:6]]==["vendor name","address","city","state","zip","phone"]:
                        continue
                    if vals[0].lower()=="vendor name": continue
                    rows.append(vals)
    return rows

def main():
    ap=argparse.ArgumentParser()
    ap.add_argument("--date",required=True)
    ap.add_argument("--output-dir",type=Path,required=True)
    args=ap.parse_args(); args.output_dir.mkdir(parents=True,exist_ok=True)
    raw=fetch(); parsed=parse_tables(raw)
    if len(parsed)<300:
        raise RuntimeError(f"WIC PDF table extraction unexpectedly small: {len(parsed)} rows")

    records=[]; az_rows=0; other=0
    for vendor,address,city,state,zipcode,phone in parsed:
        if state.upper()!="AZ": continue
        az_rows+=1
        market=market_for(city)
        if not market:
            other+=1; continue
        if not vendor or not address: continue
        note=(
          "Arizona Department of Health Services WIC authorized-vendor government record"
          f" | address: {address}, {city}, AZ {zipcode}"
          " | authorization evidence is for Arizona WIC retail participation, not a general endorsement by ADHS"
        )
        records.append({
          "side":"buyer","market":market,"category_key":"grocery",
          "category_label":"Grocery Stores, Supermarkets & Food Retailers",
          "business_name":vendor,"url":SOURCE_PAGE,"domain":"azdhs.gov",
          "phone":phone or None,"email":None,"official":False,"official_registry":True,
          "verified_date":args.date,"address":address,"zip":zipcode or None,
          "wic_authorized_vendor":True,"source_distribution":PDF_URL,"note":note
        })
    seen=set(); ded=[]
    for r in sorted(records,key=lambda x:(x["market"],x["business_name"].casefold(),x["address"].casefold())):
        k=(r["market"],r["business_name"].casefold(),r["address"].casefold())
        if k in seen: continue
        seen.add(k); ded.append(r)
    if len(ded)<100:
        raise RuntimeError(f"WIC BMC-market export unexpectedly small: {len(ded)} from {az_rows} Arizona rows")
    by_market=dict(sorted(Counter(r["market"] for r in ded).items()))
    out=args.output_dir/f"assistant-research-bootstrap-{args.date}-az-wic-authorized-vendors-30.json"
    payload={
      "generated_at":args.date+"T23:59:00Z",
      "purpose":"Assistant-led BMC-market grocery/food-retail buyer census from the official Arizona WIC authorized-vendor list.",
      "safety":"Inventory seed only. Does not promote buyers/vendors and does not stage or send outreach.",
      "source":SOURCE_PAGE,"source_distribution":PDF_URL,
      "source_stats":{"parsed_pdf_rows":len(parsed),"arizona_vendor_rows":az_rows,"bmc_market_records":len(ded),"excluded_arizona_other_market":other,"by_market":by_market},
      "count":len(ded),"records":ded
    }
    out.write_text(json.dumps(payload,indent=2,ensure_ascii=False)+"\n",encoding="utf-8")
    print(json.dumps({"artifact":str(out),"count":len(ded),"parsed_pdf_rows":len(parsed),"arizona_vendor_rows":az_rows,"by_market":by_market},indent=2,sort_keys=True))

if __name__=="__main__": main()
