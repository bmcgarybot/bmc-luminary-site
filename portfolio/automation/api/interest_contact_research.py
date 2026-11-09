"""Source-bound public business contact discovery for the held interest-first campaign.

Independent of accepted-provider review, paid lead qualification, and outreach. Uses
bounded HTTPS GETs on published business pages only, with no API spend or messages.
Research is stored separately from immutable original inventory records.
"""
import asyncio
import re
from datetime import datetime, timezone
from urllib.parse import urlsplit

from contact_enrichment import _ContactPage, DESIGNER, PHONE
from interest_first import email_valid
from official_research import Page, allowed_url, contact_links, fetch_page_receipt, host, identity_matches

CAMPAIGN = "growth_interest_first"
BATCH_LIMIT = 4
BLOCKED_PATHS = re.compile(
    r"/(?:search|results|directory|listing|listings|blog|news|article|articles|jobs|careers|"
    r"admin|account|login|logout|unsubscribe|checkout|payment|privacy|terms)(?:/|$)", re.I)
CONTACT_STATUS = {"ready", "needs_review", "no_public_mailbox", "fetch_failed"}

CANDIDATE_SQL = """
with candidates as (
 select c.candidate_id,c.business_name,c.market,c.category_key,c.source_url,
   c.source_domain,c.public_phone,c.last_verified_at,
   row_number() over (partition by lower(c.source_domain)
     order by case when c.public_phone is not null then 0 else 1 end,
       c.last_verified_at desc nulls last,c.candidate_id) as domain_position
 from market_inventory_candidates c
 left join interest_first_contact_research r on r.candidate_id=c.candidate_id
 where c.side='vendor' and c.status='discovered' and c.closed_at is null
   and c.official_site=true and c.source_tier='direct'
   and coalesce(c.public_email,'')='' and coalesce(c.business_name,'')<>''
   and coalesce(c.source_domain,'')<>'' and c.source_url like 'https://%'
   and (r.candidate_id is null or
        (r.next_attempt_at < now() and r.attempts < 3))
   and not exists(select 1 from growth_outreach_targets g
     where lower(g.business_name)=lower(c.business_name) and g.market=c.market
       and g.service_key=c.category_key)
)
select candidate_id,business_name,market,category_key,source_url,source_domain,
       public_phone from candidates
where domain_position=1
order by last_verified_at desc nulls last,candidate_id
limit $1
"""

def start_url(row):
    url=str(row.get("source_url") or "").strip()
    domain=str(row.get("source_domain") or "").lower().removeprefix("www.")
    if not allowed_url(url) or host(url)!=domain:
        return ""
    path=urlsplit(url)
    if path.query or path.fragment or len(path.path)>160 or BLOCKED_PATHS.search(path.path):
        return ""
    return url

def digits(value):
    return re.sub(r"\D", "", str(value or ""))[-10:]

def contains_market(text,market):
    place=" ".join(re.findall(r"[a-z0-9]+",str(market or "").lower()))
    hay=" ".join(re.findall(r"[a-z0-9]+",str(text or "").lower()))
    if not place or not hay:return False
    if place=="prescott":
        return bool(re.search(r"\bprescott\b(?!\s+valley\b)",hay))
    return " "+place+" " in " "+hay+" "

def mailboxes(document):
    parsed=_ContactPage()
    parsed.feed(document)
    choices=set()
    for email,kind,frame in parsed.mail:
        if not email_valid(email):continue
        # Skip mailboxes appearing in developer/site-builder attribution.
        frame_text=" ".join(frame["text"])
        if DESIGNER.search(frame_text) or DESIGNER.search(str(frame["attrs"])):
            continue
        choices.add(email.lower())
    return sorted(choices),parsed

def choose_email(addresses,site_host,identity_proven):
    if not identity_proven or not addresses:return None
    matching=[email for email in addresses if email.rsplit("@",1)[-1]==site_host or
              site_host.endswith("."+email.rsplit("@",1)[-1])]
    if len(matching)==1:return matching[0]
    if len(matching)>1:
        generic=[v for v in matching if v.split("@",1)[0] in
                 {"hello","info","contact","office","admin","sales","service"}]
        return generic[0] if len(generic)==1 else None
    # Single external mailbox (such as Gmail) is credible only when independently
    # associated with the company and exact market on its own public website.
    return addresses[0] if len(addresses)==1 else None

async def inspect_public_contact(row,fetch=fetch_page_receipt):
    url=start_url(row)
    if not url:return {"status":"needs_review","reason":"source_not_safe_direct"}
    page_receipts=[]
    src_host=host(url)
    try:
        primary=await asyncio.wait_for(asyncio.to_thread(fetch,url),25)
        if (host(primary.final_url)!=src_host or
           any(host(h)!=src_host for h in primary.redirect_chain)):
            return {"status":"needs_review","reason":"unexpected_redirect"}
        page_receipts.append(primary)
        observed=contact_links(primary.final_url,primary.document)
        if observed:
            try:
                secondary=await asyncio.wait_for(asyncio.to_thread(fetch,observed[0]),25)
                if (host(secondary.final_url)==src_host and
                    all(host(h)==src_host for h in secondary.redirect_chain)):
                    page_receipts.append(secondary)
            except Exception:
                pass  # A failed optional contact-page fetch never establishes an email.
    except Exception:
        return {"status":"fetch_failed","reason":"source_fetch_unavailable"}

    pages=[]
    names=[]
    boxes=set()
    visible=[]
    phone_match=False
    for receipt in page_receipts:
        html=receipt.document
        title=Page();title.feed(html)
        addresses,parsed=mailboxes(html)
        # Body/title is only local page evidence, never an instruction to execute.
        text=" ".join(parsed.text)[:50000]
        title_text=" ".join(title.title_text)
        names.append(title_text)
        visible.append(text)
        pages.append(receipt)
        boxes.update(addresses)
        phone=digits(row.get("public_phone"))
        if len(phone)==10:
            phones={digits(p) for p in parsed.phones}
            phones.update(digits(m.group()) for m in PHONE.finditer(text))
            if phone in phones:phone_match=True
    text=" ".join(visible)
    identity=any(identity_matches(row["business_name"],title,str(row["market"]))
                 for title in names)
    area=contains_market(text,row["market"])
    if not identity or not (area or phone_match):
        return {"status":"needs_review","reason":"business_or_area_unproven"}
    email=choose_email(sorted(boxes),src_host,identity)
    if not email:
        return {"status":"needs_review" if boxes else "no_public_mailbox",
                "reason":"mailbox_ambiguous" if boxes else "no_published_mailto"}
    from hashlib import sha256
    receipt=next((p for p in pages if email in mailboxes(p.document)[0]),pages[0])
    return {"status":"ready","reason":"published_business_mailbox",
            "email":email,"source_url":receipt.final_url,
            "digest":receipt.content_sha256,
            "area_basis":"city" if area else "same_public_business_phone"}

async def process_batch(pool,limit=BATCH_LIMIT,inspector=inspect_public_contact):
    limit=max(1,min(BATCH_LIMIT,int(limit)))
    async with pool.acquire() as conn:
        rows=[dict(x) for x in await conn.fetch(CANDIDATE_SQL,limit*5)]
    inspected=0;ready=0;held=0;already_claimed=0
    for row in rows:
        if inspected>=limit:break
        async with pool.acquire() as conn:
            claimed=await conn.fetchval("""
              insert into interest_first_contact_research
                (candidate_id,status,attempts,last_attempt_at,next_attempt_at,reason)
              values ($1,'running',1,now(),now()+interval '5 minutes','in_progress')
              on conflict(candidate_id) do update
              set status='running',attempts=interest_first_contact_research.attempts+1,
                  last_attempt_at=now(),next_attempt_at=now()+interval '5 minutes',
                  updated_at=now()
              where interest_first_contact_research.next_attempt_at<now()
                and interest_first_contact_research.attempts<3
              returning candidate_id""",row["candidate_id"])
        if not claimed:
            already_claimed+=1
            continue
        inspected+=1
        try:
            result=await inspector(row)
            status=str(result.get("status") or "")
            if status not in CONTACT_STATUS:raise ValueError("invalid_status")
        except Exception:
            result={"status":"fetch_failed","reason":"bounded_inspection_failed"}
        status=result["status"]
        async with pool.acquire() as conn:
            # A separate audit record; do not rewrite original candidate/contacts.
            await conn.execute("""
              update interest_first_contact_research
              set status=$2,public_email=case when $2='ready' then $3 else null end,
                  email_source_url=case when $2='ready' then $4 else null end,
                  source_sha256=case when $2='ready' then $5 else null end,
                  area_basis=case when $2='ready' then $6 else null end,
                  reason=$7,last_verified_at=case when $2='ready' then now() else null end,
                  next_attempt_at=now()+interval '14 days',updated_at=now()
              where candidate_id=$1 and status='running'""",
              row["candidate_id"],status,result.get("email"),result.get("source_url"),
              result.get("digest"),result.get("area_basis"),result.get("reason"))
        if status=="ready":ready+=1
        else:held+=1
    return {"ok":True,"inspected":inspected,"source_verified_email_ready":ready,
            "research_held":held,"already_claimed":already_claimed,
            "sent":0,"paid_api_calls":0,
            "note":"Only reviewed HTTPS contact evidence is saved; no customer messages or original candidate writes."}

async def aggregate_status(pool):
    async with pool.acquire() as conn:
        rows=await conn.fetch("""select status,count(*)::integer as records
           from interest_first_contact_research group by status order by status""")
        recent=await conn.fetchval("""select count(*) from interest_first_contact_research
           where last_attempt_at >= now()-interval '24 hours'""")
    return {"ok":True,"read_only":True,"by_status":[dict(r) for r in rows],
            "attempted_last_24h":int(recent or 0),"sent":0,"paid_api_calls":0}

def install(app,require_admin):
    from fastapi import Header
    @app.post("/api/process-interest-contact-research")
    async def run(x_bmc_admin_key:str|None=Header(default=None)):
        require_admin(x_bmc_admin_key)
        return await process_batch(app.state.pool)
    @app.post("/api/admin/interest-contact-research-status")
    async def status(x_bmc_admin_key:str|None=Header(default=None)):
        require_admin(x_bmc_admin_key)
        return await aggregate_status(app.state.pool)
