#!/usr/bin/env python3
"""
BMC assistant-curated statewide discovery bootstrap.

This is intentionally a DISCOVERY importer, not a verification or outreach tool.
It fetches public city/category directory pages selected by ChatGPT, extracts
business names/address/phone/company-page URLs, classifies them into BMC lanes,
and upserts them into market_inventory_candidates as discovery-only evidence.

It never:
- creates/approves a live provider;
- promotes a buyer/vendor into the base tables;
- stages or sends outreach;
- bypasses authentication or private pages.

Usage:
  python3 assistant-directory-bootstrap.py .env
  python3 assistant-directory-bootstrap.py .env --markets "Kingman,Winslow"
  python3 assistant-directory-bootstrap.py .env --max-per-feed 100 --delay 0.4
"""
from __future__ import annotations

import argparse
import html
from html.parser import HTMLParser
import json
from pathlib import Path
import re
import subprocess
import sys
import tempfile
import time
import urllib.parse
import urllib.request

BASE="https://www.whereorg.com"
BOOTSTRAP_TAG="assistant_curated_whereorg_bootstrap_v1"

MARKETS={
  "Ash Fork":"ash-fork",
  "Bullhead City":"bullhead-city",
  "Camp Verde":"camp-verde",
  "Chino Valley":"chino-valley",
  "Cordes Lakes":"cordes-lakes",
  "Cottonwood":"cottonwood",
  "Dewey-Humboldt":"dewey-humboldt",
  "Flagstaff":"flagstaff",
  "Golden Valley":"golden-valley",
  "Kingman":"kingman",
  "Mayer":"mayer",
  "Phoenix":"phoenix",
  "Prescott":"prescott",
  "Prescott Valley":"prescott-valley",
  "Scottsdale":"scottsdale",
  "Sedona":"sedona",
  "Seligman":"seligman",
  "Skull Valley":"skull-valley",
  "Tucson":"tucson",
  "Williamson Valley":"williamson-valley",
  "Winslow":"winslow",
}

# Curated public directory feeds. These are discovery sources only.
FEEDS=(
  ("restaurants-and-bars","buyer","restaurants","restaurants"),
  ("educational-services","buyer","schools","schools charter schools private schools"),
  ("healthcare","dynamic","healthcare","healthcare"),
  ("shopping","dynamic","shopping","retail stores shopping stores"),
  ("government","buyer","public_facilities","government public facilities municipal buildings"),
  ("housing","dynamic","housing","housing senior living property management"),
  ("insurance","buyer","insurance_professional","insurance agents professional offices"),
  ("automotive-services","dynamic","automotive","automotive services"),
  ("construction","dynamic","construction","construction contractors"),
  ("electrical","vendor","electrical_service","Electrician"),
  ("consumer-services","dynamic","consumer_services","consumer services"),
  ("environmental-services","dynamic","environmental_services","environmental services"),
)

PHONE_RE=re.compile(r"(?<!\d)(?:\+?1[\s.\-]?)?(?:\(\d{3}\)|\d{3})[\s.\-]\d{3}[\s.\-]\d{4}(?!\d)")
COMPANY_HREF_RE=re.compile(r"^/[a-z0-9][a-z0-9\-]*-\d+/?$",re.I)

class ListingParser(HTMLParser):
    def __init__(self, market:str):
        super().__init__(convert_charrefs=True)
        self.market=market
        self.anchor_href=None
        self.anchor_text=[]
        self.current=None
        self.rows=[]
        self.stopped=False

    def handle_starttag(self, tag, attrs):
        if self.stopped:
            return
        if tag.lower()=="a":
            self.anchor_href=dict(attrs).get("href")
            self.anchor_text=[]

    def handle_data(self, data):
        if self.stopped:
            return
        text=" ".join(str(data or "").split())
        if not text:
            return
        if text.startswith("Whereorg has ") or text.startswith("Narrow down the browsing criteria"):
            self._flush()
            self.stopped=True
            return
        if self.anchor_href is not None:
            self.anchor_text.append(text)
        elif self.current is not None:
            self.current["tail"].append(text)

    def handle_endtag(self, tag):
        if self.stopped:
            return
        if tag.lower()=="a" and self.anchor_href is not None:
            href=str(self.anchor_href or "").strip()
            name=" ".join(self.anchor_text).strip()
            self.anchor_href=None
            self.anchor_text=[]
            if COMPANY_HREF_RE.match(href) and name and len(name)<=240:
                self._flush()
                self.current={"name":name,"href":href,"tail":[]}

    def close(self):
        super().close()
        self._flush()

    def _flush(self):
        if not self.current:
            return
        name=self.current["name"].strip()
        tail=[x.strip() for x in self.current["tail"] if x.strip()]
        self.current=None
        if not name or name.lower() in {"add a company","sign in","rate this page"}:
            return
        # Require the requested market to appear in listing text so similarly
        # named regional pages cannot silently contaminate another market.
        blob=" | ".join(tail[:14])
        market_re=re.compile(r"\b"+re.escape(self.market)+r"\b",re.I)
        if not market_re.search(blob):
            return
        phone=None
        m=PHONE_RE.search(blob)
        if m:
            phone=m.group(0)
        address_parts=[]
        for item in tail[:10]:
            if PHONE_RE.search(item):
                continue
            if item.startswith("*") or item.lower().startswith("not satisfied"):
                continue
            address_parts.append(item)
            if market_re.search(item):
                break
        address=", ".join(address_parts[:4])[:500]
        self.rows.append({
          "business_name":name,
          "company_href":self.current_href if False else "",
          "href":self._last_href if False else "",
          "source_href":None,
          "phone":phone,
          "address":address,
          "_href_pending":False,
        })
        # _flush is called after the qualifying anchor was already saved in the
        # current dict, so restore it from the temporary row context below.
        self.rows[-1]["source_href"]=getattr(self,"_flush_href",None)

def parse_listing(page_html:str,market:str):
    # Simpler event parser that keeps each qualifying company href with the
    # following visible text until the next qualifying company.
    class P(HTMLParser):
        def __init__(self):
            super().__init__(convert_charrefs=True)
            self.a_href=None; self.a_text=[]; self.current=None; self.rows=[]; self.stop=False
        def handle_starttag(self,tag,attrs):
            if self.stop:return
            if tag.lower()=="a":
                self.a_href=dict(attrs).get("href"); self.a_text=[]
        def handle_data(self,data):
            if self.stop:return
            t=" ".join(str(data or "").split())
            if not t:return
            if t.startswith("Whereorg has ") or t.startswith("Narrow down the browsing criteria"):
                self.flush(); self.stop=True; return
            if self.a_href is not None:self.a_text.append(t)
            elif self.current is not None:self.current["tail"].append(t)
        def handle_endtag(self,tag):
            if self.stop:return
            if tag.lower()=="a" and self.a_href is not None:
                href=str(self.a_href or "").strip()
                name=" ".join(self.a_text).strip()
                self.a_href=None; self.a_text=[]
                if COMPANY_HREF_RE.match(href) and name and len(name)<=240:
                    self.flush()
                    self.current={"name":name,"href":href,"tail":[]}
        def flush(self):
            if not self.current:return
            row=self.current; self.current=None
            blob=" | ".join(row["tail"][:16])
            if not re.search(r"\b"+re.escape(market)+r"\b",blob,re.I):return
            pm=PHONE_RE.search(blob)
            address=[]
            for item in row["tail"][:10]:
                if PHONE_RE.search(item):continue
                if item.startswith("*") or item.lower().startswith("not satisfied"):continue
                address.append(item)
                if re.search(r"\b"+re.escape(market)+r"\b",item,re.I):break
            self.rows.append({
              "business_name":row["name"],
              "href":row["href"],
              "phone":pm.group(0) if pm else None,
              "address":", ".join(address[:4])[:500],
            })
        def close(self):
            super().close(); self.flush()
    p=P(); p.feed(page_html); p.close(); return p.rows

def classify(feed_key:str,name:str):
    n=name.lower()

    if feed_key=="restaurants-and-bars":
        return ("buyer","restaurants","restaurants")
    if feed_key=="educational-services":
        if any(x in n for x in ("school","academy","college","university","montessori","preschool","learning","education","child development")):
            return ("buyer","schools","schools charter schools private schools")
        return None
    if feed_key=="healthcare":
        if any(x in n for x in ("dental","dentist","orthodont","periodont","endodont")):
            return ("buyer","dental","dentists dental offices orthodontists")
        if any(x in n for x in ("therapy","therapist","counsel","behavior","mental","psych","recovery","rehab")):
            return ("buyer","therapy_behavioral","therapy counseling behavioral health clinics")
        if any(x in n for x in ("assisted","senior","nursing","hospice","home health","adult care","retirement")):
            return ("buyer","senior_daycare","senior living assisted living daycare childcare")
        return ("buyer","medical_centers","hospitals medical centers clinics")
    if feed_key=="shopping":
        if any(x in n for x in ("pharmacy","drug","walgreens","cvs")):
            return ("buyer","pharmacies","pharmacies drug stores")
        if any(x in n for x in ("grocery","market","supermarket","foods","food store")):
            return ("buyer","grocery","grocery stores supermarkets markets")
        return ("buyer","retail","retail stores shopping stores")
    if feed_key=="government":
        return ("buyer","public_facilities","government public facilities municipal buildings")
    if feed_key=="housing":
        if any(x in n for x in ("assisted","senior","retirement","adult care","nursing","guest home")):
            return ("buyer","senior_daycare","senior living assisted living daycare childcare")
        if any(x in n for x in ("apartment","apartments","property","properties","housing","rental","rentals","community")):
            return ("buyer","property_management","property management companies apartment communities")
        return None
    if feed_key=="insurance":
        return ("buyer","insurance_professional","insurance agents professional offices")
    if feed_key=="electrical":
        return ("vendor","electrical_service","Electrician")
    if feed_key=="automotive-services":
        if any(x in n for x in ("gas","fuel","shell","chevron","texaco","travel stop","truck stop","car rental")):
            return None
        if any(x in n for x in ("towing","tow ","tow&","wrecker","recovery")):
            return ("vendor","towing_roadside","Towing & Roadside Help")
        if any(x in n for x in ("tire","battery")):
            return ("vendor","mobile_tire_battery","Mobile Tire & Battery")
        if any(x in n for x in ("glass","windshield")):
            return ("vendor","auto_glass","Windshield & Auto Glass")
        if any(x in n for x in ("detail","car wash","truck wash")):
            return ("vendor","mobile_detailing","Mobile Detailing")
        if any(x in n for x in ("sales","dealer","ford","toyota","honda","hyundai","chevrolet","motors")) and not any(x in n for x in ("repair","service")):
            return ("buyer","auto_dealers","auto dealers car dealerships")
        return ("vendor","auto_repair_shop","Auto Repair Shop")
    if feed_key=="construction":
        if "electric" in n:
            return ("vendor","electrical_service","Electrician")
        if any(x in n for x in ("plumb","backflow")):
            return ("vendor","backflow_plumbing","Backflow & Commercial Plumbing")
        if any(x in n for x in ("septic","well ","grading","excavat")):
            return ("vendor","rural_property","Septic, Grading & Wells")
        if any(x in n for x in ("hvac","heating","cooling","air conditioning","refriger")):
            return ("vendor","hvac_heat","Heating & Air")
        if any(x in n for x in ("landscap","lawn","yard")):
            return ("vendor","landscaping","Landscaping & Yard Cleanup")
        if any(x in n for x in ("tree","arbor")):
            return ("vendor","tree_service","Tree Service & Brush Clearing")
        if any(x in n for x in ("garage door",)):
            return ("vendor","garage_door","Garage Door Repair")
        if any(x in n for x in ("concrete","epoxy","flooring","floor")):
            return ("vendor","epoxy_flooring","Epoxy & Concrete Floors")
        if any(x in n for x in ("parking","striping","asphalt","paving")):
            return ("vendor","parking_lot","Parking Lot Cleaning & Striping")
        return ("vendor","facility_maintenance","Building Maintenance Help")
    if feed_key=="consumer-services":
        if any(x in n for x in ("daycare","day care","preschool","child care","childcare")):
            return ("buyer","senior_daycare","senior living assisted living daycare childcare")
        if any(x in n for x in ("janitor","commercial clean")):
            return ("vendor","commercial_cleaning","Commercial Cleaning")
        if any(x in n for x in ("maid","house clean","cleaning service","cleaners")):
            return ("vendor","residential_cleaning","House Cleaning")
        if any(x in n for x in ("carpet","floor clean")):
            return ("vendor","floor_carpet","Floor & Carpet Cleaning")
        if "window" in n:
            return ("vendor","window_cleaning","Window Cleaning")
        if any(x in n for x in ("pest","extermin")):
            return ("vendor","pest_control","Pest Control")
        if any(x in n for x in ("lock","locksmith")):
            return ("vendor","locksmith_access","Locks & Access Control")
        if "handyman" in n:
            return ("vendor","handyman_repairs","Handyman")
        if any(x in n for x in ("laundry","linen","laundromat")):
            return ("vendor","linen_laundry","Linen & Laundry Service")
        if any(x in n for x in ("junk","hauling","haul away")):
            return ("vendor","junk_hauling","Junk Removal")
        if any(x in n for x in ("pet sitting","dog walk")):
            return ("vendor","pet_sitting","Pet Sitting & Dog Walking")
        if "groom" in n:
            return ("vendor","mobile_pet_grooming","Mobile Pet Grooming")
        return None
    if feed_key=="environmental-services":
        if any(x in n for x in ("waste","trash","garbage","recycling","disposal")):
            return ("vendor","junk_hauling","Junk Removal")
        if any(x in n for x in ("septic","drain")):
            return ("vendor","grease_drain","Grease Trap & Drain Cleaning")
        return None
    return None

def env_values(path:Path):
    out={}
    for raw in path.read_text(errors="replace").splitlines():
        line=raw.strip()
        if not line or line.startswith("#") or "=" not in line:continue
        k,v=line.split("=",1); out[k.strip()]=v.strip().strip('"').strip("'")
    return out

def fetch(url:str,timeout:int=30):
    req=urllib.request.Request(url,headers={
      "User-Agent":"BMC-Service-Network-Research/1.0 (+https://bmcservicenetwork.com)",
      "Accept":"text/html,application/xhtml+xml",
    })
    with urllib.request.urlopen(req,timeout=timeout) as resp:
        return resp.read(4_000_000).decode("utf-8","replace")

def esc(v):
    return str(v or "").replace("'","''")

def main():
    ap=argparse.ArgumentParser()
    ap.add_argument("env_file",nargs="?",default=".env")
    ap.add_argument("--markets",default="")
    ap.add_argument("--max-per-feed",type=int,default=100)
    ap.add_argument("--delay",type=float,default=0.4)
    ap.add_argument("--dry-run",action="store_true")
    args=ap.parse_args()

    selected=set(x.strip() for x in args.markets.split(",") if x.strip())
    markets=[(m,s) for m,s in MARKETS.items() if not selected or m in selected]
    unknown=selected-set(MARKETS)
    if unknown:
        raise SystemExit("Unknown markets: "+", ".join(sorted(unknown)))

    records=[]
    stats={"markets":len(markets),"feeds_attempted":0,"feeds_ok":0,"feeds_failed":0,
           "raw_companies":0,"classified":0,"by_market":{},"errors":[]}
    seen=set()

    for market,slug in markets:
        mstat={"feeds":0,"raw":0,"classified":0}
        stats["by_market"][market]=mstat
        for feed_key,_,_,_ in FEEDS:
            url=f"{BASE}/businesses/{feed_key}-in-{slug}-az"
            stats["feeds_attempted"]+=1
            try:
                page=fetch(url)
                rows=parse_listing(page,market)[:max(1,args.max_per_feed)]
                stats["feeds_ok"]+=1
                mstat["feeds"]+=1
                stats["raw_companies"]+=len(rows); mstat["raw"]+=len(rows)
                for row in rows:
                    c=classify(feed_key,row["business_name"])
                    if not c:continue
                    side,category_key,category_label=c
                    source_url=urllib.parse.urljoin(BASE,row["href"])
                    key=(side,market,category_key,source_url,row["business_name"].lower())
                    if key in seen:continue
                    seen.add(key)
                    records.append({
                      "side":side,"market":market,"category_key":category_key,
                      "category_label":category_label,"business_name":row["business_name"],
                      "source_url":source_url,"source_domain":"whereorg.com",
                      "public_phone":row.get("phone"),"address":row.get("address"),
                      "feed_url":url,"feed_key":feed_key,
                    })
                    mstat["classified"]+=1; stats["classified"]+=1
            except Exception as exc:
                stats["feeds_failed"]+=1
                stats["errors"].append({"market":market,"feed":feed_key,"error":str(exc)[:220]})
            if args.delay>0:time.sleep(args.delay)

    print(json.dumps(stats,indent=2))
    if args.dry_run:
        print(json.dumps(records[:25],indent=2))
        return

    env=env_values(Path(args.env_file))
    dbuser=env.get("POSTGRES_USER","")
    dbname=env.get("POSTGRES_DB","")
    if not dbuser or not dbname:
        raise SystemExit("POSTGRES_USER/POSTGRES_DB missing from env")

    sql=["begin;"]
    for r in records:
        evidence={
          "bootstrap_source":BOOTSTRAP_TAG,
          "source_quality":"directory_discovery",
          "verification_status":"needs_followup_verification",
          "directory_feed":r["feed_url"],
          "directory_category":r["feed_key"],
          "address":r["address"],
          "researched_by":"assistant_curated_source_family",
        }
        sql.append(f"""insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 '{esc(r["side"])}','{esc(r["market"])}','{esc(r["category_key"])}','{esc(r["category_label"])}',
 '{esc(r["business_name"])}','{esc(r["source_url"])}','whereorg.com',
 '{esc((r["address"] or "")+" | directory discovery")}',
 'assistant curated directory bootstrap: {esc(r["market"])} {esc(r["feed_key"])}',0,
 null,{("'"+esc(r["public_phone"])+"'") if r["public_phone"] else "null"},false,
 'directory','discovery',null,'discovered',7,
 '{esc(json.dumps(evidence,separators=(",",":")))}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 snippet=excluded.snippet,
 status='discovered',
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();""")
    sql.append("commit;")
    payload="\n".join(sql)
    cp=subprocess.run(
      ["docker","compose","--env-file",str(args.env_file),"exec","-T","postgres",
       "psql","-v","ON_ERROR_STOP=1","-U",dbuser,"-d",dbname],
      input=payload,text=True,stdout=subprocess.PIPE,stderr=subprocess.PIPE
    )
    if cp.returncode!=0:
        print(cp.stdout)
        print(cp.stderr,file=sys.stderr)
        raise SystemExit(cp.returncode)
    print(f"Inserted/updated {len(records)} discovery candidates.")
    print(cp.stdout[-3000:])

if __name__=="__main__":
    main()
