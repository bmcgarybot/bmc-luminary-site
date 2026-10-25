import os, json, uuid, re, imaplib, email, asyncio, urllib.request, urllib.parse, hmac, hashlib, time, html
from datetime import datetime, timedelta, timezone
from email.message import EmailMessage
from email.utils import parseaddr
import asyncpg
import aiosmtplib
from fastapi import FastAPI, Request, Header, HTTPException

def env_int(name,default):
    raw=os.getenv(name)
    try:
        return int(raw) if raw is not None and str(raw).strip()!="" else int(default)
    except (TypeError,ValueError):
        return int(default)

def env_float(name,default):
    raw=os.getenv(name)
    try:
        return float(raw) if raw is not None and str(raw).strip()!="" else float(default)
    except (TypeError,ValueError):
        return float(default)
from fastapi.middleware.cors import CORSMiddleware
from fastapi.responses import HTMLResponse

DB_DSN=os.getenv("DATABASE_URL","postgresql://bmc_automation:change@postgres:5432/bmc_portfolio")
PUBLIC_SITE_URL=os.getenv("PUBLIC_SITE_URL","https://bmcservicenetwork.com").rstrip("/")
WEBHOOK_URL=os.getenv("WEBHOOK_URL","").strip()
CLOUDFLARE_TUNNEL_TOKEN=os.getenv("CLOUDFLARE_TUNNEL_TOKEN","").strip()
ADMIN_KEY=os.getenv("BMC_ADMIN_KEY","")
OFFER_HOURS=env_int("OFFER_HOURS",2)
SMTP_HOST=os.getenv("SMTP_HOST","")
SMTP_PORT=env_int("SMTP_PORT",587)
SMTP_USER=os.getenv("SMTP_USER","")
SMTP_PASSWORD=os.getenv("SMTP_PASSWORD","")
SMTP_FROM=os.getenv("SMTP_FROM",SMTP_USER or "contact@bmcservicenetwork.com")
SMTP_STARTTLS=os.getenv("SMTP_STARTTLS","true").lower()=="true"
SMTP_DRY_RUN=os.getenv("SMTP_DRY_RUN","false").lower()=="true"
OUTREACH_ENABLED=os.getenv("OUTREACH_ENABLED","false").lower()=="true"
OUTREACH_DAILY_LIMIT=env_int("OUTREACH_DAILY_LIMIT",25)
OUTREACH_WAVE=os.getenv("OUTREACH_WAVE","pilot1").strip() or "pilot1"
BUYER_OUTREACH_ENABLED=os.getenv("BUYER_OUTREACH_ENABLED","false").lower()=="true"
BUYER_OUTREACH_DAILY_LIMIT=env_int("BUYER_OUTREACH_DAILY_LIMIT",15)
BUYER_OUTREACH_WAVE=os.getenv("BUYER_OUTREACH_WAVE","pilot1").strip() or "pilot1"
GROWTH_OUTREACH_ENABLED=os.getenv("GROWTH_OUTREACH_ENABLED","false").lower()=="true"
GROWTH_OUTREACH_DAILY_LIMIT=env_int("GROWTH_OUTREACH_DAILY_LIMIT",10)
GROWTH_OUTREACH_WAVE=os.getenv("GROWTH_OUTREACH_WAVE","growth1").strip() or "growth1"
BUSINESS_POSTAL_ADDRESS=os.getenv("BUSINESS_POSTAL_ADDRESS","").strip()
PARTNER_URL=f"{PUBLIC_SITE_URL}/providers/"
PILOT_ACTIVATION_URL=f"{PUBLIC_SITE_URL}/provider-pilot-activate/"
IMAP_ENABLED=os.getenv("IMAP_ENABLED","false").lower()=="true"
IMAP_HOST=os.getenv("IMAP_HOST","")
IMAP_PORT=env_int("IMAP_PORT",993)
IMAP_USER=os.getenv("IMAP_USER","")
IMAP_PASSWORD=os.getenv("IMAP_PASSWORD","")
IMAP_FOLDER=os.getenv("IMAP_FOLDER","INBOX")
LOCAL_AI_URL=os.getenv("LOCAL_AI_URL","").rstrip("/")
LOCAL_AI_MODEL=os.getenv("LOCAL_AI_MODEL","qwen3:1.7b")
LOCAL_AI_ENABLED=os.getenv("LOCAL_AI_ENABLED","true").lower()=="true"
STRIPE_WEBHOOK_SECRET=os.getenv("STRIPE_WEBHOOK_SECRET","").strip()
AGENT_ENABLED=os.getenv("AGENT_ENABLED","true").lower()=="true"
AGENT_MIN_CONFIDENCE=env_float("AGENT_MIN_CONFIDENCE",0.82)
AGENT_CYCLE_LIMIT=max(1,env_int("AGENT_CYCLE_LIMIT",10))
AGENT_RESEARCH_TASK_LIMIT=max(0,env_int("AGENT_RESEARCH_TASK_LIMIT",5))
AGENT_ALLOW_EXTERNAL_ACTIONS=os.getenv("AGENT_ALLOW_EXTERNAL_ACTIONS","false").lower()=="true"
RESEARCH_SEARCH_ENABLED=os.getenv("RESEARCH_SEARCH_ENABLED","true").lower()=="true"
RESEARCH_SEARCH_URL=os.getenv("RESEARCH_SEARCH_URL","http://searxng:8080/search").strip()
RESEARCH_SEARCH_RESULTS=max(1,min(20,env_int("RESEARCH_SEARCH_RESULTS",8)))
RESEARCH_WORKER_BATCH=max(1,min(5,env_int("RESEARCH_WORKER_BATCH",1)))

app=FastAPI(title="BMC Portfolio Ops API",version="0.1.0")
app.add_middleware(CORSMiddleware,allow_origins=[
    "https://bmcservicenetwork.com","https://www.bmcservicenetwork.com"
],allow_credentials=False,allow_methods=["POST","GET"],allow_headers=["*"])

@app.on_event("startup")
async def startup():
    app.state.pool=await asyncpg.create_pool(DB_DSN,min_size=1,max_size=5)

@app.on_event("shutdown")
async def shutdown():
    await app.state.pool.close()

async def send_mail(to,subject,body,html_body=None):
    if not to: return False
    if SMTP_DRY_RUN: return True
    if not SMTP_HOST or "CHANGE_ME" in SMTP_HOST: return False
    try:
        msg=EmailMessage(); msg["From"]=SMTP_FROM; msg["To"]=to; msg["Subject"]=subject; msg.set_content(body)
        if html_body:
            msg.add_alternative(html_body,subtype="html")
        await aiosmtplib.send(msg,hostname=SMTP_HOST,port=SMTP_PORT,username=SMTP_USER or None,
            password=SMTP_PASSWORD or None,start_tls=SMTP_STARTTLS)
        return True
    except Exception:
        return False

def clean(v): return str(v or "").strip()
def slug(v): return re.sub(r"[^a-z0-9]+","-",clean(v).lower()).strip("-")[:40] or "vendor"

def workflow_email_html(title,body_lines,button_label=None,button_url=None):
    rows="".join(f"<p style='margin:0 0 14px;line-height:1.55'>{html.escape(clean(line)).replace(chr(10),'<br>')}</p>" for line in body_lines if clean(line))
    button=""
    fallback=""
    if button_label and button_url:
        safe_url=html.escape(clean(button_url),quote=True)
        button=f"<p style='margin:24px 0'><a href='{safe_url}' style='display:inline-block;background:#1557d6;color:#fff;text-decoration:none;font-weight:700;padding:12px 18px;border-radius:8px'>{html.escape(clean(button_label))}</a></p>"
        fallback=f"<p style='margin:18px 0 0;font-size:12px;color:#666;line-height:1.45'>If the button does not work, copy and paste this link:<br><span style='word-break:break-all'>{safe_url}</span></p>"
    return f"""<!doctype html><html><body style='margin:0;background:#f5f7fa;font-family:Arial,sans-serif;color:#1f2937'><div style='max-width:620px;margin:0 auto;padding:28px 16px'><div style='background:#fff;border:1px solid #e5e7eb;border-radius:12px;padding:28px'><h1 style='font-size:24px;margin:0 0 22px'>{html.escape(clean(title))}</h1>{rows}{button}{fallback}<p style='margin:28px 0 0;font-size:12px;color:#6b7280'>BMC Service Network · BMC Luminary Ventures LLC</p></div></div></body></html>"""

async def service_display_name(conn,service_key):
    row=await conn.fetchrow("select display_name from services where service_key=$1",service_key)
    if row and clean(row["display_name"]): return clean(row["display_name"])
    return clean(service_key).replace("_"," ").title() or "Service"

async def event(conn,etype,eid,kind,payload=None,actor="system"):
    await conn.execute("insert into events(entity_type,entity_id,event_type,actor,payload) values($1,$2,$3,$4,$5::jsonb)",
                       etype,str(eid),kind,actor,json.dumps(payload or {}))


def portal_token_hash(token):
    return hashlib.sha256(clean(token).encode("utf-8")).hexdigest()

async def issue_vendor_portal_token(conn,vendor_id,days=30):
    token=uuid.uuid4().hex+uuid.uuid4().hex
    token_hash=portal_token_hash(token)
    expires=datetime.now(timezone.utc)+timedelta(days=days)
    await conn.execute("""insert into vendor_portal_tokens(vendor_id,token_hash,expires_at)
      values($1,$2,$3)""",vendor_id,token_hash,expires)
    await conn.execute("""update vendor_portal_tokens set revoked_at=now()
      where vendor_id=$1 and token_hash<>$2 and revoked_at is null and expires_at>now()""",vendor_id,token_hash)
    return token,expires

async def vendor_from_portal_token(conn,token):
    token=clean(token)
    if len(token)<40:
        return None
    row=await conn.fetchrow("""select v.*,pt.token_id,pt.expires_at
      from vendor_portal_tokens pt join vendors v on v.vendor_id=pt.vendor_id
      where pt.token_hash=$1 and pt.revoked_at is null and pt.expires_at>now()
        and v.status in ('pilot','active','paused')
      limit 1""",portal_token_hash(token))
    if row:
        await conn.execute("update vendor_portal_tokens set last_used_at=now() where token_id=$1",row["token_id"])
    return row

def provider_dashboard_url(token):
    return f"{PUBLIC_SITE_URL}/provider-dashboard/?token={urllib.parse.quote(clean(token))}"


def classify_with_rules(text):
    t=clean(text).lower()
    rules=[
      ("electrical_service",["electrician","electrical","breaker","outlet","wiring","panel","ev charger","240v","220v"]),
      ("hvac_heat",["heating","air conditioning","air conditioner","a/c"," ac ","furnace","heat pump","mini split","hvac","no heat","no cool"]),
      ("handyman_repairs",["handyman","drywall","mount tv","mounting","punch list","small repair","door repair","assemble","assembly"]),
      ("residential_cleaning",["house cleaning","house cleaner","maid","housekeeping","deep clean","home cleaning"]),
      ("home_staging",["home staging","stager","staging consultation","vacant staging","listing styling"]),
      ("realtor_listing_prep",["realtor","real estate","realestate","listing prep","pre-listing","pre listing","listing ready","listing photos","brokerage","sell my house","sell my home","home sale"]),
      ("tree_service",["tree removal","tree trimming","dead tree","hazard tree","defensible space","brush clearing","fuel reduction","chipping"]),
      ("landscaping",["landscaping","landscape","yard cleanup","weed removal","irrigation","xeriscape"]),
      ("junk_hauling",["junk removal","haul away","hauling","cleanout","clean out","debris removal","furniture removal","appliance removal"]),
      ("commercial_cleaning",["commercial cleaning","janitorial","office cleaning","church cleaning","school cleaning","theater cleaning","facility cleaning"]),
      ("facility_maintenance",["facility maintenance","school maintenance","church maintenance","theater maintenance","building maintenance"]),
      ("restaurant_repair",["restaurant repair","commercial refrigeration","walk-in cooler","walk in cooler","reach-in cooler","reach in cooler"]),
      ("restaurant_equipment",["restaurant equipment","commercial oven","oven","fryer","deep fryer","commercial fryer","griddle","charbroiler","steamer","steam table","dish machine","dishwasher repair"]),
      ("ice_machine",["ice machine","ice maker"]),
      ("hood_exhaust",["hood cleaning","exhaust cleaning","kitchen hood"]),
      ("grease_drain",["grease trap","commercial drain","restaurant drain"]),
      ("towing_roadside",["tow truck","towing","roadside","lockout","jump start"]),
      ("mobile_tire_battery",["mobile tire","flat tire","battery replacement","car battery"]),
      ("auto_glass",["windshield","auto glass"]),
      ("vehicle_services",["mobile mechanic","car repair","vehicle repair","fleet repair"]),
      ("pet_waste",["pet waste","dog poop","pooper scooper"]),
      ("pet_sitting",["dog walking","dog walker","pet sitting","pet sitter"]),
      ("mobile_pet_grooming",["pet grooming","dog grooming","mobile groomer"]),
      ("garage_door",["garage door"]),
      ("pest_control",["pest control","exterminator","termites","rodent"]),
      ("pressure_washing",["pressure washing","power washing"]),
      ("window_cleaning",["window cleaning","window washer"]),
      ("floor_carpet",["carpet cleaning","floor cleaning","strip and wax","floor care"]),
      ("parking_lot",["parking lot","striping","parking lot sweeping"]),
      ("locksmith_access",["locksmith","rekey","access control"]),
      ("fire_safety",["fire extinguisher","fire suppression"]),
      ("backflow_plumbing",["backflow","commercial plumbing"]),
      ("rural_property",["septic","excavation","grading","water hauling","well pump","well service"]),
      ("pool_desert_property",["pool service","pool repair","pool cleaning","spa repair"]),
      ("str_property_care",["short term rental","short-term rental","airbnb","vrbo","rental turnover"]),
      ("snow_service",["snow removal","snow plow","plowing"])
    ]
    for key,terms in rules:
        if any(term in t for term in terms):
            return {"service_key":key,"confidence":0.86,"reason":"plain-language rule match"}
    return None

async def classify_with_local_ai(conn,market,scope):
    if not LOCAL_AI_ENABLED or not LOCAL_AI_URL or not scope:
        return None
    services=await conn.fetch("select service_key,display_name,category,monetization from services where is_active=true order by priority,display_name")
    allowed={r["service_key"] for r in services}
    catalog="\n".join(f'{r["service_key"]}: {r["display_name"]} — {r["category"] or ""} — {r["monetization"] or ""}' for r in services)
    prompt=f"""Classify this Arizona service request into exactly one service_key from the catalog.

Market: {market}
Request: {scope}

Catalog:
{catalog}

Return JSON only:
{{"service_key":"one_key","confidence":0.0,"reason":"short reason"}}

If no catalog item fits reliably, return service_key "unclassified". Do not invent keys."""
    payload=json.dumps({
        "model":LOCAL_AI_MODEL,
        "messages":[{"role":"user","content":prompt}],
        "stream":False,
        "format":"json",
        "options":{"temperature":0.1,"num_ctx":4096}
    }).encode()
    def call():
        req=urllib.request.Request(LOCAL_AI_URL+"/api/chat",data=payload,headers={"Content-Type":"application/json"},method="POST")
        with urllib.request.urlopen(req,timeout=15) as resp:
            return json.loads(resp.read().decode("utf-8"))
    try:
        raw=await asyncio.to_thread(call)
        content=raw.get("message",{}).get("content","")
        parsed=json.loads(content)
        key=clean(parsed.get("service_key"))
        confidence=float(parsed.get("confidence") or 0)
        if key in allowed and confidence>=0.70:
            return {"service_key":key,"confidence":confidence,"reason":clean(parsed.get("reason"))[:300]}
    except Exception:
        return None
    return None


async def local_ai_status():
    status={
      "enabled":LOCAL_AI_ENABLED,
      "url_configured":bool(LOCAL_AI_URL),
      "url":LOCAL_AI_URL or None,
      "model":LOCAL_AI_MODEL,
      "reachable":False,
      "model_available":False
    }
    if not LOCAL_AI_ENABLED or not LOCAL_AI_URL:
        return status
    def call():
        req=urllib.request.Request(LOCAL_AI_URL+"/api/tags",headers={"Accept":"application/json"})
        with urllib.request.urlopen(req,timeout=4) as resp:
            return json.loads(resp.read().decode("utf-8"))
    try:
        raw=await asyncio.to_thread(call)
        status["reachable"]=True
        names=[]
        for item in raw.get("models") or []:
            names.append(clean(item.get("name") or item.get("model")))
        status["available_models"]=names[:20]
        status["model_available"]=LOCAL_AI_MODEL in names
    except Exception as exc:
        status["error"]=str(exc)[:250]
    return status


def build_research_query(side,market,service_name,research_method=""):
    service=clean(service_name).replace('"'," ")
    place=clean(market).replace('"'," ")
    if side=="vendor":
        return f'"{service}" "{place}" Arizona company service contractor'
    if "B2B" in clean(research_method).upper():
        return f'"{place}" Arizona business facility property manager school church "{service}"'
    return f'"{place}" Arizona business organization "{service}"'

async def search_research_web(query):
    if not RESEARCH_SEARCH_ENABLED or not RESEARCH_SEARCH_URL:
        return []
    params=urllib.parse.urlencode({
        "q":query,
        "format":"json",
        "language":"en-US",
        "safesearch":"1"
    })
    url=RESEARCH_SEARCH_URL+("&" if "?" in RESEARCH_SEARCH_URL else "?")+params
    def call():
        req=urllib.request.Request(url,headers={
            "User-Agent":"BMC-Luminary-Research/1.0",
            "Accept":"application/json"
        })
        with urllib.request.urlopen(req,timeout=25) as resp:
            return json.loads(resp.read(2_000_000).decode("utf-8","replace"))
    raw=await asyncio.to_thread(call)
    out=[]
    for item in (raw.get("results") or [])[:RESEARCH_SEARCH_RESULTS]:
        source_url=clean(item.get("url"))
        try:
            parsed=urllib.parse.urlparse(source_url)
        except Exception:
            continue
        if parsed.scheme not in ("http","https") or not parsed.netloc:
            continue
        host=(parsed.hostname or "").lower()
        if host.startswith("www."): host=host[4:]
        out.append({
            "title":clean(item.get("title"))[:500],
            "url":source_url[:3000],
            "domain":host[:255],
            "snippet":clean(item.get("content") or item.get("snippet"))[:3000],
            "engine":clean(item.get("engine"))[:100],
            "score":item.get("score")
        })
    return out

async def next_vendor(conn,lead_id,market,service_key):
    return await conn.fetchrow("""
      select v.vendor_id,v.business_name,v.public_email,v.public_phone
      from vendors v
      join vendor_services vs on vs.vendor_id=v.vendor_id
      join vendor_markets vm on vm.vendor_id=v.vendor_id
      where vs.service_key=$1 and vm.market=$2 and v.status in ('pilot','active')
        and v.public_email is not null and v.public_email<>''
        and not exists(select 1 from lead_matches lm where lm.lead_id=$3 and lm.vendor_id=v.vendor_id)
      order by v.quality_score desc nulls last, v.updated_at asc
      limit 1
    """,service_key,market,lead_id)

async def offer_next(conn,lead):
    vendor=await next_vendor(conn,lead["lead_id"],lead["market"],lead["service_key"])
    if not vendor:
        await conn.execute("update leads set status='exception',exception_reason='no_vendor_match',updated_at=now() where lead_id=$1",lead["lead_id"])
        await conn.execute("insert into exceptions(type,lead_id,severity,summary,recommended_action) values('no_vendor_match',$1,'high',$2,$3)",
            lead["lead_id"],f"No active vendor for {lead['service_key']} in {lead['market']}","Recruit/activate vendor or manually route")
        await event(conn,"lead",lead["lead_id"],"no_vendor_match",{"market":lead["market"],"service_key":lead["service_key"]})
        return None
    token=str(uuid.uuid4())
    expiry=datetime.now(timezone.utc)+timedelta(hours=OFFER_HOURS)
    await conn.execute("""insert into lead_matches(lead_id,vendor_id,rank,status,expires_at,response_token)
      values($1,$2,1,'offered',$3,$4)""",lead["lead_id"],vendor["vendor_id"],expiry,token)
    await conn.execute("update leads set status='provider_offered',updated_at=now() where lead_id=$1",lead["lead_id"])
    link=f"{PUBLIC_SITE_URL}/provider-response/?lead_id={lead['lead_id']}&vendor_id={vendor['vendor_id']}&token={token}"
    summary=clean(lead.get("scope"))[:1200]
    service_name=await service_display_name(conn,lead["service_key"])
    body=f"""New BMC service request

Market: {lead['market']}
Service: {service_name}
Timing: {clean(lead.get('urgency')) or 'Not specified'}
Scope: {summary}

Accept or decline securely:
{link}

Only accept if this fits your territory and current capacity.
"""
    offer_html=workflow_email_html(
      f"New {service_name} request in {lead['market']}",
      [
        f"Market: {lead['market']}",
        f"Service: {service_name}",
        f"Timing: {clean(lead.get('urgency')) or 'Not specified'}",
        f"Scope: {summary}",
        "Only accept if this fits your territory and current capacity."
      ],
      "Accept or decline request",
      link
    )
    delivered=await send_mail(vendor["public_email"],f"New {service_name} request in {lead['market']}",body,offer_html)
    if not delivered:
        await conn.execute("update lead_matches set status='delivery_failed',responded_at=now() where lead_id=$1 and vendor_id=$2",lead["lead_id"],vendor["vendor_id"])
        await conn.execute("update leads set status='exception',exception_reason='provider_offer_delivery_failure',updated_at=now() where lead_id=$1",lead["lead_id"])
        await conn.execute("""insert into exceptions(type,lead_id,vendor_id,severity,summary,recommended_action)
          values('provider_offer_delivery_failure',$1,$2,'high',$3,$4)""",
          lead["lead_id"],vendor["vendor_id"],f"Could not deliver provider offer to {vendor['business_name']}","Verify outbound mail and provider email before rerouting")
        await event(conn,"lead",lead["lead_id"],"provider_offer_delivery_failed",{"vendor_id":vendor["vendor_id"]})
        return None
    await event(conn,"lead",lead["lead_id"],"provider_offered",{"vendor_id":vendor["vendor_id"]})
    return vendor

async def handle_vendor_response(conn,p):
    lead_id=clean(p.get("lead_id")); vendor_id=clean(p.get("vendor_id")); token=clean(p.get("token")); response=clean(p.get("response"))
    if not all([lead_id,vendor_id,token,response]): raise HTTPException(400,"Missing response fields")
    row=await conn.fetchrow("""select lm.*,l.market,l.service_key,l.email,l.phone,l.customer_name,l.business_name,
      l.preferred_contact,l.scope,l.urgency
      from lead_matches lm join leads l on l.lead_id=lm.lead_id
      where lm.lead_id=$1::uuid and lm.vendor_id=$2 and lm.response_token=$3 and lm.status='offered'""",lead_id,vendor_id,token)
    if not row: raise HTTPException(409,"Offer is invalid, expired, or already answered")
    if response=="accept":
        service_name=await service_display_name(conn,row["service_key"])
        vendor=await conn.fetchrow("""select vendor_id,business_name,public_email,public_phone,website
          from vendors where vendor_id=$1""",vendor_id)
        if not vendor: raise HTTPException(409,"Provider record is unavailable")
        await conn.execute("update lead_matches set status='accepted',responded_at=now() where match_id=$1",row["match_id"])
        await conn.execute("update leads set status='provider_accepted',updated_at=now() where lead_id=$1",row["lead_id"])
        await event(conn,"lead",row["lead_id"],"provider_accepted",{"vendor_id":vendor_id},vendor_id)

        job_link=f"{PUBLIC_SITE_URL}/provider-job-update/?lead_id={row['lead_id']}&vendor_id={vendor_id}&token={token}"
        customer_name=clean(row["customer_name"]) or "Customer"
        customer_business=clean(row["business_name"])
        customer_email=clean(row["email"])
        customer_phone=clean(row["phone"])
        preferred=clean(row["preferred_contact"])
        scope=clean(row["scope"])
        urgency=clean(row["urgency"])

        provider_body=f"""You accepted this BMC request. Here are the customer details you need to follow up.

Market: {row['market']}
Service: {service_name}
Customer: {customer_name}
Business / property: {customer_business or 'Not provided'}
Email: {customer_email or 'Not provided'}
Phone: {customer_phone or 'Not provided'}
Preferred contact: {preferred or 'Not specified'}
Timing: {urgency or 'Not specified'}

Scope:
{scope}

Please contact the customer promptly. After contact/estimate, close the loop here:
{job_link}

Customer information is provided only for this service request and should not be sold or used for unrelated marketing.

BMC Luminary Ventures LLC
"""
        provider_html=workflow_email_html(
          f"Customer details for your {service_name} request",
          [
            f"Market: {row['market']}",
            f"Customer: {customer_name}",
            f"Business / property: {customer_business or 'Not provided'}",
            f"Email: {customer_email or 'Not provided'}",
            f"Phone: {customer_phone or 'Not provided'}",
            f"Preferred contact: {preferred or 'Not specified'}",
            f"Timing: {urgency or 'Not specified'}",
            f"Scope: {scope}",
            "Please contact the customer promptly, then update the outcome."
          ],
          "Update job status",
          job_link
        )
        await send_mail(vendor["public_email"],f"Customer details: {service_name} in {row['market']}",provider_body,provider_html)

        provider_contact=[]
        if clean(vendor["public_phone"]): provider_contact.append(f"Phone: {clean(vendor['public_phone'])}")
        if clean(vendor["public_email"]): provider_contact.append(f"Email: {clean(vendor['public_email'])}")
        if clean(vendor["website"]): provider_contact.append(f"Website: {clean(vendor['website'])}")
        contact_block="\n".join(provider_contact) or "The provider will contact you using the details in your request."
        if customer_email:
            customer_body=f"""A provider accepted your BMC service request. Here is who will be following up with you.

Provider: {vendor['business_name']}
Market: {row['market']}
Service: {service_name}

{contact_block}

The provider is an independent business and will communicate its own pricing, scope, scheduling, warranties, and job terms directly with you. BMC will follow the request through the estimate/outcome stage.

Reference: {row['lead_id']}
BMC Luminary Ventures LLC
"""
            customer_html=workflow_email_html(
              f"Provider matched for your {service_name} request",
              [
                f"Provider: {vendor['business_name']}",
                f"Market: {row['market']}",
                f"Service: {service_name}",
                contact_block,
                "This provider is an independent business. They will give you their own pricing, scheduling, warranty, and job terms directly.",
                f"Reference: {row['lead_id']}"
              ]
            )
            await send_mail(customer_email,f"Provider matched for your {service_name} request",customer_body,customer_html)

        await event(conn,"lead",row["lead_id"],"contact_released",{
          "vendor_id":vendor_id,
          "customer_email_released":bool(customer_email),
          "customer_phone_released":bool(customer_phone)
        },"system")
        return {"ok":True,"status":"accepted","message":f"Accepted. Contact: {customer_name}; email: {customer_email or 'not provided'}; phone: {customer_phone or 'not provided'}. BMC will continue outcome follow-up."}

    await conn.execute("update lead_matches set status='declined',responded_at=now(),decline_reason=$2 where match_id=$1",row["match_id"],clean(p.get("notes")))
    await event(conn,"lead",row["lead_id"],"provider_declined",{"vendor_id":vendor_id,"reason":clean(p.get("notes"))},vendor_id)
    lead=await conn.fetchrow("select * from leads where lead_id=$1",row["lead_id"])
    await offer_next(conn,lead)
    return {"ok":True,"status":"declined","message":"Declined. BMC recorded your response and is rerouting the request."}


async def handle_vendor_pilot_activation(conn,p):
    vendor_id=clean(p.get("vendor_id"))
    if not vendor_id: raise HTTPException(400,"Vendor ID is required")
    if clean(p.get("pilot_terms")).lower()!="accepted":
        raise HTTPException(400,"Provider pilot terms must be acknowledged")
    vendor=await conn.fetchrow("select * from vendors where vendor_id=$1",vendor_id)
    if not vendor: raise HTTPException(404,"Vendor record not found")
    email=clean(p.get("email")) or clean(vendor["public_email"])
    phone=clean(p.get("phone")) or clean(vendor["public_phone"])
    website=clean(p.get("business_url")) or clean(vendor["website"])
    await conn.execute("""update vendors set
      public_email=$2,public_phone=$3,website=$4,status='pilot_pending_review',
      territory_notes=coalesce(nullif($5,''),territory_notes),
      minimum_job=coalesce(nullif($6,''),minimum_job),
      capacity=coalesce(nullif($7,''),capacity),
      license_notes=coalesce(nullif($8,''),license_notes),
      insurance_notes=coalesce(nullif($9,''),insurance_notes),
      notes=concat_ws(E'\n',nullif(notes,''),$10::text),
      updated_at=now()
      where vendor_id=$1""",
      vendor_id,email,phone,website,clean(p.get("territory")),clean(p.get("minimum_job")),
      clean(p.get("capacity")),clean(p.get("credentials")),clean(p.get("insurance")),
      "Pilot activation submitted: "+json.dumps({k:v for k,v in p.items() if k not in ("website",)}))
    await conn.execute("""insert into exceptions(type,vendor_id,severity,summary,recommended_action)
      values('pilot_activation_review',$1,'high',$2,$3)""",
      vendor_id,f"Review pilot activation: {vendor['business_name']}",
      "Verify pilot terms, territory, capacity, licensing/insurance where applicable; then move vendor to pilot if approved")
    await event(conn,"vendor",vendor_id,"pilot_activation_submitted",p,vendor_id)
    return {"ok":True,"status":"pilot_pending_review","vendor_id":vendor_id,
      "message":"Pilot details received. BMC will review the service, territory, capacity, and credentials before activating routing."}

async def handle_vendor_application(conn,p):
    business=clean(p.get("business_name")); market=clean(p.get("market"))
    if not business or not market: raise HTTPException(400,"Business name and market required")
    if clean(p.get("pilot_terms")).lower()!="accepted": raise HTTPException(400,"Provider pilot terms must be acknowledged")
    vid=f"app_{slug(business)}_{uuid.uuid4().hex[:8]}"
    await conn.execute("""insert into vendors(vendor_id,business_name,public_email,public_phone,website,status,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
      values($1,$2,$3,$4,$5,'applicant',$6,$7,$8,$9,$10,$11)""",
      vid,business,clean(p.get("email")),clean(p.get("phone")),clean(p.get("business_url")),
      clean(p.get("territory")),clean(p.get("minimum_job")),clean(p.get("capacity")),
      clean(p.get("credentials")),clean(p.get("insurance")),json.dumps(p))
    await conn.execute("insert into vendor_markets(vendor_id,market) values($1,$2) on conflict do nothing",vid,market)
    await conn.execute("insert into exceptions(type,vendor_id,severity,summary,recommended_action) values('vendor_application_review',$1,'normal',$2,$3)",
                       vid,f"Review vendor application: {business}","Verify services, territory, licensing/insurance where applicable")
    await event(conn,"vendor",vid,"application_received",p)
    applicant_email=clean(p.get("email"))
    if applicant_email:
        body=f"""Hi {clean(p.get("contact_name")) or business},

We received your BMC provider application for {market}.

What happens next:
1. We review the jobs and area you want.
2. We check license or insurance details when the trade requires it.
3. If the pilot is a fit, we confirm your provider status and you can start receiving matching requests.

When a request comes in, you see the job details first. You can accept it or pass. Joining the pilot is free, and any future paid lead or territory terms will be shown before they apply.

BMC Luminary Ventures LLC
{BUSINESS_POSTAL_ADDRESS}
"""
        html_body=workflow_email_html(
          "We got your BMC provider application",
          [
            f"We received your application for {market}.",
            "Next, we review the jobs and area you want and check license or insurance details when the trade requires it.",
            "If the pilot is a fit, we confirm your provider status and you can start receiving matching requests.",
            "When a request comes in, you see the job details first. You can accept it or pass.",
            "Joining the pilot is free. Any future paid lead or territory terms will be shown before they apply."
          ],
          "Review the provider pilot terms",
          f"{PUBLIC_SITE_URL}/provider-pilot/"
        )
        await send_mail(applicant_email,"We got your BMC provider application",body,html_body)
    return {"ok":True,"status":"application_received","vendor_id":vid,"message":"Application received. We’ll review the work and area you selected, then contact you if the pilot is a fit."}



FACILITY_SERVICE_FIELDS={
    "need_commercial_cleaning":"commercial_cleaning",
    "need_floor_carpet":"floor_carpet",
    "need_window_cleaning":"window_cleaning",
    "need_landscaping":"landscaping",
    "need_tree_service":"tree_service",
    "need_junk_hauling":"junk_hauling",
    "need_pest_control":"pest_control",
    "need_hvac_heat":"hvac_heat",
    "need_electrical":"electrical_service",
    "need_handyman":"handyman_repairs",
    "need_pressure_washing":"pressure_washing",
    "need_duct_vent":"duct_vent",
    "need_parking_lot":"parking_lot",
    "need_fire_safety":"fire_safety",
    "need_sign_lighting":"sign_lighting",
    "need_locksmith_access":"locksmith_access",
    "need_backflow_plumbing":"backflow_plumbing"
}

async def handle_facility_lead(conn,p):
    market=clean(p.get("market")); consent=clean(p.get("consent")).lower()=="yes"
    if not market or not consent: raise HTTPException(400,"Market and consent are required")
    requested=[sk for field,sk in FACILITY_SERVICE_FIELDS.items() if clean(p.get(field)).lower() in ("yes","on","true","1")]
    if not requested:
        raise HTTPException(400,"Choose at least one facility service category")
    submission_id=clean(p.get("submission_id")) or str(uuid.uuid4())
    existing=await conn.fetchrow("select lead_id,status from leads where submission_id=$1",submission_id)
    if existing:return {"ok":True,"status":existing["status"],"lead_id":str(existing["lead_id"]),"message":"Facility request already received."}
    scope=clean(p.get("scope")); urgency=clean(p.get("timing")); facility_type=clean(p.get("facility_type"))
    customer_path=clean(p.get("customer_path")) or "keep_it_handled"
    score=(20 if p.get("email") or p.get("phone") else 0)+(20 if scope else 0)+40+(20 if urgency in ["ASAP","Urgent","Same day if possible"] else 0)
    parent_id=await conn.fetchval("""insert into leads(submission_id,form_type,market,service_key,service_type,customer_path,customer_name,business_name,email,phone,scope,urgency,source_page,consent,lead_score,status,raw_payload)
      values($1,'facility_maintenance',$2,'facility_maintenance',$3,$4,$5,$6,$7,$8,$9,$10,$11,true,$12,'split',$13::jsonb) returning lead_id""",
      submission_id,market,facility_type,customer_path,clean(p.get("contact_name")),clean(p.get("business_name")),clean(p.get("email")),clean(p.get("phone")),scope,urgency,clean(p.get("page")),score,json.dumps(p))
    await event(conn,"lead",parent_id,"facility_request_received",{"services":requested,"facility_type":facility_type})
    for sk in requested:
        child_id=await conn.fetchval("""insert into leads(parent_lead_id,submission_id,form_type,market,service_key,service_type,customer_path,customer_name,business_name,email,phone,scope,urgency,source_page,consent,lead_score,status,raw_payload)
          values($1,$2,'facility_child',$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,true,$14,'received',$15::jsonb) returning lead_id""",
          parent_id,f"{submission_id}:{sk}",market,sk,facility_type,customer_path,clean(p.get("contact_name")),clean(p.get("business_name")),clean(p.get("email")),clean(p.get("phone")),
          f"{facility_type}: {scope}",urgency,clean(p.get("page")),score,json.dumps(p))
        child=await conn.fetchrow("select * from leads where lead_id=$1",child_id)
        await event(conn,"lead",child_id,"facility_child_created",{"parent_lead_id":str(parent_id),"service_key":sk})
        await offer_next(conn,child)
    if p.get("email"):
        service_names=[]
        for sk in requested:
            service_names.append(await service_display_name(conn,sk))
        await send_mail(clean(p.get("email")),"We got your building request",
          f"""We received your building request in {market}.

You asked for help with:
- """+"\n- ".join(service_names)+f"""

We’ll work through these items from the same request and follow up as the next steps become clear.

Reference: {parent_id}
BMC Luminary Ventures LLC""")
    return {"ok":True,"status":"split","lead_id":str(parent_id),"child_requests":len(requested),
      "service_names":service_names if p.get("email") else [await service_display_name(conn,sk) for sk in requested],
      "message":f"Got it. We received {len(requested)} building needs and will work through them from this request."}

async def handle_lead(conn,p):
    form_type=clean(p.get("form_type")) or "general"
    market=clean(p.get("market"))
    scope=clean(p.get("scope") or p.get("problem") or p.get("notes"))
    service_type=clean(p.get("service_type"))
    customer_path=clean(p.get("customer_path") or p.get("request_goal"))
    service_key=clean(p.get("service_key")) or form_type
    ai_classification=None

    if form_type=="universal_request" and not clean(p.get("service_key")):
        service_key="unclassified"
        ai_text=(scope+"\nRequest type: "+service_type).strip()
        ai_classification=classify_with_rules(ai_text)
        if not ai_classification:
            ai_classification=await classify_with_local_ai(conn,market,ai_text)
        if ai_classification:
            service_key=ai_classification["service_key"]

    consent=clean(p.get("consent")).lower()=="yes"
    if not market or not consent:
        raise HTTPException(400,"Market and consent are required")

    service=None
    fulfillment_mode="provider_match"
    if service_key!="unclassified":
        service=await conn.fetchrow("""select service_key,display_name,fulfillment_mode
          from services where service_key=$1 and is_active=true""",service_key)
        if not service:
            service_key="unclassified"
        else:
            fulfillment_mode=clean(service["fulfillment_mode"]) or "provider_match"

    if not customer_path:
        if form_type in ("quote_sourcing","equipment_quotes"):
            customer_path="get_me_options"
        elif form_type in ("facility_maintenance","restaurant_maintenance"):
            customer_path="keep_it_handled"
        elif form_type in ("vendor_savings","waste_audit"):
            customer_path="help_me_spend_less"
        elif form_type in ("growth_pack","competitor_intel","market_expansion"):
            customer_path="help_me_get_more_customers"
        elif fulfillment_mode=="provider_match":
            customer_path="fix_or_handle_job"

    submission_id=clean(p.get("submission_id")) or str(uuid.uuid4())
    existing=await conn.fetchrow("select lead_id,status from leads where submission_id=$1",submission_id)
    if existing:
        return {"ok":True,"status":existing["status"],"lead_id":str(existing["lead_id"]),"message":"Request already received."}

    urgency=clean(p.get("timing") or p.get("urgency"))
    score=(20 if p.get("email") or p.get("phone") else 0)+(20 if scope else 0)+20+20+(20 if urgency in ["ASAP","Urgent","Same day if possible"] else 0)
    if service_key=="unclassified":
        status="needs_classification"
    elif fulfillment_mode=="provider_match":
        status="received"
    else:
        status="internal_queue"

    lead_id=await conn.fetchval("""insert into leads(submission_id,form_type,market,service_key,service_type,customer_path,customer_name,business_name,email,phone,preferred_contact,scope,urgency,source_page,consent,lead_score,status,raw_payload)
      values($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,true,$15,$16,$17::jsonb) returning lead_id""",
      submission_id,form_type,market,service_key,service_type,customer_path,clean(p.get("contact_name")),clean(p.get("business_name")),
      clean(p.get("email")),clean(p.get("phone")),clean(p.get("preferred_contact")),scope,urgency,clean(p.get("page")),score,status,json.dumps(p))

    await event(conn,"lead",lead_id,"received",{
      "service_key":service_key,"market":market,"customer_path":customer_path,"fulfillment_mode":fulfillment_mode,"ai_classification":ai_classification
    })

    order_id=None
    stripe_session_id=clean(p.get("stripe_session_id"))
    if stripe_session_id:
        order=await conn.fetchrow("""select order_id,payment_status from orders
          where stripe_checkout_session_id=$1""",stripe_session_id)
        if order:
            order_id=order["order_id"]
            order_status="ready_for_fulfillment" if clean(order["payment_status"]) in ("paid","complete") else "intake_received"
            await conn.execute("""update orders set intake_submission_id=$2,lead_id=$3,status=$4,updated_at=now()
              where order_id=$1""",order_id,submission_id,lead_id,order_status)
            await event(conn,"order",order_id,"intake_linked",{"lead_id":str(lead_id),"submission_id":submission_id})

    if p.get("email"):
        workflow_text="We’re looking for the right participating provider now." if fulfillment_mode=="provider_match" else "BMC is reviewing the request and will move it to the right next step."
        receipt_service_name=(clean(service["display_name"]) if service else service_key.replace("_"," ").title())
        receipt_body=f"We received your request for {receipt_service_name} in {market}.\n\n{workflow_text}\n\nReference: {lead_id}\nBMC Luminary Ventures LLC"
        receipt_html=workflow_email_html("BMC received your request",[
          f"We received your request for {receipt_service_name} in {market}.",
          workflow_text,
          f"Reference: {lead_id}"
        ])
        await send_mail(clean(p.get("email")),"BMC received your request",receipt_body,receipt_html)

    if service_key=="unclassified":
        await conn.execute("""insert into exceptions(type,lead_id,severity,summary,recommended_action)
          values('classification_needed',$1,'normal',$2,$3)""",
          lead_id,f"Request needs classification: {scope[:250]}","Classify service_key, then route")
        return {"ok":True,"status":"needs_classification","lead_id":str(lead_id),
          "service_key":"unclassified","service_name":None,
          "message":"We got your request. It needs one more classification step before we can send it to the right place."}

    if fulfillment_mode=="provider_match":
        lead=await conn.fetchrow("select * from leads where lead_id=$1",lead_id)
        await offer_next(conn,lead)
        final_status=await conn.fetchval("select status from leads where lead_id=$1",lead_id)
        if final_status=="provider_offered":
            message=f"We matched this to {display_name}. We’re checking whether a provider can take the job."
        elif final_status=="exception":
            message=f"We matched this to {display_name}, but we could not send it to an active provider automatically yet. BMC will review the next option."
        else:
            message=f"We matched this to {display_name} and started the next step."
        return {"ok":True,"status":final_status,"lead_id":str(lead_id),
          "service_key":service_key,"service_name":display_name,"message":message}

    task_type={
      "internal_delivery":"fulfill_internal_product",
      "managed_sourcing":"managed_sourcing",
      "managed_concierge":"managed_concierge",
      "facility_split":"facility_triage"
    }.get(fulfillment_mode,"internal_review")
    display_name=clean(service["display_name"]) if service else service_key
    summary=f"{display_name}: {clean(p.get('business_name')) or clean(p.get('contact_name')) or 'customer'} in {market}"
    task_id=await conn.fetchval("""insert into tasks(lead_id,order_id,service_key,task_type,status,priority,summary,payload)
      values($1,$2,$3,$4,'open',$5,$6,$7::jsonb) returning task_id""",
      lead_id,order_id,service_key,task_type,"high" if urgency in ["ASAP","Urgent","Same day if possible"] else "normal",summary,json.dumps(p))
    await event(conn,"task",task_id,"created",{"lead_id":str(lead_id),"service_key":service_key,"fulfillment_mode":fulfillment_mode})
    return {"ok":True,"status":"internal_queue","lead_id":str(lead_id),"task_id":str(task_id),
      "service_key":service_key,"service_name":display_name,
      "message":f"We matched this to {display_name}. BMC has queued the next step."}


async def handle_job_update(conn,p):
    lead_id=clean(p.get("lead_id")); vendor_id=clean(p.get("vendor_id")); token=clean(p.get("token")); status=clean(p.get("job_status"))
    if not all([lead_id,vendor_id,token,status]): raise HTTPException(400,"Missing job update fields")
    if status not in ("contacted","estimate","won","lost"): raise HTTPException(400,"Invalid job status")
    row=await conn.fetchrow("""select lm.*,l.market,l.service_key,l.email,l.customer_name
      from lead_matches lm join leads l on l.lead_id=lm.lead_id
      where lm.lead_id=$1::uuid and lm.vendor_id=$2 and lm.response_token=$3
        and lm.status in ('accepted','contacted','estimate')""",lead_id,vendor_id,token)
    if not row: raise HTTPException(409,"Job link is invalid or this match is already closed")
    amount=clean(p.get("quoted_amount"))
    cents=None
    if amount:
        try: cents=int(round(float(amount.replace("$","").replace(",",""))*100))
        except ValueError: cents=None
    notes=clean(p.get("notes"))
    if status=="contacted":
        await conn.execute("update lead_matches set status='contacted',contacted_at=coalesce(contacted_at,now()),last_followup_at=now() where match_id=$1",row["match_id"])
        await conn.execute("update leads set status='contacted',updated_at=now() where lead_id=$1",row["lead_id"])
    elif status=="estimate":
        await conn.execute("update lead_matches set status='estimate',estimate_at=coalesce(estimate_at,now()),quoted_amount_cents=coalesce($2,quoted_amount_cents),last_followup_at=now() where match_id=$1",row["match_id"],cents)
        await conn.execute("update leads set status='estimate',updated_at=now() where lead_id=$1",row["lead_id"])
    elif status=="won":
        await conn.execute("update lead_matches set status='won',won_at=now(),quoted_amount_cents=coalesce($2,quoted_amount_cents),last_followup_at=now() where match_id=$1",row["match_id"],cents)
        await conn.execute("update leads set status='won',updated_at=now() where lead_id=$1",row["lead_id"])
    else:
        await conn.execute("update lead_matches set status='lost',lost_at=now(),decline_reason=$2,last_followup_at=now() where match_id=$1",row["match_id"],notes)
        await conn.execute("update leads set status='lost',updated_at=now() where lead_id=$1",row["lead_id"])
    await event(conn,"lead",row["lead_id"],"job_"+status,{"vendor_id":vendor_id,"quoted_amount_cents":cents,"notes":notes},vendor_id)
    return {"ok":True,"status":status,"message":"Job status recorded. Thank you for closing the loop with BMC."}

RELATED_SERVICE_KEYS={
  "restaurant_equipment":["restaurant_repair","restaurant_maintenance","equipment_quotes"],
  "restaurant_repair":["restaurant_equipment","ice_machine","restaurant_maintenance"],
  "realtor_listing_prep":["home_staging","turnover_cleaning","junk_hauling","landscaping"],
  "facility_maintenance":["commercial_cleaning","handyman_repairs","electrical_service","hvac_heat"],
  "vendor_savings":["quote_sourcing","waste_audit"],
  "growth_pack":["competitor_intel","market_expansion"],
  "electrical_service":["handyman_repairs","facility_maintenance"],
  "hvac_heat":["handyman_repairs","facility_maintenance"],
  "vehicle_services":["towing_roadside","mobile_tire_battery","auto_glass"],
  "pet_sitting":["mobile_pet_grooming","pet_waste"]
}

@app.post("/api/service-search")
async def service_search(request:Request):
    p=await request.json()
    query=clean(p.get("query") or p.get("problem"))
    market=clean(p.get("market")) or "Arizona"
    if len(query)<2:
        raise HTTPException(400,"Tell us what you need help with")
    async with app.state.pool.acquire() as conn:
        classification=classify_with_rules(query)
        source="rules"
        if not classification:
            classification=await classify_with_local_ai(conn,market,query)
            source="local_ai" if classification else "none"
        if not classification:
            return {"ok":True,"query":query,"source":"none","match":None,"related":[]}
        key=classification["service_key"]
        row=await conn.fetchrow("""select service_key,display_name,live_front,category,fulfillment_mode
          from services where service_key=$1 and is_active=true""",key)
        if not row:
            return {"ok":True,"query":query,"source":"none","match":None,"related":[]}
        related=[]
        for related_key in RELATED_SERVICE_KEYS.get(key,[])[:4]:
            rr=await conn.fetchrow("""select service_key,display_name,live_front,category,fulfillment_mode
              from services where service_key=$1 and is_active=true""",related_key)
            if rr: related.append(dict(rr))
        return {
          "ok":True,
          "query":query,
          "source":source,
          "confidence":float(classification.get("confidence") or 0),
          "reason":clean(classification.get("reason")),
          "match":dict(row),
          "related":related
        }

@app.post("/api/provider/request-login")
async def provider_request_login(request:Request):
    p=await request.json()
    email_address=clean(p.get("email")).lower()
    if not email_address or "@" not in email_address:
        raise HTTPException(400,"Enter a valid email address")
    generic={"ok":True,"message":"If that email belongs to an active BMC provider, a login link is on the way."}
    async with app.state.pool.acquire() as conn:
        vendor=await conn.fetchrow("""select * from vendors
          where lower(public_email)=lower($1) and status in ('pilot','active','paused')
          order by updated_at desc limit 1""",email_address)
        if not vendor:
            return generic
        recent_requests=await conn.fetchval("""select count(*) from events
          where entity_type='vendor' and entity_id=$1 and event_type='portal_login_requested'
            and occurred_at>now()-interval '10 minutes'""",vendor["vendor_id"])
        if int(recent_requests or 0)>=3:
            return generic
        token,expires=await issue_vendor_portal_token(conn,vendor["vendor_id"])
        link=provider_dashboard_url(token)
        body=f"""Hi {vendor['business_name']},

Use this secure link to open your BMC provider dashboard:

{link}

The link expires on {expires.strftime('%B %d, %Y')}. If you did not request this, you can ignore this email.

BMC Luminary Ventures LLC
{BUSINESS_POSTAL_ADDRESS}
"""
        html_body=workflow_email_html(
          "Open your BMC provider dashboard",
          [
            f"Hi {vendor['business_name']},",
            "Use the secure button below to open your provider dashboard.",
            f"This login link expires on {expires.strftime('%B %d, %Y')}.",
            "If you did not request this, you can ignore this email."
          ],
          "Open provider dashboard",
          link
        )
        await send_mail(clean(vendor["public_email"]),"Your BMC provider login link",body,html_body)
        await event(conn,"vendor",vendor["vendor_id"],"portal_login_requested",{"email":email_address},"provider")
    return generic

@app.get("/api/provider/dashboard")
async def provider_dashboard(token:str):
    async with app.state.pool.acquire() as conn:
        vendor=await vendor_from_portal_token(conn,token)
        if not vendor:
            raise HTTPException(401,"This provider login link is invalid or expired")
        services=await conn.fetch("""select s.service_key,s.display_name
          from vendor_services vs join services s on s.service_key=vs.service_key
          where vs.vendor_id=$1 order by s.display_name""",vendor["vendor_id"])
        markets=await conn.fetch("""select market from vendor_markets where vendor_id=$1 order by market""",vendor["vendor_id"])
        opportunities=await conn.fetch("""select lm.match_id,lm.status,lm.offered_at,lm.expires_at,
            l.lead_id,l.market,l.service_key,s.display_name,l.scope,l.urgency
          from lead_matches lm join leads l on l.lead_id=lm.lead_id
          left join services s on s.service_key=l.service_key
          where lm.vendor_id=$1 and lm.status='offered'
            and (lm.expires_at is null or lm.expires_at>now())
          order by lm.offered_at desc limit 25""",vendor["vendor_id"])
        active=await conn.fetch("""select lm.match_id,lm.status,lm.responded_at,lm.contacted_at,lm.estimate_at,
            lm.quoted_amount_cents,l.lead_id,l.market,l.service_key,s.display_name,l.scope,l.urgency,
            l.customer_name,l.business_name,l.email,l.phone,l.preferred_contact
          from lead_matches lm join leads l on l.lead_id=lm.lead_id
          left join services s on s.service_key=l.service_key
          where lm.vendor_id=$1 and lm.status in ('accepted','contacted','estimate')
          order by coalesce(lm.responded_at,lm.offered_at) desc limit 25""",vendor["vendor_id"])
        recent=await conn.fetch("""select lm.match_id,lm.status,lm.won_at,lm.lost_at,lm.responded_at,
            lm.quoted_amount_cents,l.market,s.display_name
          from lead_matches lm join leads l on l.lead_id=lm.lead_id
          left join services s on s.service_key=l.service_key
          where lm.vendor_id=$1 and lm.status in ('won','lost','declined','expired')
          order by coalesce(lm.won_at,lm.lost_at,lm.responded_at,lm.offered_at) desc limit 20""",vendor["vendor_id"])
        stats=await conn.fetchrow("""select
            count(*) filter(where status='won') as won,
            count(*) filter(where status='lost') as lost,
            count(*) filter(where status='declined') as declined,
            count(*) filter(where status in ('accepted','contacted','estimate')) as active
          from lead_matches where vendor_id=$1""",vendor["vendor_id"])
        return {
          "ok":True,
          "provider":{
            "vendor_id":vendor["vendor_id"],"business_name":vendor["business_name"],
            "status":vendor["status"],"public_email":vendor["public_email"],
            "public_phone":vendor["public_phone"],"website":vendor["website"],
            "territory_notes":vendor["territory_notes"],"minimum_job":vendor["minimum_job"],
            "capacity":vendor["capacity"],"after_hours":vendor["after_hours"],
            "services":[dict(r) for r in services],
            "markets":[r["market"] for r in markets]
          },
          "opportunities":[dict(r) for r in opportunities],
          "active_jobs":[dict(r) for r in active],
          "recent":[dict(r) for r in recent],
          "stats":dict(stats) if stats else {}
        }

@app.post("/api/provider/respond")
async def provider_portal_respond(request:Request):
    p=await request.json()
    token=clean(p.get("token")); match_id=clean(p.get("match_id")); response=clean(p.get("response")).lower()
    if response not in ("accept","decline"):
        raise HTTPException(400,"Choose accept or decline")
    async with app.state.pool.acquire() as conn:
      async with conn.transaction():
        vendor=await vendor_from_portal_token(conn,token)
        if not vendor:
            raise HTTPException(401,"Provider login expired")
        match=await conn.fetchrow("""select lm.lead_id,lm.response_token
          from lead_matches lm where lm.match_id=$1::uuid and lm.vendor_id=$2 and lm.status='offered'""",
          match_id,vendor["vendor_id"])
        if not match:
            raise HTTPException(409,"This opportunity is no longer available")
        result=await handle_vendor_response(conn,{
          "lead_id":str(match["lead_id"]),"vendor_id":vendor["vendor_id"],
          "token":match["response_token"],"response":response,"notes":clean(p.get("notes"))
        })
        await event(conn,"vendor",vendor["vendor_id"],"portal_opportunity_"+response,{"match_id":match_id},"provider")
        return result

@app.post("/api/provider/job-update")
async def provider_portal_job_update(request:Request):
    p=await request.json()
    token=clean(p.get("token")); match_id=clean(p.get("match_id"))
    async with app.state.pool.acquire() as conn:
      async with conn.transaction():
        vendor=await vendor_from_portal_token(conn,token)
        if not vendor:
            raise HTTPException(401,"Provider login expired")
        match=await conn.fetchrow("""select lead_id,response_token from lead_matches
          where match_id=$1::uuid and vendor_id=$2""",match_id,vendor["vendor_id"])
        if not match:
            raise HTTPException(404,"Job not found")
        result=await handle_job_update(conn,{
          "lead_id":str(match["lead_id"]),"vendor_id":vendor["vendor_id"],
          "token":match["response_token"],"job_status":clean(p.get("job_status")),
          "quoted_amount":clean(p.get("quoted_amount")),"notes":clean(p.get("notes"))
        })
        return result

@app.post("/api/provider/settings")
async def provider_portal_settings(request:Request):
    p=await request.json()
    token=clean(p.get("token"))
    async with app.state.pool.acquire() as conn:
      async with conn.transaction():
        vendor=await vendor_from_portal_token(conn,token)
        if not vendor:
            raise HTTPException(401,"Provider login expired")
        vid=vendor["vendor_id"]
        services=[clean(x) for x in (p.get("services") or []) if clean(x)][:30]
        markets=[clean(x)[:100] for x in (p.get("markets") or []) if clean(x)][:20]
        valid_services=[]
        additions=[]
        removals=[]
        if services:
            rows=await conn.fetch("select service_key from services where service_key=any($1::text[]) and is_active=true",services)
            valid_services=[r["service_key"] for r in rows]
            current_rows=await conn.fetch("select service_key from vendor_services where vendor_id=$1",vid)
            current={r["service_key"] for r in current_rows}
            requested=set(valid_services)
            additions=sorted(requested-current)
            removals=sorted(current-requested)
        await conn.execute("""update vendors set
          public_phone=coalesce(nullif($2,''),public_phone),
          website=coalesce(nullif($3,''),website),
          territory_notes=$4,minimum_job=$5,capacity=$6,after_hours=$7,updated_at=now()
          where vendor_id=$1""",
          vid,clean(p.get("public_phone")),clean(p.get("website")),
          clean(p.get("territory_notes")),clean(p.get("minimum_job")),
          clean(p.get("capacity")),clean(p.get("after_hours")))
        if services:
            for sk in removals:
                await conn.execute("delete from vendor_services where vendor_id=$1 and service_key=$2",vid,sk)
            if additions:
                open_review=await conn.fetchval("""select exception_id from exceptions
                  where vendor_id=$1 and type='provider_service_change_review' and status='open'
                  order by created_at desc limit 1""",vid)
                if not open_review:
                    await conn.execute("""insert into exceptions(type,vendor_id,severity,summary,recommended_action)
                      values('provider_service_change_review',$1,'normal',$2,$3)""",
                      vid,f"Provider requested additional services: {vendor['business_name']}",
                      "Review requested service additions and any credential/license requirements before adding them")
                await event(conn,"vendor",vid,"portal_service_additions_requested",{"services":additions},"provider")
        if markets:
            await conn.execute("delete from vendor_markets where vendor_id=$1",vid)
            for market in markets:
                await conn.execute("insert into vendor_markets(vendor_id,market) values($1,$2) on conflict do nothing",vid,market)
        await event(conn,"vendor",vid,"portal_settings_updated",{
          "requested_services":valid_services if services else None,
          "removed_services":removals if services else None,
          "pending_service_additions":additions if services else None,
          "markets":markets if markets else None,
          "capacity":clean(p.get("capacity")),"minimum_job":clean(p.get("minimum_job"))
        },"provider")
        message="Provider settings updated."
        if additions:
            message+=" New service types are pending BMC review before they can receive jobs."
        return {"ok":True,"message":message,"pending_service_additions":additions}

@app.post("/api/provider/availability")
async def provider_portal_availability(request:Request):
    p=await request.json()
    token=clean(p.get("token"))
    action=clean(p.get("action")).lower()
    if action not in ("pause","resume"):
        raise HTTPException(400,"Choose pause or resume")
    async with app.state.pool.acquire() as conn:
      async with conn.transaction():
        vendor=await vendor_from_portal_token(conn,token)
        if not vendor:
            raise HTTPException(401,"Provider login expired")
        vid=vendor["vendor_id"]
        current=clean(vendor["status"])
        if action=="pause":
            if current=="paused":
                return {"ok":True,"status":"paused","message":"New BMC opportunities are already paused."}
            if current not in ("pilot","active"):
                raise HTTPException(409,"This provider account cannot be paused from its current status")
            await conn.execute("update vendors set status='paused',updated_at=now() where vendor_id=$1",vid)
            await event(conn,"vendor",vid,"provider_paused",{"previous_status":current},"provider")
            return {"ok":True,"status":"paused","message":"New BMC opportunities are paused. Active jobs stay on your dashboard."}

        if current!="paused":
            return {"ok":True,"status":current,"message":"New BMC opportunities are already enabled."}
        previous=await conn.fetchval("""select payload->>'previous_status' from events
          where entity_type='vendor' and entity_id=$1 and event_type='provider_paused'
          order by occurred_at desc limit 1""",vid)
        resume_status=previous if previous in ("pilot","active") else "pilot"
        await conn.execute("update vendors set status=$2,updated_at=now() where vendor_id=$1",vid,resume_status)
        await event(conn,"vendor",vid,"provider_resumed",{"status":resume_status},"provider")
        return {"ok":True,"status":resume_status,"message":"New BMC opportunities are turned back on."}

@app.get("/health")
async def health():
    async with app.state.pool.acquire() as conn:
        await conn.fetchval("select 1")
    return {"ok":True,"service":"bmc-ops-api"}

@app.post("/api/intake")
async def intake(request:Request):
    p=await request.json()
    async with app.state.pool.acquire() as conn:
        async with conn.transaction():
            ft=clean(p.get("form_type"))
            if ft=="vendor_response": return await handle_vendor_response(conn,p)
            if ft=="job_update": return await handle_job_update(conn,p)
            if ft=="vendor_pilot_activation": return await handle_vendor_pilot_activation(conn,p)
            if ft=="vendor_partner": return await handle_vendor_application(conn,p)
            if ft=="facility_maintenance": return await handle_facility_lead(conn,p)
            return await handle_lead(conn,p)

@app.post("/api/process-expired")
async def process_expired(x_bmc_admin_key:str|None=Header(default=None)):
    if not ADMIN_KEY or x_bmc_admin_key!=ADMIN_KEY: raise HTTPException(403,"Forbidden")
    count=0
    async with app.state.pool.acquire() as conn:
      async with conn.transaction():
        expired=await conn.fetch("""select distinct l.* from leads l join lead_matches lm on lm.lead_id=l.lead_id
          where lm.status='offered' and lm.expires_at<now()""")
        for lead in expired:
          await conn.execute("update lead_matches set status='expired',responded_at=now() where lead_id=$1 and status='offered' and expires_at<now()",lead["lead_id"])
          await offer_next(conn,lead); count+=1
    return {"ok":True,"processed":count}


@app.post("/api/process-followups")
async def process_followups(x_bmc_admin_key:str|None=Header(default=None)):
    if not ADMIN_KEY or x_bmc_admin_key!=ADMIN_KEY: raise HTTPException(403,"Forbidden")
    sent=0
    async with app.state.pool.acquire() as conn:
      rows=await conn.fetch("""select lm.*,v.public_email,v.business_name,l.market,l.service_key,
          coalesce(s.display_name,l.service_key) as service_name
        from lead_matches lm
        join vendors v on v.vendor_id=lm.vendor_id
        join leads l on l.lead_id=lm.lead_id
        left join services s on s.service_key=l.service_key
        where v.public_email is not null and v.public_email<>''
          and (
            (lm.status='accepted' and lm.responded_at < now()-interval '4 hours') or
            (lm.status='contacted' and lm.contacted_at < now()-interval '24 hours') or
            (lm.status='estimate' and lm.estimate_at < now()-interval '48 hours')
          )
          and (lm.last_followup_at is null or lm.last_followup_at < now()-interval '24 hours')
        order by coalesce(lm.last_followup_at,lm.responded_at,lm.offered_at) asc limit 100""")
      for row in rows:
        service_name=clean(row["service_name"]) or clean(row["service_key"]) or "service"
        link=f"{PUBLIC_SITE_URL}/provider-job-update/?lead_id={row['lead_id']}&vendor_id={row['vendor_id']}&token={row['response_token']}"
        dashboard_login=f"{PUBLIC_SITE_URL}/provider-login/"
        ok=await send_mail(row["public_email"],f"Update BMC request: {service_name} in {row['market']}",
          f"""Please update the outcome of the BMC request you accepted.

Market: {row['market']}
Service: {service_name}

Mark the job contacted, estimate sent, won, or lost:
{link}

For all BMC jobs and matching settings, use Provider Login:
{dashboard_login}

Closing the loop helps BMC send work that fits your business.
""")
        if ok:
          await conn.execute("update lead_matches set last_followup_at=now() where match_id=$1",row["match_id"])
          await event(conn,"lead",row["lead_id"],"provider_followup_sent",{"vendor_id":row["vendor_id"]})
          sent+=1
    return {"ok":True,"sent":sent}


def pilot_activation_url(row):
    params=urllib.parse.urlencode({
      "vendor_id":clean(row["entity_id"]),
      "business_name":clean(row["business_name"]),
      "market":clean(row["market"])
    })
    return f"{PILOT_ACTIVATION_URL}?{params}"

def provider_service_label(row):
    name=clean(row.get("service_name") if hasattr(row,"get") else "")
    if name:
        return name
    raw=clean(row["service_key"])
    return raw.replace("_"," ").replace(" service","").strip().title() or "local service"

def first_wave_vendor_copy(row,step):
    market=clean(row["market"]) or "your area"
    service=provider_service_label(row)
    business=clean(row["business_name"])
    activation=pilot_activation_url(row)
    if step==1:
        subject=f"{market}: open to a few more {service.lower()} jobs?"
        body=f"""Hi {business},

Are you open to a few more {service.lower()} jobs in {market} if you can see the job details before deciding?

BMC is launching a local provider pilot. It is free to join.

You tell us:
- where you work
- the jobs you want
- your minimum job size
- how much work you can take

When a matching request comes in, you can review the job type, area, timing, and customer notes first. If it fits, accept it. If it does not, pass. Passing does not create a charge.

Selected pilot opportunities may be free or reduced while we prove whether BMC is worth paying for. Any later lead or territory price will be shown separately before it applies.

Join the pilot here:
{activation}

No sales call is required.

BMC Luminary Ventures LLC
{BUSINESS_POSTAL_ADDRESS}

Reply no if you do not want future outreach."""
    elif step==2:
        subject=f"Re: more {service.lower()} work in {market}"
        body=f"""Hi {business},

Just following up once.

If you want more {service.lower()} work in {market}, BMC lets you set the area, job types, minimum job size, and capacity you want. You review a matching request before deciding.

It is free to join the pilot:
{activation}

BMC Luminary Ventures LLC
{BUSINESS_POSTAL_ADDRESS}

Reply no if you do not want future outreach."""
    else:
        subject=f"Closing this out: {market} {service.lower()} pilot"
        body=f"""Hi {business},

Last note from me.

If you want to be considered for local {service.lower()} requests in {market}, you can join the free BMC pilot here:
{activation}

If not, no action is needed and we will close this out.

BMC Luminary Ventures LLC
{BUSINESS_POSTAL_ADDRESS}

Reply no to suppress future outreach."""
    return subject,body

def vendor_recruitment_copy(row,step):
    market=clean(row["market"]) or "your area"
    service=provider_service_label(row)
    business=clean(row["business_name"])
    signal=clean(row["association_signal"])
    credibility=f" I found your business through {signal}." if signal else ""
    if step==1:
        subject=f"{market}: want more {service.lower()} jobs?"
        body=f"""Hi {business},

Are you open to more {service.lower()} work in {market}?{credibility}

BMC is building a local provider network around one simple idea: do not make contractors pay just to find out the lead was wrong for them.

Joining is free. You tell us where you work, what jobs you want, your minimum job size, and your capacity. When a request fits, you review the job details first and decide whether to take it or pass.

You can join here:
{PARTNER_URL}

Selected pilot opportunities may be free or reduced while we prove the channel. Any future paid terms will be shown before they apply.

BMC Luminary Ventures LLC
{BUSINESS_POSTAL_ADDRESS}

Reply no if you do not want future outreach."""
    elif step==2:
        subject=f"Re: {service.lower()} work in {market}"
        body=f"""Hi {business},

Following up once in case a few more {service.lower()} jobs in {market} would help.

The BMC pilot is free to join. Set the jobs and area you want, review matching requests first, then accept or pass.

{PARTNER_URL}

BMC Luminary Ventures LLC
{BUSINESS_POSTAL_ADDRESS}

Reply no if you do not want future outreach."""
    else:
        subject=f"Last note: {market} {service.lower()} work"
        body=f"""Hi {business},

Last note from me.

If you want BMC to consider your business for matching {service.lower()} requests in {market}, the free provider form is here:
{PARTNER_URL}

If not, no action is needed.

BMC Luminary Ventures LLC
{BUSINESS_POSTAL_ADDRESS}

Reply no to suppress future outreach."""
    return subject,body

@app.post("/api/process-outreach")
async def process_outreach(x_bmc_admin_key:str|None=Header(default=None)):
    if not ADMIN_KEY or x_bmc_admin_key!=ADMIN_KEY: raise HTTPException(403,"Forbidden")
    if not OUTREACH_ENABLED:
        return {"ok":True,"enabled":False,"sent":0,"message":"Outbound outreach is disabled."}
    if not BUSINESS_POSTAL_ADDRESS or "CHANGE_ME" in BUSINESS_POSTAL_ADDRESS:
        raise HTTPException(409,"BUSINESS_POSTAL_ADDRESS must be configured before outbound outreach can send.")
    sent=0
    async with app.state.pool.acquire() as conn:
      already=await conn.fetchval("select count(*) from outreach where sent_at>=date_trunc('day',now())")
      allowance=max(0,OUTREACH_DAILY_LIMIT-int(already or 0))
      if allowance<=0:return {"ok":True,"enabled":True,"sent":0,"message":"Daily outreach limit reached."}
      rows=await conn.fetch("""select o.outreach_id,o.sequence_step,o.status,o.entity_id,o.wave,
          v.business_name,v.public_email,v.association_signal,
          vm.market,vs.service_key,svc.display_name as service_name
        from outreach o
        join vendors v on v.vendor_id=o.entity_id
        left join lateral (select market from vendor_markets where vendor_id=v.vendor_id order by market limit 1) vm on true
        left join lateral (select service_key from vendor_services where vendor_id=v.vendor_id order by service_key limit 1) vs on true
        left join services svc on svc.service_key=vs.service_key
        where o.entity_type='vendor' and o.campaign='vendor_recruitment'
          and o.wave=$2 and o.opt_out=false and v.public_email is not null and v.public_email<>''
          and (
            o.status='queued'
            or (o.status='sent' and o.next_followup_at<=now() and o.sequence_step<3)
          )
          and not exists(select 1 from outreach_suppressions s where lower(s.email)=lower(v.public_email))
        order by
          case when v.association_signal is not null and v.association_signal<>'' then 0 else 1 end,
          v.quality_score desc nulls last,
          coalesce(o.next_followup_at,o.created_at) asc
        limit $1""",allowance,OUTREACH_WAVE)
      for row in rows:
        step=1 if row["status"]=="queued" else int(row["sequence_step"])+1
        subject,body=(first_wave_vendor_copy(row,step) if row["wave"]=="pilot1" else vendor_recruitment_copy(row,step))
        ok=await send_mail(row["public_email"],subject,body)
        if not ok: continue
        next_at=datetime.now(timezone.utc)+(timedelta(days=4) if step==1 else timedelta(days=7))
        status="completed" if step>=3 else "sent"
        await conn.execute("""update outreach set sequence_step=$2,status=$3,subject=$4,body=$5,sent_at=now(),
            next_followup_at=$6 where outreach_id=$1""",row["outreach_id"],step,status,subject,body,next_at)
        await event(conn,"vendor",row["entity_id"],"outreach_sent",{"campaign":"vendor_recruitment","step":step,"email":row["public_email"]})
        sent+=1
    return {"ok":True,"enabled":True,"sent":sent,"daily_limit":OUTREACH_DAILY_LIMIT}


def buyer_landing(row):
    campaign=clean(row["campaign"])
    if campaign in ("institutional_facilities","church_facilities","education_facilities","arts_facilities","property_management","hospitality","multifamily","facilities"):
        return f"{PUBLIC_SITE_URL}/facility-maintenance/"
    if campaign=="restaurants":
        return f"{PUBLIC_SITE_URL}/restaurant-repair/"
    if campaign=="automotive":
        return f"{PUBLIC_SITE_URL}/request/?service=vehicle_services"
    if campaign=="growth_pack_sales":
        return f"{PUBLIC_SITE_URL}/growth-packs/"
    return f"{PUBLIC_SITE_URL}/request/"

def buyer_outreach_copy(row,step):
    business=row["business_name"]; market=row["market"] or "your area"; btype=clean(row["buyer_type"])
    landing=buyer_landing(row)
    likely=clean(row["likely_services"]).replace("|",", ")
    campaign=clean(row["campaign"])
    if campaign=="growth_pack_sales":
        sample=f"{PUBLIC_SITE_URL}/growth-packs/sample/"
        if step==1:
            subject=f"100 researched local prospects for {business}"
            body=f"""Hi {business},

I’m reaching out because BMC is testing a simple prospect-research product for local service businesses.

The $499 Local Growth Pack includes 100 researched prospects in the market you want to sell into, with public business contact paths, fit/priority notes, and an outreach angle for each prospect. The $749 Premium version adds deeper competitor analysis and a more developed outreach plan.

You can see the offer and a sample deliverable here:
{landing}
Sample:
{sample}

There is no retainer and no sales call required.

BMC Luminary Ventures LLC
{BUSINESS_POSTAL_ADDRESS}

Reply no if you do not want future outreach."""
        else:
            subject=f"Re: local prospect research for {business}"
            body=f"""Hi {business},

Following up once on the BMC Local Growth Pack. If prospect research is taking time away from selling or fulfillment, the pack is designed to hand you a prioritized list you can work immediately.

Offer + sample:
{landing}

BMC Luminary Ventures LLC
{BUSINESS_POSTAL_ADDRESS}

Reply no if you do not want future outreach."""
        return subject,body
    public_note=""
    if "school" in btype or "government" in btype:
        public_note=" If your organization has approved-vendor or purchasing rules, we can work around those requirements."
    if step==1:
        subject=f"Too many building vendors to chase in {market}?"
        body=f"""Hi {business},

If one building problem keeps turning into another vendor search, BMC may be useful.{public_note}

You can send one request with everything that needs attention: cleaning, repairs, grounds, HVAC, electrical, parking-lot work, and other building needs.

Start with the current problem here:
{landing}

You do not need a monthly plan just to send the first request.

BMC Luminary Ventures LLC
{BUSINESS_POSTAL_ADDRESS}

Reply no if you do not want future outreach."""
    else:
        subject=f"Re: building help in {market}"
        body=f"""Hi {business},

Just following up once.

If you have a building punch list, cleaning need, repair, or several small maintenance items sitting around, you can send them in one request here:

{landing}

BMC Luminary Ventures LLC
{BUSINESS_POSTAL_ADDRESS}

Reply no if you do not want future outreach."""
    return subject,body

@app.post("/api/process-buyer-outreach")
async def process_buyer_outreach(x_bmc_admin_key:str|None=Header(default=None)):
    if not ADMIN_KEY or x_bmc_admin_key!=ADMIN_KEY: raise HTTPException(403,"Forbidden")
    if not BUYER_OUTREACH_ENABLED:
        return {"ok":True,"enabled":False,"sent":0,"message":"Buyer outreach is disabled."}
    if not BUSINESS_POSTAL_ADDRESS or "CHANGE_ME" in BUSINESS_POSTAL_ADDRESS:
        raise HTTPException(409,"BUSINESS_POSTAL_ADDRESS must be configured before buyer outreach can send.")
    sent=0
    async with app.state.pool.acquire() as conn:
      already=await conn.fetchval("""select count(*) from outreach where entity_type='buyer'
        and sent_at>=date_trunc('day',now())""")
      allowance=max(0,BUYER_OUTREACH_DAILY_LIMIT-int(already or 0))
      if allowance<=0:return {"ok":True,"enabled":True,"sent":0,"message":"Buyer daily outreach limit reached."}
      rows=await conn.fetch("""select o.outreach_id,o.sequence_step,o.status,o.entity_id,
          b.business_name,b.public_email,b.market,b.buyer_type,b.campaign,b.likely_services
        from outreach o join buyers b on b.buyer_id=o.entity_id
        where o.entity_type='buyer' and o.wave=$2 and o.opt_out=false
          and b.public_email is not null and b.public_email<>''
          and (o.status='queued' or (o.status='sent' and o.next_followup_at<=now() and o.sequence_step<2))
          and not exists(select 1 from outreach_suppressions s where lower(s.email)=lower(b.public_email))
        order by case when b.priority='A' then 0 else 1 end,coalesce(o.next_followup_at,o.created_at) asc
        limit $1""",allowance,BUYER_OUTREACH_WAVE)
      for row in rows:
        step=1 if row["status"]=="queued" else 2
        subject,body=buyer_outreach_copy(row,step)
        ok=await send_mail(row["public_email"],subject,body)
        if not ok: continue
        status="completed" if step>=2 else "sent"
        next_at=datetime.now(timezone.utc)+timedelta(days=5)
        await conn.execute("""update outreach set sequence_step=$2,status=$3,subject=$4,body=$5,sent_at=now(),
          next_followup_at=$6 where outreach_id=$1""",row["outreach_id"],step,status,subject,body,next_at)
        await event(conn,"buyer",row["entity_id"],"outreach_sent",{"campaign":row["campaign"],"step":step,"email":row["public_email"]})
        sent+=1
    return {"ok":True,"enabled":True,"sent":sent,"daily_limit":BUYER_OUTREACH_DAILY_LIMIT}


@app.post("/api/process-growth-outreach")
async def process_growth_outreach(x_bmc_admin_key:str|None=Header(default=None)):
    if not ADMIN_KEY or x_bmc_admin_key!=ADMIN_KEY: raise HTTPException(403,"Forbidden")
    if not GROWTH_OUTREACH_ENABLED:
        return {"ok":True,"enabled":False,"sent":0,"message":"Growth Pack outreach is disabled."}
    if not BUSINESS_POSTAL_ADDRESS or "CHANGE_ME" in BUSINESS_POSTAL_ADDRESS:
        raise HTTPException(409,"BUSINESS_POSTAL_ADDRESS must be configured before Growth Pack outreach can send.")
    sent=0
    async with app.state.pool.acquire() as conn:
      already=await conn.fetchval("""select count(*) from outreach
        where entity_type='buyer' and campaign='growth_pack_sales'
          and sent_at>=date_trunc('day',now())""")
      allowance=max(0,GROWTH_OUTREACH_DAILY_LIMIT-int(already or 0))
      if allowance<=0:
        return {"ok":True,"enabled":True,"sent":0,"message":"Growth Pack daily outreach limit reached."}
      rows=await conn.fetch("""select o.outreach_id,o.sequence_step,o.status,o.entity_id,
          b.business_name,b.public_email,b.market,b.buyer_type,b.campaign,b.likely_services
        from outreach o join buyers b on b.buyer_id=o.entity_id
        where o.entity_type='buyer' and o.campaign='growth_pack_sales' and o.wave=$2 and o.opt_out=false
          and b.public_email is not null and b.public_email<>''
          and (o.status='queued' or (o.status='sent' and o.next_followup_at<=now() and o.sequence_step<2))
          and not exists(select 1 from outreach_suppressions s where lower(s.email)=lower(b.public_email))
        order by case when b.priority='A' then 0 else 1 end,coalesce(o.next_followup_at,o.created_at) asc
        limit $1""",allowance,GROWTH_OUTREACH_WAVE)
      for row in rows:
        step=1 if row["status"]=="queued" else 2
        subject,body=buyer_outreach_copy(row,step)
        ok=await send_mail(row["public_email"],subject,body)
        if not ok: continue
        status="completed" if step>=2 else "sent"
        next_at=datetime.now(timezone.utc)+timedelta(days=5)
        await conn.execute("""update outreach set sequence_step=$2,status=$3,subject=$4,body=$5,sent_at=now(),
          next_followup_at=$6 where outreach_id=$1""",row["outreach_id"],step,status,subject,body,next_at)
        await event(conn,"buyer",row["entity_id"],"outreach_sent",{"campaign":"growth_pack_sales","step":step,"email":row["public_email"]})
        sent+=1
    return {"ok":True,"enabled":True,"sent":sent,"daily_limit":GROWTH_OUTREACH_DAILY_LIMIT}


def require_admin(key):
    if not ADMIN_KEY or key!=ADMIN_KEY:
        raise HTTPException(403,"Forbidden")

@app.get("/api/admin/provider-service-reviews")
async def admin_provider_service_reviews(x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    async with app.state.pool.acquire() as conn:
        rows=await conn.fetch("""select e.exception_id,e.vendor_id,e.created_at,e.summary,
            v.business_name,v.status,
            coalesce((select ev.payload->'services' from events ev
              where ev.entity_type='vendor' and ev.entity_id=e.vendor_id
                and ev.event_type='portal_service_additions_requested'
                and ev.occurred_at>=e.created_at
              order by ev.occurred_at desc limit 1),'[]'::jsonb) requested_services,
            coalesce((select jsonb_agg(jsonb_build_object('service_key',s.service_key,'display_name',s.display_name) order by s.display_name)
              from vendor_services vs join services s on s.service_key=vs.service_key
              where vs.vendor_id=e.vendor_id),'[]'::jsonb) current_services
          from exceptions e join vendors v on v.vendor_id=e.vendor_id
          where e.type='provider_service_change_review' and e.status='open'
          order by e.created_at asc""")
    return {"ok":True,"count":len(rows),"records":[dict(r) for r in rows]}

@app.post("/api/admin/provider-service-review")
async def admin_provider_service_review(request:Request,x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    p=await request.json()
    exception_id=clean(p.get("exception_id"))
    decision=clean(p.get("decision")).lower()
    approved=[clean(x) for x in (p.get("approved_services") or []) if clean(x)]
    if not exception_id or decision not in ("approve","reject"):
        raise HTTPException(400,"exception_id and approve/reject decision are required")
    async with app.state.pool.acquire() as conn:
      async with conn.transaction():
        row=await conn.fetchrow("""select e.*,v.business_name from exceptions e
          join vendors v on v.vendor_id=e.vendor_id
          where e.exception_id=$1::uuid and e.type='provider_service_change_review'
            and e.status='open' for update""",exception_id)
        if not row:
            raise HTTPException(404,"Open provider service review not found")
        requested=await conn.fetchval("""select payload->'services' from events
          where entity_type='vendor' and entity_id=$1 and event_type='portal_service_additions_requested'
            and occurred_at>= $2
          order by occurred_at desc limit 1""",row["vendor_id"],row["created_at"])
        requested=list(requested or [])
        if decision=="approve":
            approved=[sk for sk in approved if sk in requested]
            if not approved:
                approved=requested
            valid_rows=await conn.fetch("""select service_key from services
              where service_key=any($1::text[]) and is_active=true""",approved)
            valid={r["service_key"] for r in valid_rows}
            for sk in sorted(valid):
                await conn.execute("""insert into vendor_services(vendor_id,service_key)
                  values($1,$2) on conflict do nothing""",row["vendor_id"],sk)
            resolution="Approved provider service additions: "+", ".join(sorted(valid))
            await event(conn,"vendor",row["vendor_id"],"provider_service_additions_approved",
              {"services":sorted(valid),"exception_id":exception_id},"admin")
        else:
            resolution="Rejected provider service additions: "+", ".join(requested)
            await event(conn,"vendor",row["vendor_id"],"provider_service_additions_rejected",
              {"services":requested,"exception_id":exception_id,"notes":clean(p.get("notes"))},"admin")
        await conn.execute("""update exceptions set status='resolved',resolved_at=now(),resolution=$2
          where exception_id=$1::uuid""",exception_id,resolution)
        return {"ok":True,"decision":decision,"vendor_id":row["vendor_id"],"message":resolution}

@app.get("/admin",response_class=HTMLResponse)
async def admin_page():
    return """<!doctype html><html><head><meta charset='utf-8'><meta name='viewport' content='width=device-width,initial-scale=1'>
<title>BMC Local Admin</title><style>
body{font-family:system-ui;max-width:1000px;margin:30px auto;padding:0 20px;background:#f7f7f7}
input,textarea,select,button{font:inherit;padding:8px;margin:4px 0;width:100%;box-sizing:border-box}
button{width:auto;cursor:pointer}.grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(180px,1fr));gap:12px}
.card{background:white;border:1px solid #ddd;border-radius:10px;padding:14px}pre{white-space:pre-wrap}.section{margin:24px 0}
</style></head><body>
<h1>BMC Local Admin</h1><p>Private/local operations page. Do not publish through the public gateway.</p>
<div class='section'><label>Admin key<input id='key' type='password'></label><button onclick='loadSummary()'>Load summary</button><button onclick='loadPreflight()'>Launch preflight</button><button onclick='loadFirstWave()'>Preview First Wave</button><button onclick='loadPilotReviews()'>Pending pilot reviews</button><button onclick='loadServiceReviews()'>Service change reviews</button><button onclick='loadResearchCandidates()'>Research candidates</button><button onclick='loadLaunchCell()'>Prescott/PV launch cell</button><button onclick='queueLaunchGaps()'>Queue launch gaps</button><button onclick='loadProviderFunnel()'>Provider funnel</button><div id='summary' class='grid'></div><div id='preflight' class='card' style='margin-top:12px'></div></div><div class='section'><h2>Provider marketing funnel</h2><p>Invite → reply → application → approval → accepted work → won work.</p><div id='provider_funnel' class='grid'></div></div><div class='section'><h2>Prescott / Prescott Valley launch cell</h2><p>Green = verified pilot/active provider. Yellow = recruitable providers with public email. Red = research gap.</p><div id='launch_cell' class='grid'></div></div><div class='section'><h2>First Wave preview</h2><div id='first_wave'></div></div>
<div class='section'><h2>Pending pilot reviews</h2><p>Providers stay unroutable until BMC explicitly approves them here.</p><div id='pilot_reviews'></div></div><div class='section'><h2>Provider service change reviews</h2><p>New trade types stay unroutable until approved here.</p><div id='service_reviews'></div></div>
<div class='section'><h2>Research candidates</h2><p>Autonomous search discoveries are evidence only until reviewed. They are not active providers and are never contacted automatically.</p><div id='research_candidates'></div></div>
<div class='section card'><h2>Vendor activation</h2><input id='vendor_id' placeholder='vendor_id'><select id='vendor_status'><option>pilot</option><option>active</option><option>paused</option><option>suppressed</option></select><input id='vendor_services' placeholder='service keys comma-separated'><input id='vendor_markets' placeholder='markets comma-separated'><button onclick='vendorUpdate()'>Save vendor</button><pre id='vendor_result'></pre></div>
<div class='section card'><h2>Classify unresolved lead</h2><input id='lead_id' placeholder='lead UUID'><input id='service_key' placeholder='service_key'><button onclick='classifyLead()'>Classify + route</button><pre id='lead_result'></pre></div>
<div class='section card'><h2>Suppress outreach email</h2><input id='suppress_email' placeholder='email'><input id='suppress_reason' placeholder='reason'><button onclick='suppressEmail()'>Suppress</button><pre id='suppress_result'></pre></div>
<script>
function headers(){return {'Content-Type':'application/json','X-BMC-Admin-Key':document.getElementById('key').value}}
async function loadSummary(){const r=await fetch('/api/admin/summary',{headers:headers()});const j=await r.json();const el=document.getElementById('summary');el.innerHTML='';Object.entries(j).forEach(function(pair){const d=document.createElement('div');d.className='card';d.innerHTML='<b>'+pair[0]+'</b><pre>'+JSON.stringify(pair[1],null,2)+'</pre>';el.appendChild(d)})}\nasync function loadPreflight(){const r=await fetch('/api/admin/preflight',{headers:headers()});const j=await r.json();document.getElementById('preflight').innerHTML='<h2>Launch preflight</h2><pre>'+JSON.stringify(j,null,2)+'</pre>'}\nasync function loadProviderFunnel(){const r=await fetch('/api/admin/provider-funnel',{headers:headers()});const j=await r.json();const el=document.getElementById('provider_funnel');el.innerHTML='';const labels={invited:'Invited',sent:'Emails sent',replied:'Replies',positive_replies:'Positive replies',applied_or_activated:'Applied / activated',pending_review:'Pending review',approved:'Approved providers',job_offers:'Jobs offered',job_accepts:'Jobs accepted',jobs_won:'Jobs won'};Object.entries(j.stages||{}).forEach(function(pair){const d=document.createElement('div');d.className='card';d.innerHTML='<b>'+labels[pair[0]]+'</b><div style="font-size:28px;font-weight:800;margin-top:6px">'+pair[1]+'</div>';el.appendChild(d)});const rates=document.createElement('div');rates.className='card';rates.innerHTML='<b>Conversion rates</b><pre>'+JSON.stringify(j.rates||{},null,2)+'</pre>';el.appendChild(rates)}
async function loadLaunchCell(){const r=await fetch('/api/admin/launch-cell',{headers:headers()});const j=await r.json();const el=document.getElementById('launch_cell');el.innerHTML='';(j.records||[]).forEach(function(x){const d=document.createElement('div');d.className='card';d.style.borderLeft='7px solid '+(x.readiness==='green'?'#238636':x.readiness==='yellow'?'#bf8700':'#cf222e');const title=document.createElement('b');title.textContent=x.service_name+' · '+x.readiness.toUpperCase();const pre=document.createElement('pre');pre.textContent='researched: '+x.researched_providers+'\nemail-ready: '+x.email_ready_providers+'\npilot/active: '+x.pilot_or_active_providers+'\nqueued outreach: '+x.queued_provider_outreach+'\nbuyer prospects: '+x.buyer_prospects+'\nlive markets: '+(x.live_markets||[]).join(', ')+'\nnext: '+x.next_action;d.appendChild(title);d.appendChild(pre);el.appendChild(d)})}
async function queueLaunchGaps(){const r=await fetch('/api/admin/queue-launch-gaps',{method:'POST',headers:headers()});const j=await r.json();alert('Queued '+(j.queued_count||0)+' launch research gaps.');await loadLaunchCell()}
async function loadFirstWave(){const r=await fetch('/api/admin/first-wave',{headers:headers()});const j=await r.json();const el=document.getElementById('first_wave');el.innerHTML='';(j.records||[]).forEach(function(x){const d=document.createElement('div');d.className='card';d.style.margin='10px 0';d.innerHTML='<b>'+x.side.toUpperCase()+' · '+x.business_name+'</b><div>'+x.market+' · '+x.email+'</div><div><strong>'+x.subject+'</strong></div><pre>'+x.body+'</pre>';el.appendChild(d)})}
async function loadServiceReviews(){const r=await fetch('/api/admin/provider-service-reviews',{headers:headers()});const j=await r.json();const el=document.getElementById('service_reviews');el.innerHTML='';if(!(j.records||[]).length){el.textContent='No provider service changes are waiting for review.';return}(j.records||[]).forEach(function(x){let requested=x.requested_services||[];if(typeof requested==='string'){try{requested=JSON.parse(requested)}catch(e){requested=[]}}const d=document.createElement('div');d.className='card';d.style.margin='10px 0';const title=document.createElement('b');title.textContent=x.business_name+' · '+x.vendor_id;const p=document.createElement('p');p.textContent='Requested services: '+requested.join(', ');const approve=document.createElement('button');approve.textContent='Approve requested services';approve.onclick=function(){reviewServiceChange(x.exception_id,'approve',requested)};const reject=document.createElement('button');reject.textContent='Reject';reject.onclick=function(){reviewServiceChange(x.exception_id,'reject',[])};d.appendChild(title);d.appendChild(p);d.appendChild(approve);d.appendChild(reject);el.appendChild(d)})}
async function reviewServiceChange(id,decision,services){const promptText=decision==='approve'?'Approve these service additions after checking credentials where needed?':'Reject these requested service additions?';if(!confirm(promptText))return;const r=await fetch('/api/admin/provider-service-review',{method:'POST',headers:headers(),body:JSON.stringify({exception_id:id,decision:decision,approved_services:services})});const j=await r.json();alert(j.message||JSON.stringify(j));await loadServiceReviews();await loadLaunchCell()}
async function loadPilotReviews(){const r=await fetch('/api/admin/pilot-reviews',{headers:headers()});const j=await r.json();const el=document.getElementById('pilot_reviews');el.innerHTML='';if(!(j.records||[]).length){el.textContent='No providers are pending review.';return}(j.records||[]).forEach(function(x){const d=document.createElement('div');d.className='card';d.style.margin='10px 0';const title=document.createElement('b');title.textContent=x.business_name+' · '+x.vendor_id;const pre=document.createElement('pre');pre.textContent=JSON.stringify(x,null,2);const btn=document.createElement('button');btn.textContent='Approve as pilot';btn.onclick=function(){approvePilot(x.vendor_id)};d.appendChild(title);d.appendChild(pre);d.appendChild(btn);el.appendChild(d)})}
async function loadResearchCandidates(){const r=await fetch('/api/admin/research-candidates?status=discovered&limit=100',{headers:headers()});const j=await r.json();const el=document.getElementById('research_candidates');el.innerHTML='';if(!(j.records||[]).length){el.textContent='No staged research candidates.';return}(j.records||[]).forEach(function(x){const d=document.createElement('div');d.className='card';d.style.margin='10px 0';const title=document.createElement('b');title.textContent=(x.candidate_name||x.source_title||x.source_domain)+' · '+x.market+' · '+x.service_name;const a=document.createElement('a');a.href=x.source_url;a.target='_blank';a.rel='noopener noreferrer';a.textContent=x.source_url;const pre=document.createElement('pre');pre.textContent=x.snippet||'';const review=document.createElement('button');review.textContent='Mark reviewed';review.onclick=function(){setResearchCandidateStatus(x.candidate_id,'reviewed')};const reject=document.createElement('button');reject.textContent='Reject';reject.onclick=function(){setResearchCandidateStatus(x.candidate_id,'rejected')};d.appendChild(title);d.appendChild(document.createElement('br'));d.appendChild(a);d.appendChild(pre);d.appendChild(review);d.appendChild(reject);el.appendChild(d)})}
async function setResearchCandidateStatus(id,status){const r=await fetch('/api/admin/research-candidate-status',{method:'POST',headers:headers(),body:JSON.stringify({candidate_id:id,status:status})});const j=await r.json();if(!j.ok)alert(JSON.stringify(j));await loadResearchCandidates()}
async function approvePilot(id){if(!confirm('Approve '+id+' for live pilot routing after credential/insurance review?'))return;const body={vendor_id:id,confirm_credentials:true};const r=await fetch('/api/admin/approve-pilot',{method:'POST',headers:headers(),body:JSON.stringify(body)});const j=await r.json();alert(j.message||JSON.stringify(j));await loadPilotReviews();await loadSummary()}
async function vendorUpdate(){const body={vendor_id:document.getElementById('vendor_id').value,status:document.getElementById('vendor_status').value,services:document.getElementById('vendor_services').value.split(',').map(function(x){return x.trim()}).filter(Boolean),markets:document.getElementById('vendor_markets').value.split(',').map(function(x){return x.trim()}).filter(Boolean)};const r=await fetch('/api/admin/vendor-status',{method:'POST',headers:headers(),body:JSON.stringify(body)});document.getElementById('vendor_result').textContent=JSON.stringify(await r.json(),null,2)}
async function classifyLead(){const body={lead_id:document.getElementById('lead_id').value,service_key:document.getElementById('service_key').value};const r=await fetch('/api/admin/classify-lead',{method:'POST',headers:headers(),body:JSON.stringify(body)});document.getElementById('lead_result').textContent=JSON.stringify(await r.json(),null,2)}
async function suppressEmail(){const body={email:document.getElementById('suppress_email').value,reason:document.getElementById('suppress_reason').value};const r=await fetch('/api/admin/suppress',{method:'POST',headers:headers(),body:JSON.stringify(body)});document.getElementById('suppress_result').textContent=JSON.stringify(await r.json(),null,2)}
</script></body></html>"""


@app.post("/api/agent-cycle")
async def agent_cycle(x_bmc_admin_key:str|None=Header(default=None)):
    """Bounded autonomous operator cycle.

    V1 may classify ambiguous leads and create internal work. It never sends
    prospecting, approves providers, changes credentials, charges/refunds money,
    or performs any other external/high-risk action.
    """
    require_admin(x_bmc_admin_key)
    if not AGENT_ENABLED:
        return {"ok":True,"enabled":False,"message":"BMC operator agent is disabled."}
    classified=0
    review_tasks=0
    research_tasks=0
    actions=[]
    async with app.state.pool.acquire() as conn:
      async with conn.transaction():
        run_id=await conn.fetchval("""insert into agent_runs(status,actions)
          values('running','[]'::jsonb) returning run_id""")

        leads=await conn.fetch("""select l.*
          from leads l
          join exceptions e on e.lead_id=l.lead_id
          where e.type='classification_needed' and e.status='open'
            and coalesce(l.service_key,'')='unclassified'
          order by l.submitted_at
          limit $1""",AGENT_CYCLE_LIMIT)
        for lead in leads:
            result=await classify_with_local_ai(conn,lead["market"],clean(lead["scope"]))
            if result and float(result.get("confidence") or 0)>=AGENT_MIN_CONFIDENCE:
                updated=await conn.fetchrow("""update leads
                  set service_key=$2,status='received',exception_reason=null,updated_at=now()
                  where lead_id=$1 returning *""",lead["lead_id"],result["service_key"])
                await conn.execute("""update exceptions
                  set status='resolved',resolved_at=now(),resolution=$2
                  where lead_id=$1 and type='classification_needed' and status='open'""",
                  lead["lead_id"],f"BMC operator AI classified as {result['service_key']} ({result['confidence']:.2f})")
                await event(conn,"lead",lead["lead_id"],"agent_classified",result,"bmc_agent")
                await offer_next(conn,updated)
                classified+=1
                actions.append({"action":"classified_lead","lead_id":str(lead["lead_id"]),"service_key":result["service_key"],"confidence":result["confidence"]})
            else:
                exists=await conn.fetchval("""select 1 from tasks
                  where lead_id=$1 and task_type='human_classification'
                    and status in ('open','queued','assigned') limit 1""",lead["lead_id"])
                if not exists:
                    await conn.execute("""insert into tasks(lead_id,service_key,task_type,status,priority,owner,summary,payload)
                      values($1,null,'human_classification','open','high','bmc_operator',$2,$3::jsonb)""",
                      lead["lead_id"],f"Classify unrecognized request in {lead['market']}",json.dumps({"source":"agent_cycle","reason":"AI unavailable or below confidence threshold"}))
                    review_tasks+=1
                    actions.append({"action":"queued_human_classification","lead_id":str(lead["lead_id"])})

        exceptions=await conn.fetch("""select exception_id,type,lead_id,vendor_id,severity,summary,recommended_action
          from exceptions
          where status='open'
            and type not in ('classification_needed','pilot_activation_review','vendor_application_review')
          order by case severity when 'critical' then 0 when 'high' then 1 else 2 end,created_at
          limit $1""",AGENT_CYCLE_LIMIT)
        for ex in exceptions:
            exists=await conn.fetchval("""select 1 from tasks
              where task_type='resolve_exception' and status in ('open','queued','assigned')
                and payload->>'exception_id'=$1 limit 1""",str(ex["exception_id"]))
            if not exists:
                await conn.execute("""insert into tasks(lead_id,task_type,status,priority,owner,summary,payload)
                  values($1,'resolve_exception','open',$2,'bmc_operator',$3,$4::jsonb)""",
                  ex["lead_id"],"high" if ex["severity"] in ("critical","high") else "normal",
                  ex["summary"] or f"Resolve {ex['type']}",
                  json.dumps({"exception_id":str(ex["exception_id"]),"type":ex["type"],"vendor_id":ex["vendor_id"],"recommended_action":ex["recommended_action"]}))
                review_tasks+=1
                actions.append({"action":"queued_exception","exception_id":str(ex["exception_id"]),"type":ex["type"]})

        if AGENT_RESEARCH_TASK_LIMIT>0:
            open_research=await conn.fetchval("""select count(*) from tasks
              where owner='research_agent' and status in ('open','queued','assigned','in_progress')""")
            available=max(0,AGENT_RESEARCH_TASK_LIMIT-int(open_research or 0))
            gaps=[]
            if available>0:
                gaps=await conn.fetch("""select rb.research_id,rb.market,rb.service_key,rb.side,rb.market_priority,
                         rb.target_gap,rb.current_count,rb.goal,rb.research_priority,rb.research_method,
                         s.display_name
                  from research_backlog rb
                  left join services s on s.service_key=rb.service_key
                  where rb.status='queued'
                  order by
                    case rb.market_priority when 'TIER1' then 0 when 'TIER2' then 1 when 'CORE' then 2 when 'INTERNAL' then 3 else 4 end,
                    case upper(rb.research_priority) when 'CRITICAL' then 0 when 'HIGH' then 1 when 'MEDIUM' then 2 when 'LOW' then 3 else 4 end,
                    rb.target_gap desc,rb.market,rb.service_key,rb.side
                  limit $1""",available)
            for gap in gaps:
                task_type="research_vendor_gap" if gap["side"]=="vendor" else "research_buyer_gap"
                summary=f"Research {gap['side']} coverage: {gap['display_name'] or gap['service_key']} in {gap['market']}"
                task_id=await conn.fetchval("""insert into tasks(service_key,task_type,status,priority,owner,summary,payload)
                  values($1,$2,'open',$3,'research_agent',$4,$5::jsonb) returning task_id""",
                  gap["service_key"],task_type,
                  "high" if clean(gap["research_priority"]).upper() in ("HIGH","CRITICAL") else "normal",
                  summary,json.dumps({
                    "research_id":str(gap["research_id"]),"market":gap["market"],"side":gap["side"],
                    "target_gap":gap["target_gap"],"current_count":gap["current_count"],"goal":gap["goal"],
                    "research_method":gap["research_method"],"external_action_allowed":False
                  }))
                await conn.execute("""update research_backlog
                  set status='assigned',last_attempt_at=now(),notes=coalesce(notes,'') || $2,updated_at=now()
                  where research_id=$1""",gap["research_id"],f"\nAssigned to BMC research agent task {task_id}")
                research_tasks+=1
                actions.append({"action":"assigned_research","research_id":str(gap["research_id"]),"task_id":str(task_id),"market":gap["market"],"service_key":gap["service_key"],"side":gap["side"]})

        await conn.execute("""update agent_runs
          set completed_at=now(),status='completed',classified_leads=$2,
              review_tasks_created=$3,research_tasks_created=$4,actions=$5::jsonb
          where run_id=$1""",run_id,classified,review_tasks,research_tasks,json.dumps(actions))
        await event(conn,"agent",run_id,"cycle_completed",{
          "classified_leads":classified,"review_tasks_created":review_tasks,
          "research_tasks_created":research_tasks,"external_actions_performed":0
        },"bmc_agent")
    return {
      "ok":True,"enabled":True,"run_id":str(run_id),
      "classified_leads":classified,"review_tasks_created":review_tasks,
      "research_tasks_created":research_tasks,"external_actions_performed":0,
      "external_actions_allowed":False,
      "actions":actions
    }

@app.get("/api/admin/agent-status")
async def admin_agent_status(x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    async with app.state.pool.acquire() as conn:
        last=await conn.fetchrow("""select run_id,started_at,completed_at,status,classified_leads,
          review_tasks_created,research_tasks_created from agent_runs
          order by started_at desc limit 1""")
        open_agent_tasks=await conn.fetchval("""select count(*) from tasks
          where owner in ('bmc_operator','research_agent') and status in ('open','queued','assigned')""")
        assigned_research=await conn.fetchval("select count(*) from research_backlog where status='assigned'")
        queued_research=await conn.fetchval("select count(*) from research_backlog where status='queued'")
        staged_candidates=await conn.fetchval("select count(*) from research_candidates where status='discovered'")
        classification_needed=await conn.fetchval("""select count(*) from exceptions
          where type='classification_needed' and status='open'""")
        open_exceptions=await conn.fetchval("select count(*) from exceptions where status='open'")
    last_run=None
    if last:
        last_run={
          "run_id":str(last["run_id"]),"started_at":last["started_at"],"completed_at":last["completed_at"],
          "status":last["status"],"classified_leads":last["classified_leads"],
          "review_tasks_created":last["review_tasks_created"],"research_tasks_created":last["research_tasks_created"]
        }
    return {
      "ok":True,
      "enabled":AGENT_ENABLED,
      "mode":"bounded_internal_operator_v1",
      "external_actions_allowed":False,
      "configured_external_action_flag":AGENT_ALLOW_EXTERNAL_ACTIONS,
      "ai":{"enabled":LOCAL_AI_ENABLED,"model":LOCAL_AI_MODEL,"minimum_confidence":AGENT_MIN_CONFIDENCE},
      "research_search":{"enabled":RESEARCH_SEARCH_ENABLED,"worker_batch":RESEARCH_WORKER_BATCH,"result_limit":RESEARCH_SEARCH_RESULTS},
      "queues":{
        "open_agent_tasks":int(open_agent_tasks or 0),
        "research_assigned":int(assigned_research or 0),
        "research_queued":int(queued_research or 0),
        "research_candidates_staged":int(staged_candidates or 0),
        "classification_needed":int(classification_needed or 0),
        "open_exceptions":int(open_exceptions or 0)
      },
      "last_run":last_run
    }


@app.post("/api/process-research")
async def process_research(x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    if not RESEARCH_SEARCH_ENABLED:
        return {"ok":True,"enabled":False,"processed":0,"staged":0,"errors":[]}
    processed=0
    staged=0
    errors=[]
    async with app.state.pool.acquire() as conn:
      tasks=await conn.fetch("""select t.task_id,t.service_key,t.payload,rb.research_id,rb.market,rb.side,
             rb.research_method,s.display_name
        from tasks t
        join research_backlog rb on rb.research_id::text=t.payload->>'research_id'
        left join services s on s.service_key=t.service_key
        where t.owner='research_agent' and t.status='open'
        order by case t.priority when 'critical' then 0 when 'high' then 1 else 2 end,t.created_at
        limit $1""",RESEARCH_WORKER_BATCH)
      for task in tasks:
        query=build_research_query(task["side"],task["market"],task["display_name"] or task["service_key"],task["research_method"])
        try:
            results=await search_research_web(query)
        except Exception as exc:
            errors.append({"task_id":str(task["task_id"]),"error":str(exc)[:300]})
            await event(conn,"task",task["task_id"],"research_search_failed",{"query":query,"error":str(exc)[:300]},"research_agent")
            continue
        async with conn.transaction():
            rank=0
            for result in results:
                rank+=1
                inserted=await conn.fetchval("""insert into research_candidates(
                    research_id,task_id,side,market,service_key,candidate_name,source_title,
                    source_url,source_domain,snippet,search_query,source_rank,status,evidence)
                  values($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,'discovered',$13::jsonb)
                  on conflict(research_id,source_url) do nothing
                  returning candidate_id""",
                  task["research_id"],task["task_id"],task["side"],task["market"],task["service_key"],
                  result["title"],result["title"],result["url"],result["domain"],result["snippet"],query,rank,
                  json.dumps({"search_engine":result["engine"],"search_score":result["score"]}))
                if inserted:
                    staged+=1
            total=await conn.fetchval("select count(*) from research_candidates where research_id=$1",task["research_id"])
            new_status="review" if int(total or 0)>0 else "searched_no_results"
            await conn.execute("""update research_backlog
              set status=$2,last_attempt_at=now(),candidates_found=$3,updated_at=now()
              where research_id=$1""",task["research_id"],new_status,int(total or 0))
            await conn.execute("""update tasks set status='completed',updated_at=now(),
              payload=payload || $2::jsonb where task_id=$1""",task["task_id"],
              json.dumps({"search_query":query,"results_returned":len(results),"staged_candidates":int(total or 0)}))
            await event(conn,"research",task["research_id"],"search_completed",{
              "task_id":str(task["task_id"]),"query":query,"results_returned":len(results),
              "staged_candidates":int(total or 0)
            },"research_agent")
            processed+=1
    return {"ok":True,"enabled":True,"processed":processed,"staged":staged,"errors":errors}

@app.get("/api/admin/research-candidates")
async def admin_research_candidates(status:str="discovered",limit:int=100,x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    safe_limit=max(1,min(250,limit))
    async with app.state.pool.acquire() as conn:
        rows=await conn.fetch("""select rc.*,s.display_name
          from research_candidates rc
          left join services s on s.service_key=rc.service_key
          where ($1='' or rc.status=$1)
          order by rc.created_at desc
          limit $2""",clean(status),safe_limit)
    records=[]
    for r in rows:
        records.append({
          "candidate_id":str(r["candidate_id"]),
          "research_id":str(r["research_id"]) if r["research_id"] else None,
          "task_id":str(r["task_id"]) if r["task_id"] else None,
          "side":r["side"],"market":r["market"],"service_key":r["service_key"],
          "service_name":r["display_name"],"candidate_name":r["candidate_name"],
          "source_title":r["source_title"],"source_url":r["source_url"],
          "source_domain":r["source_domain"],"snippet":r["snippet"],
          "search_query":r["search_query"],"source_rank":r["source_rank"],
          "status":r["status"],"evidence":r["evidence"],"created_at":r["created_at"]
        })
    return {"ok":True,"count":len(records),"records":records}

@app.post("/api/admin/research-candidate-status")
async def admin_research_candidate_status(request:Request,x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    p=await request.json()
    cid=clean(p.get("candidate_id"))
    status=clean(p.get("status")).lower()
    if status not in ("discovered","reviewed","rejected","promoted"):
        raise HTTPException(400,"Invalid research candidate status")
    async with app.state.pool.acquire() as conn:
      async with conn.transaction():
        row=await conn.fetchrow("""update research_candidates set status=$2,updated_at=now()
          where candidate_id=$1::uuid returning *""",cid,status)
        if not row:
            raise HTTPException(404,"Research candidate not found")
        await event(conn,"research_candidate",cid,"status_changed",{"status":status},"admin")
    return {"ok":True,"candidate_id":cid,"status":status}

LAUNCH_CELL_MARKETS=("Prescott","Prescott Valley")
LAUNCH_CELL_SERVICES=(
    "electrical_service","hvac_heat","handyman_repairs","residential_cleaning",
    "tree_service","landscaping","junk_hauling","towing_roadside",
    "commercial_cleaning","facility_maintenance"
)

@app.get("/api/admin/launch-cell")
async def admin_launch_cell(x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    records=[]
    async with app.state.pool.acquire() as conn:
        for service_key in LAUNCH_CELL_SERVICES:
            service_name=await service_display_name(conn,service_key)
            researched=await conn.fetchval("""select count(distinct v.vendor_id)
              from vendors v
              join vendor_services vs on vs.vendor_id=v.vendor_id
              join vendor_markets vm on vm.vendor_id=v.vendor_id
              where vs.service_key=$1 and vm.market=any($2::text[])
                and v.status not in ('suppressed')""",service_key,list(LAUNCH_CELL_MARKETS))
            email_ready=await conn.fetchval("""select count(distinct v.vendor_id)
              from vendors v
              join vendor_services vs on vs.vendor_id=v.vendor_id
              join vendor_markets vm on vm.vendor_id=v.vendor_id
              where vs.service_key=$1 and vm.market=any($2::text[])
                and v.public_email is not null and v.public_email<>''
                and v.status not in ('suppressed')""",service_key,list(LAUNCH_CELL_MARKETS))
            pilot_active=await conn.fetchval("""select count(distinct v.vendor_id)
              from vendors v
              join vendor_services vs on vs.vendor_id=v.vendor_id
              join vendor_markets vm on vm.vendor_id=v.vendor_id
              where vs.service_key=$1 and vm.market=any($2::text[])
                and v.status in ('pilot','active') and v.vendor_id not like 'test_%'""",service_key,list(LAUNCH_CELL_MARKETS))
            queued_outreach=await conn.fetchval("""select count(distinct v.vendor_id)
              from vendors v
              join vendor_services vs on vs.vendor_id=v.vendor_id
              join vendor_markets vm on vm.vendor_id=v.vendor_id
              join outreach o on o.entity_type='vendor' and o.entity_id=v.vendor_id
              where vs.service_key=$1 and vm.market=any($2::text[])
                and o.status in ('queued','sent') and o.opt_out=false""",service_key,list(LAUNCH_CELL_MARKETS))
            buyer_prospects=await conn.fetchval("""select count(*) from buyers b
              where b.market=any($2::text[])
                and $1=any(string_to_array(coalesce(b.likely_services,''),'|'))
                and b.status not in ('suppressed')""",service_key,list(LAUNCH_CELL_MARKETS))
            markets_live=await conn.fetch("""select distinct vm.market
              from vendors v join vendor_services vs on vs.vendor_id=v.vendor_id
              join vendor_markets vm on vm.vendor_id=v.vendor_id
              where vs.service_key=$1 and vm.market=any($2::text[])
                and v.status in ('pilot','active') and v.vendor_id not like 'test_%'
              order by vm.market""",service_key,list(LAUNCH_CELL_MARKETS))
            if int(pilot_active or 0)>=1:
                readiness="green"
                next_action="Route a controlled real request when demand exists."
            elif int(email_ready or 0)>=2:
                readiness="yellow"
                next_action="Recruit and verify at least one provider."
            else:
                readiness="red"
                next_action="Research more providers with public business contact paths."
            records.append({
                "service_key":service_key,"service_name":service_name,
                "researched_providers":int(researched or 0),
                "email_ready_providers":int(email_ready or 0),
                "pilot_or_active_providers":int(pilot_active or 0),
                "queued_provider_outreach":int(queued_outreach or 0),
                "buyer_prospects":int(buyer_prospects or 0),
                "live_markets":[r["market"] for r in markets_live],
                "readiness":readiness,"next_action":next_action
            })
    return {
      "ok":True,
      "markets":list(LAUNCH_CELL_MARKETS),
      "green":sum(1 for r in records if r["readiness"]=="green"),
      "yellow":sum(1 for r in records if r["readiness"]=="yellow"),
      "red":sum(1 for r in records if r["readiness"]=="red"),
      "records":records
    }

@app.post("/api/admin/queue-launch-gaps")
async def admin_queue_launch_gaps(x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    queued=[]
    async with app.state.pool.acquire() as conn:
      async with conn.transaction():
        for market in LAUNCH_CELL_MARKETS:
          for service_key in LAUNCH_CELL_SERVICES:
            email_ready=await conn.fetchval("""select count(distinct v.vendor_id)
              from vendors v
              join vendor_services vs on vs.vendor_id=v.vendor_id
              join vendor_markets vm on vm.vendor_id=v.vendor_id
              where vs.service_key=$1 and vm.market=$2
                and v.public_email is not null and v.public_email<>''
                and v.status not in ('suppressed')""",service_key,market)
            goal=3
            gap=max(0,goal-int(email_ready or 0))
            if gap>0:
                await conn.execute("""insert into research_backlog(
                    market,service_key,side,market_priority,target_gap,current_count,goal,
                    research_priority,research_method,status,notes)
                  values($1,$2,'vendor','TIER1',$3,$4,$5,'CRITICAL',
                    'Find local provider with public business website/email','queued',
                    'Prescott/PV revenue launch cell')
                  on conflict(market,service_key,side) do update set
                    target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,
                    market_priority='TIER1',research_priority='CRITICAL',
                    research_method=excluded.research_method,
                    status=case when research_backlog.status in ('assigned','review') then research_backlog.status else 'queued' end,
                    notes='Prescott/PV revenue launch cell',updated_at=now()""",
                  market,service_key,gap,int(email_ready or 0),goal)
                queued.append({"side":"vendor","market":market,"service_key":service_key,"gap":gap})

        for market in LAUNCH_CELL_MARKETS:
          for service_key in ("facility_maintenance","commercial_cleaning"):
            buyers=await conn.fetchval("""select count(*) from buyers b
              where b.market=$2
                and $1=any(string_to_array(coalesce(b.likely_services,''),'|'))
                and b.public_email is not null and b.public_email<>''
                and b.status not in ('suppressed')""",service_key,market)
            goal=5
            gap=max(0,goal-int(buyers or 0))
            if gap>0:
                await conn.execute("""insert into research_backlog(
                    market,service_key,side,market_priority,target_gap,current_count,goal,
                    research_priority,research_method,status,notes)
                  values($1,$2,'buyer','TIER1',$3,$4,$5,'HIGH',
                    'B2B facility buyers: churches schools theaters property managers medical offices gyms daycare',
                    'queued','Prescott/PV revenue launch cell')
                  on conflict(market,service_key,side) do update set
                    target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,
                    market_priority='TIER1',research_priority='HIGH',
                    research_method=excluded.research_method,
                    status=case when research_backlog.status in ('assigned','review') then research_backlog.status else 'queued' end,
                    notes='Prescott/PV revenue launch cell',updated_at=now()""",
                  market,service_key,gap,int(buyers or 0),goal)
                queued.append({"side":"buyer","market":market,"service_key":service_key,"gap":gap})
        await event(conn,"launch_cell","prescott_pv","research_gaps_queued",{"count":len(queued),"gaps":queued},"admin")
    return {"ok":True,"queued_count":len(queued),"gaps":queued}

@app.get("/api/admin/provider-funnel")
async def admin_provider_funnel(x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    async with app.state.pool.acquire() as conn:
        invited=await conn.fetchval("""select count(distinct entity_id) from outreach
          where entity_type='vendor' and campaign='vendor_recruitment' and wave=$1""",OUTREACH_WAVE)
        sent=await conn.fetchval("""select count(distinct entity_id) from outreach
          where entity_type='vendor' and campaign='vendor_recruitment' and wave=$1 and sent_at is not null""",OUTREACH_WAVE)
        replied=await conn.fetchval("""select count(distinct entity_id) from outreach
          where entity_type='vendor' and campaign='vendor_recruitment' and wave=$1 and replied_at is not null""",OUTREACH_WAVE)
        positive=await conn.fetchval("""select count(distinct entity_id) from outreach
          where entity_type='vendor' and campaign='vendor_recruitment' and wave=$1
            and lower(coalesce(reply_type,'')) in ('positive','interested','yes','interest')""",OUTREACH_WAVE)
        applied=await conn.fetchval("""select count(distinct entity_id) from events
          where entity_type='vendor' and event_type in ('application_received','pilot_activation_submitted')""")
        pending=await conn.fetchval("""select count(*) from vendors
          where status in ('applicant','pilot_pending_review') and vendor_id not like 'test_%'""")
        approved=await conn.fetchval("""select count(*) from vendors
          where status in ('pilot','active') and vendor_id not like 'test_%'""")
        offered=await conn.fetchval("""select count(*) from lead_matches lm
          join vendors v on v.vendor_id=lm.vendor_id
          where v.vendor_id not like 'test_%'""")
        accepted=await conn.fetchval("""select count(*) from lead_matches lm
          join vendors v on v.vendor_id=lm.vendor_id
          where v.vendor_id not like 'test_%'
            and lm.status in ('accepted','contacted','estimate','won')""")
        won=await conn.fetchval("""select count(*) from lead_matches lm
          join vendors v on v.vendor_id=lm.vendor_id
          where v.vendor_id not like 'test_%' and lm.status='won'""")
    def rate(a,b):
        return round((float(a or 0)/float(b or 1))*100,1) if int(b or 0)>0 else 0.0
    return {
      "ok":True,
      "wave":OUTREACH_WAVE,
      "stages":{
        "invited":int(invited or 0),
        "sent":int(sent or 0),
        "replied":int(replied or 0),
        "positive_replies":int(positive or 0),
        "applied_or_activated":int(applied or 0),
        "pending_review":int(pending or 0),
        "approved":int(approved or 0),
        "job_offers":int(offered or 0),
        "job_accepts":int(accepted or 0),
        "jobs_won":int(won or 0)
      },
      "rates":{
        "reply_rate":rate(replied,sent),
        "application_rate_from_sent":rate(applied,sent),
        "approval_rate_from_applications":rate(approved,applied),
        "job_accept_rate":rate(accepted,offered),
        "win_rate_from_accepted":rate(won,accepted)
      }
    }

@app.get("/api/admin/ai-status")
async def admin_ai_status(x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    return {"ok":True,**(await local_ai_status())}

@app.get("/api/admin/summary")
async def admin_summary(x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    async with app.state.pool.acquire() as conn:
        leads=await conn.fetch("select status,count(*) n from leads group by status order by n desc")
        vendors=await conn.fetch("select status,count(*) n from vendors group by status order by n desc")
        outreach=await conn.fetch("select entity_type,status,count(*) n from outreach group by entity_type,status order by entity_type,status")
        exceptions=await conn.fetchval("select count(*) from exceptions where status='open'")
        revenue=await conn.fetchval("select coalesce(sum(amount_cents),0) from revenue_events where status='earned'")
    return {"leads":{r["status"]:r["n"] for r in leads},"vendors":{r["status"]:r["n"] for r in vendors},"outreach":[dict(r) for r in outreach],"open_exceptions":exceptions,"earned_revenue_cents":revenue}

@app.get("/api/admin/preflight")
async def admin_preflight(x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    def configured(value):
        return bool(value and "CHANGE_ME" not in value)
    smtp_ready=configured(SMTP_HOST) and configured(SMTP_USER) and configured(SMTP_PASSWORD)
    imap_ready=IMAP_ENABLED and configured(IMAP_HOST) and configured(IMAP_USER) and configured(IMAP_PASSWORD)
    postal_ready=configured(BUSINESS_POSTAL_ADDRESS)
    stripe_ready=configured(STRIPE_WEBHOOK_SECRET)
    tunnel_ready=configured(WEBHOOK_URL)
    ai_status=await local_ai_status()
    async with app.state.pool.acquire() as conn:
        pilot_vendors=await conn.fetchval("select count(*) from vendors where status in ('pilot','active') and vendor_id not like 'test_%'")
        first_wave_vendors=await conn.fetchval("select count(*) from outreach where entity_type='vendor' and wave='pilot1'")
        first_wave_buyers=await conn.fetchval("select count(*) from outreach where entity_type='buyer' and wave='pilot1'")
        research_queued=await conn.fetchval("select count(*) from research_backlog where status='queued'")
        open_exceptions=await conn.fetchval("select count(*) from exceptions where status='open'")
    live_intake_ready=bool(smtp_ready and tunnel_ready and int(pilot_vendors or 0)>=1)
    outreach_ready=bool(smtp_ready and imap_ready and postal_ready)
    return {
      "ok":True,
      "gates":{"live_intake_ready":live_intake_ready,"outreach_ready":outreach_ready,"payments_ready":stripe_ready,
        "intelligent_search_ai_ready":bool(ai_status.get("enabled") and ai_status.get("reachable") and ai_status.get("model_available"))},
      "config":{
        "public_site_url":PUBLIC_SITE_URL,
        "webhook_url":WEBHOOK_URL or None,
        "cloudflare_tunnel_configured":tunnel_ready,
        "smtp_configured":smtp_ready,
        "imap_configured":imap_ready,
        "postal_address_configured":postal_ready,
        "stripe_webhook_configured":stripe_ready,
        "vendor_outreach_enabled":OUTREACH_ENABLED,
        "buyer_outreach_enabled":BUYER_OUTREACH_ENABLED,
        "growth_outreach_enabled":GROWTH_OUTREACH_ENABLED,
        "local_ai":ai_status
      },
      "operations":{
        "pilot_or_active_vendors":int(pilot_vendors or 0),
        "first_wave_vendors":int(first_wave_vendors or 0),
        "first_wave_buyers":int(first_wave_buyers or 0),
        "research_backlog_queued":int(research_queued or 0),
        "open_exceptions":int(open_exceptions or 0)
      },
      "next_required":[
        item for item,ready in [
          ("Configure public webhook URL",tunnel_ready),
          ("Configure transactional SMTP",smtp_ready),
          ("Activate at least one verified pilot provider",int(pilot_vendors or 0)>=1),
          ("Configure monitored IMAP inbox before outbound prospecting",imap_ready),
          ("Set real BMC postal address before outbound prospecting",postal_ready),
          ("Configure Stripe webhook after Stripe activation",stripe_ready),
          ("Start Ollama and load the configured local AI model",not LOCAL_AI_ENABLED or bool(ai_status.get("reachable") and ai_status.get("model_available")))
        ] if not ready
      ]
    }

@app.get("/api/admin/first-wave")
async def admin_first_wave(x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    records=[]
    async with app.state.pool.acquire() as conn:
        vendors=await conn.fetch("""select o.entity_id,o.wave,v.business_name,v.public_email,vm.market,vs.service_key,v.association_signal
          from outreach o join vendors v on v.vendor_id=o.entity_id
          left join lateral (select market from vendor_markets where vendor_id=v.vendor_id order by market limit 1) vm on true
          left join lateral (select service_key from vendor_services where vendor_id=v.vendor_id order by service_key limit 1) vs on true
          where o.entity_type='vendor' and o.wave='pilot1'
          order by o.created_at,o.entity_id""")
        for row in vendors:
            subject,body=first_wave_vendor_copy(row,1)
            records.append({"side":"vendor","entity_id":row["entity_id"],"business_name":row["business_name"],
              "email":row["public_email"],"market":row["market"],"subject":subject,"body":body,
              "activation_url":pilot_activation_url(row)})
        buyers=await conn.fetch("""select o.entity_id,b.business_name,b.public_email,b.market,b.buyer_type,b.campaign,b.likely_services
          from outreach o join buyers b on b.buyer_id=o.entity_id
          where o.entity_type='buyer' and o.wave='pilot1'
          order by case when b.priority='A' then 0 else 1 end,o.created_at,o.entity_id""")
        for row in buyers:
            subject,body=buyer_outreach_copy(row,1)
            records.append({"side":"buyer","entity_id":row["entity_id"],"business_name":row["business_name"],
              "email":row["public_email"],"market":row["market"],"subject":subject,"body":body})
    return {"ok":True,"count":len(records),"records":records}

@app.get("/api/admin/pilot-reviews")
async def admin_pilot_reviews(x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    async with app.state.pool.acquire() as conn:
        rows=await conn.fetch("""select v.vendor_id,v.business_name,v.public_email,v.public_phone,v.website,
          v.territory_notes,v.minimum_job,v.capacity,v.license_notes,v.insurance_notes,v.updated_at,
          array(select vs.service_key from vendor_services vs where vs.vendor_id=v.vendor_id order by vs.service_key) services,
          array(select vm.market from vendor_markets vm where vm.vendor_id=v.vendor_id order by vm.market) markets,
          (select e.occurred_at from events e where e.entity_type='vendor' and e.entity_id=v.vendor_id
             and e.event_type='pilot_activation_submitted' order by e.occurred_at desc limit 1) submitted_at
          from vendors v where v.status='pilot_pending_review'
          order by coalesce((select e.occurred_at from events e where e.entity_type='vendor' and e.entity_id=v.vendor_id
             and e.event_type='pilot_activation_submitted' order by e.occurred_at desc limit 1),v.updated_at),v.business_name""")
    return {"ok":True,"count":len(rows),"records":[dict(r) for r in rows]}

@app.post("/api/admin/approve-pilot")
async def admin_approve_pilot(request:Request,x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    p=await request.json()
    vid=clean(p.get("vendor_id"))
    confirmed=clean(p.get("confirm_credentials")).lower() in ("true","yes","1")
    if not vid: raise HTTPException(400,"vendor_id required")
    if not confirmed: raise HTTPException(400,"BMC credential/insurance review confirmation is required")
    async with app.state.pool.acquire() as conn:
        async with conn.transaction():
            vendor=await conn.fetchrow("select * from vendors where vendor_id=$1 for update",vid)
            if not vendor: raise HTTPException(404,"Vendor not found")
            if vendor["status"]!="pilot_pending_review":
                raise HTTPException(409,"Vendor is not pending pilot review")
            raw=await conn.fetchval("""select payload from events
              where entity_type='vendor' and entity_id=$1 and event_type='pilot_activation_submitted'
              order by occurred_at desc limit 1""",vid)
            try:
                activation=json.loads(raw) if isinstance(raw,str) else (raw or {})
            except Exception:
                activation={}
            if clean(activation.get("pilot_terms")).lower()!="accepted":
                raise HTTPException(409,"Provider pilot acceptance is not recorded")
            if not clean(vendor["territory_notes"]) or not clean(vendor["capacity"]):
                raise HTTPException(409,"Provider territory and capacity must be recorded before pilot approval")
            await conn.execute("update vendors set status='pilot',updated_at=now() where vendor_id=$1",vid)
            await conn.execute("""update exceptions set status='resolved',resolved_at=now(),resolution=$2
              where vendor_id=$1 and type='pilot_activation_review' and status='open'""",
              vid,clean(p.get("notes")) or "Approved for pilot routing after BMC review")
            await event(conn,"vendor",vid,"pilot_approved",{
              "credentials_review_confirmed":True,
              "notes":clean(p.get("notes"))
            },"admin")
        if clean(vendor["public_email"]):
            portal_token,portal_expires=await issue_vendor_portal_token(conn,vid)
            portal_link=provider_dashboard_url(portal_token)
            body=f"""Hi {vendor['business_name']},

You’re approved for the BMC provider pilot.

Your provider dashboard is ready:
{portal_link}

From the dashboard you can:
- review new opportunities;
- accept or pass;
- see customer details after you accept;
- update estimates and job outcomes;
- change your service area, minimum job, and capacity.

Joining the pilot itself is free. If a future lead or territory has a price, the terms will be shown before they apply.

This secure dashboard link expires on {portal_expires.strftime('%B %d, %Y')}. You can request a new one anytime from the provider login page.

BMC Luminary Ventures LLC
{BUSINESS_POSTAL_ADDRESS}
"""
            html_body=workflow_email_html(
              "You’re approved. Your BMC dashboard is ready.",
              [
                "Your provider profile is approved for the pilot.",
                "Use the dashboard to review new opportunities, accept or pass, update jobs, and change the settings BMC uses for matching.",
                "Joining the pilot itself is free. If a future lead or territory has a price, the terms will be shown before they apply.",
                f"This secure login link expires on {portal_expires.strftime('%B %d, %Y')}."
              ],
              "Open provider dashboard",
              portal_link
            )
            await send_mail(clean(vendor["public_email"]),"Your BMC provider dashboard is ready",body,html_body)
    return {"ok":True,"vendor_id":vid,"status":"pilot","message":"Provider approved for the pilot. Approval email sent when an email address is available."}

@app.post("/api/admin/vendor-status")
async def admin_vendor_status(request:Request,x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    p=await request.json()
    vid=clean(p.get("vendor_id")); status=clean(p.get("status"))
    if not vid or status not in ("prospect","applicant","pilot_pending_review","pilot","active","paused","suppressed"):
        raise HTTPException(400,"Invalid vendor/status")
    services=p.get("services") or []; markets=p.get("markets") or []
    async with app.state.pool.acquire() as conn:
        async with conn.transaction():
            found=await conn.fetchval("select 1 from vendors where vendor_id=$1",vid)
            if not found: raise HTTPException(404,"Vendor not found")
            await conn.execute("update vendors set status=$2,updated_at=now() where vendor_id=$1",vid,status)
            if services:
                await conn.execute("delete from vendor_services where vendor_id=$1",vid)
                for sk in services:
                    await conn.execute("insert into vendor_services(vendor_id,service_key) select $1,$2 where exists(select 1 from services where service_key=$2) on conflict do nothing",vid,clean(sk))
            if markets:
                await conn.execute("delete from vendor_markets where vendor_id=$1",vid)
                for m in markets:
                    await conn.execute("insert into vendor_markets(vendor_id,market) values($1,$2) on conflict do nothing",vid,clean(m))
            await event(conn,"vendor",vid,"status_updated",{"status":status,"services":services,"markets":markets},"admin")
            if status=="pilot":
                vendor=await conn.fetchrow("select business_name,public_email from vendors where vendor_id=$1",vid)
                if vendor and clean(vendor["public_email"]):
                    body=f"""Hi {vendor['business_name']},

Your BMC provider profile is approved for the pilot.

You will see matching job details before deciding whether to accept or pass. Joining the pilot is free, and passing does not create a charge. Any future paid terms will be shown before they apply.

BMC Luminary Ventures LLC
{BUSINESS_POSTAL_ADDRESS}
"""
                    await send_mail(clean(vendor["public_email"]),"You’re approved for the BMC provider pilot",body)
    return {"ok":True,"vendor_id":vid,"status":status}

@app.post("/api/admin/classify-lead")
async def admin_classify_lead(request:Request,x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    p=await request.json(); lid=clean(p.get("lead_id")); sk=clean(p.get("service_key"))
    async with app.state.pool.acquire() as conn:
        async with conn.transaction():
            valid=await conn.fetchval("select 1 from services where service_key=$1 and is_active=true",sk)
            if not valid: raise HTTPException(400,"Unknown service key")
            lead=await conn.fetchrow("update leads set service_key=$2,status='received',exception_reason=null,updated_at=now() where lead_id=$1::uuid returning *",lid,sk)
            if not lead: raise HTTPException(404,"Lead not found")
            await conn.execute("update exceptions set status='resolved',resolved_at=now(),resolution='classified by admin' where lead_id=$1 and status='open'",lead["lead_id"])
            await event(conn,"lead",lead["lead_id"],"classified",{"service_key":sk},"admin")
            await offer_next(conn,lead)
    return {"ok":True,"lead_id":lid,"service_key":sk}

@app.post("/api/admin/suppress")
async def admin_suppress(request:Request,x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    p=await request.json(); email=clean(p.get("email")).lower()
    if not email or "@" not in email: raise HTTPException(400,"Valid email required")
    async with app.state.pool.acquire() as conn:
        await conn.execute("insert into outreach_suppressions(email,reason,source) values($1,$2,'admin') on conflict(email) do update set reason=excluded.reason,source='admin'",email,clean(p.get("reason")))
        await conn.execute("""update outreach set opt_out=true,status='suppressed'
          where (entity_type='vendor' and entity_id in (select vendor_id from vendors where lower(public_email)=lower($1)))
             or (entity_type='buyer' and entity_id in (select buyer_id from buyers where lower(public_email)=lower($1)))""",email)
    return {"ok":True,"email":email,"suppressed":True}

@app.post("/api/admin/record-reply")
async def admin_record_reply(request:Request,x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    p=await request.json(); email=clean(p.get("email")).lower(); classification=clean(p.get("classification")).lower()
    if not email: raise HTTPException(400,"email required")
    async with app.state.pool.acquire() as conn:
        await conn.execute("""update outreach set replied_at=now(),reply_type=$2,status=case when $2='opt_out' then 'suppressed' else 'replied' end,
          opt_out=case when $2='opt_out' then true else opt_out end
          where outreach_id=(select outreach_id from outreach o
            where (o.entity_type='vendor' and o.entity_id in (select vendor_id from vendors where lower(public_email)=lower($1)))
               or (o.entity_type='buyer' and o.entity_id in (select buyer_id from buyers where lower(public_email)=lower($1)))
            order by created_at desc limit 1)""",email,classification or "other")
        if classification=="opt_out":
            await conn.execute("insert into outreach_suppressions(email,reason,source) values($1,'reply opt-out','reply') on conflict(email) do nothing",email)
    return {"ok":True,"email":email,"classification":classification or "other"}


def reply_text(msg):
    parts=[]
    if msg.is_multipart():
        for part in msg.walk():
            if part.get_content_type()=="text/plain" and "attachment" not in str(part.get("Content-Disposition","")).lower():
                try: parts.append(part.get_payload(decode=True).decode(part.get_content_charset() or "utf-8","ignore"))
                except Exception: pass
    else:
        try: parts.append(msg.get_payload(decode=True).decode(msg.get_content_charset() or "utf-8","ignore"))
        except Exception: pass
    return "\n".join(parts)[:10000]

def classify_reply_text(body):
    t=(body or "").lower()
    optout=["unsubscribe","remove me","stop emailing","stop email","do not contact","don't contact","no thanks","not interested","take me off"]
    positive=["interested","tell me more","send me","sign me up","sounds good","let's talk","lets talk","yes please","call me"]
    if any(x in t for x in optout): return "opt_out"
    if any(x in t for x in positive): return "positive"
    return "other"

@app.post("/api/process-replies")
async def process_replies(x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    if not IMAP_ENABLED:
        return {"ok":True,"enabled":False,"processed":0,"message":"IMAP reply polling is disabled."}
    if not all([IMAP_HOST,IMAP_USER,IMAP_PASSWORD]):
        raise HTTPException(409,"IMAP credentials are incomplete")
    processed=0; matched=0
    box=imaplib.IMAP4_SSL(IMAP_HOST,IMAP_PORT)
    try:
        box.login(IMAP_USER,IMAP_PASSWORD); box.select(IMAP_FOLDER)
        status,data=box.search(None,"UNSEEN")
        ids=(data[0].split() if status=="OK" and data and data[0] else [])[-100:]
        async with app.state.pool.acquire() as conn:
            for mid in ids:
                status,msgdata=box.fetch(mid,"(RFC822)")
                if status!="OK" or not msgdata: continue
                raw=next((x[1] for x in msgdata if isinstance(x,tuple)),None)
                if not raw: continue
                msg=email.message_from_bytes(raw)
                sender=parseaddr(msg.get("From",""))[1].lower().strip()
                if not sender: continue
                row=await conn.fetchrow("""select o.outreach_id,o.entity_type,o.entity_id
                  from outreach o
                  where (o.entity_type='vendor' and o.entity_id in (select vendor_id from vendors where lower(public_email)=lower($1)))
                     or (o.entity_type='buyer' and o.entity_id in (select buyer_id from buyers where lower(public_email)=lower($1)))
                  order by o.created_at desc limit 1""",sender)
                processed+=1
                if not row: continue
                body=reply_text(msg); classification=classify_reply_text(body)
                await conn.execute("""update outreach set replied_at=now(),reply_type=$2,
                  status=case when $2='opt_out' then 'suppressed' else 'replied' end,
                  opt_out=case when $2='opt_out' then true else opt_out end
                  where outreach_id=$1""",row["outreach_id"],classification)
                if classification=="opt_out":
                    await conn.execute("insert into outreach_suppressions(email,reason,source) values($1,'reply opt-out','imap') on conflict(email) do nothing",sender)
                await event(conn,row["entity_type"],row["entity_id"],"outreach_reply",{"classification":classification,"email":sender})
                box.store(mid,"+FLAGS","\\Seen"); matched+=1
    finally:
        try: box.logout()
        except Exception: pass
    return {"ok":True,"enabled":True,"processed":processed,"matched":matched}


def verify_stripe_signature(payload,header,tolerance=300):
    if not STRIPE_WEBHOOK_SECRET or "CHANGE_ME" in STRIPE_WEBHOOK_SECRET:
        raise HTTPException(503,"Stripe webhook is not configured")
    fields={}
    for part in (header or "").split(","):
        if "=" in part:
            k,v=part.split("=",1); fields.setdefault(k,[]).append(v)
    try: ts=int(fields.get("t",["0"])[0])
    except ValueError: raise HTTPException(400,"Invalid Stripe signature timestamp")
    if abs(int(time.time())-ts)>tolerance:
        raise HTTPException(400,"Stripe signature timestamp outside tolerance")
    expected=hmac.new(STRIPE_WEBHOOK_SECRET.encode(),str(ts).encode()+b"."+payload,hashlib.sha256).hexdigest()
    if not any(hmac.compare_digest(expected,sig) for sig in fields.get("v1",[])):
        raise HTTPException(400,"Invalid Stripe signature")

def nested(obj,*path):
    cur=obj
    for key in path:
        if not isinstance(cur,dict): return None
        cur=cur.get(key)
    return cur

async def stripe_product_key(conn,obj):
    metadata=obj.get("metadata") or {}
    key=clean(metadata.get("product_key"))
    if key and await conn.fetchval("select 1 from products where product_key=$1",key):
        return key
    link=clean(obj.get("payment_link"))
    if link:
        found=await conn.fetchval("select product_key from products where stripe_payment_link_id=$1 or payment_link_url=$1",link)
        if found:return found
    price_id=None
    items=nested(obj,"items","data") or nested(obj,"lines","data") or []
    if items:
        item=items[0] or {}
        price_id=clean(nested(item,"price","id") or nested(item,"pricing","price_details","price"))
    if price_id:
        return await conn.fetchval("select product_key from products where stripe_price_id=$1",price_id)
    return None

def stripe_email(obj):
    return clean(nested(obj,"customer_details","email") or obj.get("customer_email") or nested(obj,"customer","email"))

async def record_revenue(conn,product_key,amount,currency,model,notes):
    service_key=await conn.fetchval("select service_key from products where product_key=$1",product_key) if product_key else None
    await conn.execute("""insert into revenue_events(service_key,model,amount_cents,status,notes)
      values($1,$2,$3,'earned',$4)""",service_key,model,int(amount or 0),notes)

@app.post("/api/stripe-webhook")
async def stripe_webhook(request:Request,stripe_signature:str|None=Header(default=None,alias="Stripe-Signature")):
    payload=await request.body()
    verify_stripe_signature(payload,stripe_signature)
    try:evt=json.loads(payload)
    except json.JSONDecodeError: raise HTTPException(400,"Invalid JSON")
    event_id=clean(evt.get("id")); event_type=clean(evt.get("type"))
    obj=nested(evt,"data","object") or {}
    if not event_id or not event_type: raise HTTPException(400,"Invalid Stripe event")
    async with app.state.pool.acquire() as conn:
      async with conn.transaction():
        if await conn.fetchval("select 1 from payment_events where stripe_event_id=$1",event_id):
            return {"received":True,"duplicate":True}
        product_key=await stripe_product_key(conn,obj)
        customer_email=stripe_email(obj)
        amount=int(obj.get("amount_total") or obj.get("amount_paid") or obj.get("amount") or 0)
        currency=clean(obj.get("currency") or "usd")
        status=clean(obj.get("payment_status") or obj.get("status") or "received")
        object_id=clean(obj.get("id"))
        await conn.execute("""insert into payment_events(stripe_event_id,event_type,stripe_object_id,product_key,customer_email,amount_cents,currency,status,raw_payload)
          values($1,$2,$3,$4,$5,$6,$7,$8,$9::jsonb)""",
          event_id,event_type,object_id,product_key,customer_email,amount,currency,status,json.dumps(evt))

        if event_type in ("checkout.session.completed","checkout.session.async_payment_succeeded"):
            mode=clean(obj.get("mode"))
            paid=status in ("paid","complete") or event_type=="checkout.session.async_payment_succeeded"
            if mode!="subscription" and paid:
                await record_revenue(conn,product_key,amount,currency,"stripe_checkout",f"Stripe event {event_id}; session {object_id}")
                payment_intent_id=clean(obj.get("payment_intent"))
                order_id=await conn.fetchval("""insert into orders(product_key,stripe_checkout_session_id,stripe_payment_intent_id,customer_email,amount_cents,currency,payment_status,status,raw_payload)
                  values($1,$2,$3,$4,$5,$6,$7,'paid_needs_intake',$8::jsonb)
                  on conflict(stripe_checkout_session_id) do update set
                    product_key=coalesce(excluded.product_key,orders.product_key),
                    stripe_payment_intent_id=coalesce(excluded.stripe_payment_intent_id,orders.stripe_payment_intent_id),
                    customer_email=coalesce(excluded.customer_email,orders.customer_email),
                    amount_cents=excluded.amount_cents,currency=excluded.currency,payment_status=excluded.payment_status,
                    raw_payload=excluded.raw_payload,updated_at=now()
                  returning order_id""",
                  product_key,object_id,payment_intent_id,customer_email,amount,currency,status,json.dumps(obj))
                service_key=await conn.fetchval("select service_key from products where product_key=$1",product_key) if product_key else None
                if customer_email and service_key:
                    recent=await conn.fetchrow("""select l.lead_id,l.submission_id
                      from leads l
                      where lower(l.email)=lower($1) and l.service_key=$2 and l.status='internal_queue'
                        and l.submitted_at>=now()-interval '7 days'
                        and not exists(select 1 from orders o where o.lead_id=l.lead_id and o.order_id<>$3)
                      order by l.submitted_at desc limit 1""",customer_email,service_key,order_id)
                    if recent:
                        await conn.execute("""update orders set lead_id=$2,intake_submission_id=$3,status='ready_for_fulfillment',updated_at=now()
                          where order_id=$1""",order_id,recent["lead_id"],recent["submission_id"])
                        await conn.execute("update tasks set order_id=$2,updated_at=now() where lead_id=$1 and order_id is null",recent["lead_id"],order_id)
                        await event(conn,"order",order_id,"intake_auto_linked",{"lead_id":str(recent["lead_id"]),"submission_id":recent["submission_id"]},"stripe")
                await event(conn,"order",order_id,"paid",{"product_key":product_key,"amount_cents":amount,"email":customer_email},"stripe")
                await event(conn,"payment",event_id,"payment_received",{"product_key":product_key,"amount_cents":amount,"email":customer_email,"order_id":str(order_id)},"stripe")
        elif event_type=="invoice.paid":
            if amount>0:
                await record_revenue(conn,product_key,amount,currency,"stripe_subscription_invoice",f"Stripe event {event_id}; invoice {object_id}")
                await event(conn,"payment",event_id,"subscription_payment_received",{"product_key":product_key,"amount_cents":amount,"email":customer_email},"stripe")
        elif event_type in ("customer.subscription.created","customer.subscription.updated","customer.subscription.deleted","customer.subscription.paused","customer.subscription.resumed"):
            sid=object_id
            if sid:
                period=nested(obj,"current_period_end")
                period_dt=datetime.fromtimestamp(period,timezone.utc) if isinstance(period,(int,float)) else None
                await conn.execute("""insert into subscriptions(stripe_subscription_id,product_key,customer_email,status,current_period_end,cancel_at_period_end,raw_payload,updated_at)
                  values($1,$2,$3,$4,$5,$6,$7::jsonb,now())
                  on conflict(stripe_subscription_id) do update set product_key=excluded.product_key,customer_email=excluded.customer_email,
                    status=excluded.status,current_period_end=excluded.current_period_end,cancel_at_period_end=excluded.cancel_at_period_end,
                    raw_payload=excluded.raw_payload,updated_at=now()""",
                  sid,product_key,customer_email,clean(obj.get("status")),period_dt,bool(obj.get("cancel_at_period_end")),json.dumps(obj))
        elif event_type=="refund.created":
            refunded=int(obj.get("amount") or obj.get("amount_refunded") or 0)
            if refunded>0:
                await record_revenue(conn,product_key,-refunded,currency,"stripe_refund",f"Stripe refund event {event_id}; object {object_id}")
                await event(conn,"payment",event_id,"refund_recorded",{"product_key":product_key,"amount_cents":refunded},"stripe")
    return {"received":True}
