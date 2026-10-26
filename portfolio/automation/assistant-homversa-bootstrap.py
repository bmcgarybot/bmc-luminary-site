#!/usr/bin/env python3
"""
BMC assistant-curated Arizona licensed-trade bootstrap.

Public source: Homversa Arizona city/trade pages. Homversa states that its Arizona
trade pages are checked against Arizona Registrar of Contractors data. This
importer treats those pages as registry-derived corroboration, not as the
business's own direct website and not as a substitute for live ROC verification
before provider approval.

It never promotes providers, stages outreach, or sends messages.
"""
from __future__ import annotations

import argparse
from html.parser import HTMLParser
import json
from pathlib import Path
import re
import subprocess
import sys
import time
import urllib.parse
import urllib.request

BASE="https://homversa.com"
BOOTSTRAP_TAG="assistant_homversa_licensed_bootstrap_v1"

MARKETS={
  "Ash Fork":"ash-fork","Bullhead City":"bullhead-city","Camp Verde":"camp-verde",
  "Chino Valley":"chino-valley","Cordes Lakes":"cordes-lakes","Cottonwood":"cottonwood",
  "Dewey-Humboldt":"dewey-humboldt","Flagstaff":"flagstaff","Golden Valley":"golden-valley",
  "Kingman":"kingman","Mayer":"mayer","Phoenix":"phoenix","Prescott":"prescott",
  "Prescott Valley":"prescott-valley","Scottsdale":"scottsdale","Sedona":"sedona",
  "Seligman":"seligman","Skull Valley":"skull-valley","Tucson":"tucson",
  "Williamson Valley":"williamson-valley","Winslow":"winslow"
}

TRADE_MAP={
  "plumbers":("backflow_plumbing","Backflow & Commercial Plumbing"),
  "hvac":("hvac_heat","Heating & Air"),
  "electricians":("electrical_service","Electrician"),
  "landscaping":("landscaping","Landscaping & Yard Cleanup"),
  "septic":("rural_property","Septic, Grading & Wells"),
  "well-drilling":("rural_property","Septic, Grading & Wells"),
  "pool-contractors":("pool_desert_property","Pool & Outdoor Property Care"),
  "pools":("pool_desert_property","Pool & Outdoor Property Care"),
  "roofers":("facility_maintenance","Building Maintenance Help"),
  "painters":("facility_maintenance","Building Maintenance Help"),
  "concrete-contractors":("epoxy_flooring","Epoxy & Concrete Floors"),
  "tile-contractors":("facility_maintenance","Building Maintenance Help"),
  "flooring-contractors":("facility_maintenance","Building Maintenance Help"),
  "drywall-contractors":("facility_maintenance","Building Maintenance Help"),
  "glass-glazing-contractors":("facility_maintenance","Building Maintenance Help"),
  "cabinet-carpentry-contractors":("facility_maintenance","Building Maintenance Help"),
  "stucco-plastering-contractors":("facility_maintenance","Building Maintenance Help"),
  "fence-contractors":("facility_maintenance","Building Maintenance Help"),
  "general-contractors":("facility_maintenance","Building Maintenance Help"),
  "water-damage":("facility_maintenance","Building Maintenance Help")
}

TRADE_LINK_RE=re.compile(r"^/az/([a-z0-9-]+)/([a-z0-9-]+)/?$",re.I)
ROC_RE=re.compile(r"ROC(?:\s+License)?\s*#?\s*(\d{5,8})",re.I)
REST_ROC_RE=re.compile(r"^(.{2,180}?)\s*-\s*ROC\s*#(\d{5,8})\s*$",re.I)
DATE_RE=re.compile(r"(?:Checked as of|Verified)\s+([A-Z][a-z]+\s+\d{1,2},\s+20\d{2})",re.I)

class Tokens(HTMLParser):
    def __init__(self):
        super().__init__(convert_charrefs=True)
        self.tokens=[]
        self.links=[]
        self.href=None
        self.anchor=[]
    def handle_starttag(self,tag,attrs):
        if tag.lower()=="a":
            self.href=dict(attrs).get("href")
            self.anchor=[]
    def handle_data(self,data):
        t=" ".join(str(data or "").split())
        if not t:
            return
        self.tokens.append(t)
        if self.href is not None:
            self.anchor.append(t)
    def handle_endtag(self,tag):
        if tag.lower()=="a" and self.href is not None:
            self.links.append((self.href," ".join(self.anchor).strip()))
            self.href=None; self.anchor=[]

def fetch(url,timeout=35):
    req=urllib.request.Request(url,headers={
      "User-Agent":"BMC-Service-Network-Research/1.0 (+https://bmcservicenetwork.com)",
      "Accept":"text/html,application/xhtml+xml"
    })
    with urllib.request.urlopen(req,timeout=timeout) as resp:
        return resp.read(5_000_000).decode("utf-8","replace")

def discover_trades(page_html,slug):
    p=Tokens(); p.feed(page_html); p.close()
    out=[]
    for href,label in p.links:
        parsed=urllib.parse.urlparse(href)
        if parsed.scheme or parsed.netloc:
            host=(parsed.hostname or "").lower().removeprefix("www.")
            if host!="homversa.com":
                continue
            path=parsed.path
        else:
            path=href.split("?",1)[0].split("#",1)[0]
        m=TRADE_LINK_RE.match(path or "")
        if not m or m.group(1).lower()!=slug.lower():
            continue
        trade=m.group(2).lower()
        if trade in TRADE_MAP and trade not in [x[0] for x in out]:
            out.append((trade,urllib.parse.urljoin(BASE,path),label))
    return out

def parse_trade_page(page_html,market,trade):
    p=Tokens(); p.feed(page_html); p.close()
    tokens=p.tokens
    joined="\n".join(tokens)
    verified_date=(DATE_RE.search(joined).group(1) if DATE_RE.search(joined) else None)
    claimed=None
    cm=re.search(r"(\d+)\s+(?:active ROC .*? licenses|verified companies|.*?companies registered in "+re.escape(market)+r")",joined,re.I)
    if cm:
        try: claimed=int(cm.group(1))
        except ValueError: claimed=None

    rows=[]
    seen=set()

    # Ranked entries: a numeric rank token followed by a company name; scan the
    # next small block for its ROC number.
    for i,t in enumerate(tokens):
        m=re.match(r"^(\d+)\.\s*(.*)$",t)
        if not m:
            continue
        rest=m.group(2).strip()
        if rest:
            name=rest
            start=i+1
        elif i+1<len(tokens):
            name=tokens[i+1].strip()
            start=i+2
        else:
            continue
        if not name or len(name)>180 or name.lower().startswith(("how ","which ","why ")):
            continue
        block=" ".join(tokens[start:min(len(tokens),start+22)])
        rm=ROC_RE.search(block)
        if not rm:
            continue
        key=(name.lower(),rm.group(1))
        if key in seen: continue
        seen.add(key)
        rows.append({"business_name":name,"roc_license":rm.group(1)})

    # The page also prints every non-ranked verified company as
    # "Business Name - ROC #123456".
    for t in tokens:
        m=REST_ROC_RE.match(t)
        if not m:
            continue
        name=m.group(1).strip(" -*")
        roc=m.group(2)
        key=(name.lower(),roc)
        if not name or key in seen:
            continue
        seen.add(key)
        rows.append({"business_name":name,"roc_license":roc})

    return {
      "records":rows,
      "verified_date":verified_date,
      "claimed_count":claimed,
      "market":market,
      "trade":trade
    }

def env_values(path):
    out={}
    for raw in Path(path).read_text(errors="replace").splitlines():
        line=raw.strip()
        if not line or line.startswith("#") or "=" not in line: continue
        k,v=line.split("=",1); out[k.strip()]=v.strip().strip('"').strip("'")
    return out

def esc(v):
    return str(v or "").replace("'","''")

def main():
    ap=argparse.ArgumentParser()
    ap.add_argument("env_file",nargs="?",default=".env")
    ap.add_argument("--markets",default="")
    ap.add_argument("--delay",type=float,default=0.35)
    ap.add_argument("--dry-run",action="store_true")
    args=ap.parse_args()

    selected=set(x.strip() for x in args.markets.split(",") if x.strip())
    unknown=selected-set(MARKETS)
    if unknown:
        raise SystemExit("Unknown markets: "+", ".join(sorted(unknown)))
    markets=[(m,s) for m,s in MARKETS.items() if not selected or m in selected]

    records=[]
    stats={"markets":len(markets),"trade_pages":0,"records":0,"errors":[],"by_market":{}}
    for market,slug in markets:
        mstat={"trades":0,"records":0,"claimed":0}
        stats["by_market"][market]=mstat
        try:
            root=fetch(f"{BASE}/az/{slug}")
            trades=discover_trades(root,slug)
        except Exception as exc:
            stats["errors"].append({"market":market,"stage":"root","error":str(exc)[:220]})
            continue
        for trade,url,label in trades:
            try:
                page=fetch(url)
                parsed=parse_trade_page(page,market,trade)
                category_key,category_label=TRADE_MAP[trade]
                stats["trade_pages"]+=1; mstat["trades"]+=1
                mstat["claimed"]+=int(parsed["claimed_count"] or 0)
                for row in parsed["records"]:
                    records.append({
                      "market":market,"trade":trade,"category_key":category_key,
                      "category_label":category_label,"business_name":row["business_name"],
                      "roc_license":row["roc_license"],"source_url":url,
                      "verified_date":parsed["verified_date"],
                      "claimed_count":parsed["claimed_count"]
                    })
                    stats["records"]+=1; mstat["records"]+=1
            except Exception as exc:
                stats["errors"].append({"market":market,"trade":trade,"error":str(exc)[:220]})
            if args.delay>0: time.sleep(args.delay)

    # Deduplicate the same license in the same market/category.
    dedup={}
    for r in records:
        dedup[(r["market"],r["category_key"],r["roc_license"],r["business_name"].lower())]=r
    records=list(dedup.values())
    stats["records_deduped"]=len(records)
    print(json.dumps(stats,indent=2))

    if args.dry_run:
        print(json.dumps(records[:50],indent=2))
        return

    env=env_values(args.env_file)
    dbuser=env.get("POSTGRES_USER","")
    dbname=env.get("POSTGRES_DB","")
    if not dbuser or not dbname:
        raise SystemExit("POSTGRES_USER/POSTGRES_DB missing from env")

    sql=["begin;"]
    for r in records:
        evidence={
          "bootstrap_source":BOOTSTRAP_TAG,
          "source_quality":"registry_derived_secondary",
          "verification_status":"credential_corroborated",
          "roc_license":r["roc_license"],
          "source_verified_date":r["verified_date"],
          "source_claimed_market_trade_count":r["claimed_count"],
          "trade":r["trade"],
          "researched_by":"assistant_curated_licensed_source"
        }
        snippet=f'ROC #{r["roc_license"]} | registry-derived public listing'
        sql.append(f"""insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence,
 first_seen_at,last_seen_at
) values (
 'vendor','{esc(r["market"])}','{esc(r["category_key"])}','{esc(r["category_label"])}',
 '{esc(r["business_name"])}','{esc(r["source_url"])}','homversa.com',
 '{esc(snippet)}','assistant licensed bootstrap: {esc(r["market"])} {esc(r["trade"])}',0,
 null,null,false,'registry_derived','credential_corroborated',
 {("'"+esc(r["verified_date"])+"'::date") if r["verified_date"] else "null"},
 'discovered',7,'{esc(json.dumps(evidence,separators=(",",":")))}'::jsonb,now(),now()
)
on conflict(side,market,category_key,source_url,business_name) do update set
 snippet=excluded.snippet,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status='discovered',
 last_seen_at=now(),
 closure_reason=null,
 closed_at=null,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();""")
    sql.append("commit;")
    cp=subprocess.run(
      ["docker","compose","--env-file",args.env_file,"exec","-T","postgres",
       "psql","-v","ON_ERROR_STOP=1","-U",dbuser,"-d",dbname],
      input="\n".join(sql),text=True,stdout=subprocess.PIPE,stderr=subprocess.PIPE
    )
    if cp.returncode!=0:
        print(cp.stdout)
        print(cp.stderr,file=sys.stderr)
        raise SystemExit(cp.returncode)
    print(f"Inserted/updated {len(records)} licensed discovery candidates.")
    print(cp.stdout[-3000:])

if __name__=="__main__":
    main()
