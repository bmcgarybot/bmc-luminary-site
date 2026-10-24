import os, json, uuid, re, imaplib, email, asyncio, urllib.request, hmac, hashlib, time
from datetime import datetime, timedelta, timezone
from email.message import EmailMessage
from email.utils import parseaddr
import asyncpg
import aiosmtplib
from fastapi import FastAPI, Request, Header, HTTPException
from fastapi.middleware.cors import CORSMiddleware
from fastapi.responses import HTMLResponse

DB_DSN=os.getenv("DATABASE_URL","postgresql://bmc_automation:change@postgres:5432/bmc_portfolio")
PUBLIC_SITE_URL=os.getenv("PUBLIC_SITE_URL","https://bmcluminaryventures.com").rstrip("/")
WEBHOOK_URL=os.getenv("WEBHOOK_URL","").strip()
CLOUDFLARE_TUNNEL_TOKEN=os.getenv("CLOUDFLARE_TUNNEL_TOKEN","").strip()
ADMIN_KEY=os.getenv("BMC_ADMIN_KEY","")
OFFER_HOURS=int(os.getenv("OFFER_HOURS","2"))
SMTP_HOST=os.getenv("SMTP_HOST","")
SMTP_PORT=int(os.getenv("SMTP_PORT","587"))
SMTP_USER=os.getenv("SMTP_USER","")
SMTP_PASSWORD=os.getenv("SMTP_PASSWORD","")
SMTP_FROM=os.getenv("SMTP_FROM",SMTP_USER or "contact@bmcluminaryventures.com")
SMTP_STARTTLS=os.getenv("SMTP_STARTTLS","true").lower()=="true"
SMTP_DRY_RUN=os.getenv("SMTP_DRY_RUN","false").lower()=="true"
OUTREACH_ENABLED=os.getenv("OUTREACH_ENABLED","false").lower()=="true"
OUTREACH_DAILY_LIMIT=int(os.getenv("OUTREACH_DAILY_LIMIT","25"))
OUTREACH_WAVE=os.getenv("OUTREACH_WAVE","pilot1").strip() or "pilot1"
BUYER_OUTREACH_ENABLED=os.getenv("BUYER_OUTREACH_ENABLED","false").lower()=="true"
BUYER_OUTREACH_DAILY_LIMIT=int(os.getenv("BUYER_OUTREACH_DAILY_LIMIT","15"))
BUYER_OUTREACH_WAVE=os.getenv("BUYER_OUTREACH_WAVE","pilot1").strip() or "pilot1"
BUSINESS_POSTAL_ADDRESS=os.getenv("BUSINESS_POSTAL_ADDRESS","").strip()
PARTNER_URL=f"{PUBLIC_SITE_URL}/portfolio/vendor-partner/"
IMAP_ENABLED=os.getenv("IMAP_ENABLED","false").lower()=="true"
IMAP_HOST=os.getenv("IMAP_HOST","")
IMAP_PORT=int(os.getenv("IMAP_PORT","993"))
IMAP_USER=os.getenv("IMAP_USER","")
IMAP_PASSWORD=os.getenv("IMAP_PASSWORD","")
IMAP_FOLDER=os.getenv("IMAP_FOLDER","INBOX")
LOCAL_AI_URL=os.getenv("LOCAL_AI_URL","").rstrip("/")
LOCAL_AI_MODEL=os.getenv("LOCAL_AI_MODEL","qwen3:1.7b")
LOCAL_AI_ENABLED=os.getenv("LOCAL_AI_ENABLED","true").lower()=="true"
STRIPE_WEBHOOK_SECRET=os.getenv("STRIPE_WEBHOOK_SECRET","").strip()

app=FastAPI(title="BMC Portfolio Ops API",version="0.1.0")
app.add_middleware(CORSMiddleware,allow_origins=[
    "https://bmcluminaryventures.com","https://www.bmcluminaryventures.com"
],allow_credentials=False,allow_methods=["POST","GET"],allow_headers=["*"])

@app.on_event("startup")
async def startup():
    app.state.pool=await asyncpg.create_pool(DB_DSN,min_size=1,max_size=5)

@app.on_event("shutdown")
async def shutdown():
    await app.state.pool.close()

async def send_mail(to,subject,body):
    if not to: return False
    if SMTP_DRY_RUN: return True
    if not SMTP_HOST or "CHANGE_ME" in SMTP_HOST: return False
    try:
        msg=EmailMessage(); msg["From"]=SMTP_FROM; msg["To"]=to; msg["Subject"]=subject; msg.set_content(body)
        await aiosmtplib.send(msg,hostname=SMTP_HOST,port=SMTP_PORT,username=SMTP_USER or None,
            password=SMTP_PASSWORD or None,start_tls=SMTP_STARTTLS)
        return True
    except Exception:
        return False

def clean(v): return str(v or "").strip()
def slug(v): return re.sub(r"[^a-z0-9]+","-",clean(v).lower()).strip("-")[:40] or "vendor"

async def event(conn,etype,eid,kind,payload=None,actor="system"):
    await conn.execute("insert into events(entity_type,entity_id,event_type,actor,payload) values($1,$2,$3,$4,$5::jsonb)",
                       etype,str(eid),kind,actor,json.dumps(payload or {}))



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
    link=f"{PUBLIC_SITE_URL}/portfolio/provider-response/?lead_id={lead['lead_id']}&vendor_id={vendor['vendor_id']}&token={token}"
    summary=clean(lead.get("scope"))[:1200]
    body=f"""New BMC service request

Market: {lead['market']}
Service: {lead['service_key']}
Timing: {clean(lead.get('urgency')) or 'Not specified'}
Scope: {summary}

Accept or decline securely:
{link}

Only accept if this fits your territory and current capacity.
"""
    delivered=await send_mail(vendor["public_email"],f"New {lead['service_key']} request in {lead['market']}",body)
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
        vendor=await conn.fetchrow("""select vendor_id,business_name,public_email,public_phone,website
          from vendors where vendor_id=$1""",vendor_id)
        if not vendor: raise HTTPException(409,"Provider record is unavailable")
        await conn.execute("update lead_matches set status='accepted',responded_at=now() where match_id=$1",row["match_id"])
        await conn.execute("update leads set status='provider_accepted',updated_at=now() where lead_id=$1",row["lead_id"])
        await event(conn,"lead",row["lead_id"],"provider_accepted",{"vendor_id":vendor_id},vendor_id)

        job_link=f"{PUBLIC_SITE_URL}/portfolio/provider-job-update/?lead_id={row['lead_id']}&vendor_id={vendor_id}&token={token}"
        customer_name=clean(row["customer_name"]) or "Customer"
        customer_business=clean(row["business_name"])
        customer_email=clean(row["email"])
        customer_phone=clean(row["phone"])
        preferred=clean(row["preferred_contact"])
        scope=clean(row["scope"])
        urgency=clean(row["urgency"])

        provider_body=f"""You accepted a BMC service request. The customer's contact details are now released for this request.

Market: {row['market']}
Service: {row['service_key']}
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
        await send_mail(vendor["public_email"],f"Customer contact released: {row['service_key']} in {row['market']}",provider_body)

        provider_contact=[]
        if clean(vendor["public_phone"]): provider_contact.append(f"Phone: {clean(vendor['public_phone'])}")
        if clean(vendor["public_email"]): provider_contact.append(f"Email: {clean(vendor['public_email'])}")
        if clean(vendor["website"]): provider_contact.append(f"Website: {clean(vendor['website'])}")
        contact_block="\n".join(provider_contact) or "The provider will contact you using the details in your request."
        if customer_email:
            customer_body=f"""A participating provider accepted your BMC service request.

Provider: {vendor['business_name']}
Market: {row['market']}
Service: {row['service_key']}

{contact_block}

The provider is an independent business and will communicate its own pricing, scope, scheduling, warranties, and job terms directly with you. BMC will follow the request through the estimate/outcome stage.

Reference: {row['lead_id']}
BMC Luminary Ventures LLC
"""
            await send_mail(customer_email,f"Provider matched for your {row['service_key']} request",customer_body)

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
      notes=concat_ws(E'\n',nullif(notes,''),$10),
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
    return {"ok":True,"status":"application_received","vendor_id":vid,"message":"Application received. BMC will review the service and territory details."}



FACILITY_SERVICE_FIELDS={
    "need_commercial_cleaning":"commercial_cleaning",
    "need_floor_carpet":"floor_carpet",
    "need_window_cleaning":"window_cleaning",
    "need_landscaping":"landscaping",
    "need_tree_service":"tree_service",
    "need_junk_hauling":"junk_hauling",
    "need_pest_control":"pest_control",
    "need_hvac_heat":"hvac_heat",
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
    score=(20 if p.get("email") or p.get("phone") else 0)+(20 if scope else 0)+40+(20 if urgency in ["ASAP","Urgent","Same day if possible"] else 0)
    parent_id=await conn.fetchval("""insert into leads(submission_id,form_type,market,service_key,service_type,customer_name,business_name,email,phone,scope,urgency,source_page,consent,lead_score,status,raw_payload)
      values($1,'facility_maintenance',$2,'facility_maintenance',$3,$4,$5,$6,$7,$8,$9,$10,true,$11,'split',$12::jsonb) returning lead_id""",
      submission_id,market,facility_type,clean(p.get("contact_name")),clean(p.get("business_name")),clean(p.get("email")),clean(p.get("phone")),scope,urgency,clean(p.get("page")),score,json.dumps(p))
    await event(conn,"lead",parent_id,"facility_request_received",{"services":requested,"facility_type":facility_type})
    for sk in requested:
        child_id=await conn.fetchval("""insert into leads(parent_lead_id,submission_id,form_type,market,service_key,service_type,customer_name,business_name,email,phone,scope,urgency,source_page,consent,lead_score,status,raw_payload)
          values($1,$2,'facility_child',$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,true,$13,'received',$14::jsonb) returning lead_id""",
          parent_id,f"{submission_id}:{sk}",market,sk,facility_type,clean(p.get("contact_name")),clean(p.get("business_name")),clean(p.get("email")),clean(p.get("phone")),
          f"{facility_type}: {scope}",urgency,clean(p.get("page")),score,json.dumps(p))
        child=await conn.fetchrow("select * from leads where lead_id=$1",child_id)
        await event(conn,"lead",child_id,"facility_child_created",{"parent_lead_id":str(parent_id),"service_key":sk})
        await offer_next(conn,child)
    if p.get("email"):
        await send_mail(clean(p.get("email")),"BMC received your facility request",
          f"We received one facility request covering {len(requested)} service categories in {market}. BMC split the work into the appropriate service workflows so each category can be matched separately.\n\nReference: {parent_id}\nBMC Luminary Ventures LLC")
    return {"ok":True,"status":"split","lead_id":str(parent_id),"child_requests":len(requested),"message":f"Facility request received. BMC split it into {len(requested)} service workflows for matching."}

async def handle_lead(conn,p):
    form_type=clean(p.get("form_type")) or "general"
    market=clean(p.get("market"))
    scope=clean(p.get("scope") or p.get("problem") or p.get("notes"))
    service_type=clean(p.get("service_type"))
    service_key=clean(p.get("service_key")) or form_type
    ai_classification=None

    if form_type=="universal_request" and not clean(p.get("service_key")):
        service_key="unclassified"
        ai_text=(scope+"\nRequest type: "+service_type).strip()
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

    lead_id=await conn.fetchval("""insert into leads(submission_id,form_type,market,service_key,service_type,customer_name,business_name,email,phone,preferred_contact,scope,urgency,source_page,consent,lead_score,status,raw_payload)
      values($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,true,$14,$15,$16::jsonb) returning lead_id""",
      submission_id,form_type,market,service_key,service_type,clean(p.get("contact_name")),clean(p.get("business_name")),
      clean(p.get("email")),clean(p.get("phone")),clean(p.get("preferred_contact")),scope,urgency,clean(p.get("page")),score,status,json.dumps(p))

    await event(conn,"lead",lead_id,"received",{
      "service_key":service_key,"market":market,"fulfillment_mode":fulfillment_mode,"ai_classification":ai_classification
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
        workflow_text="provider matching" if fulfillment_mode=="provider_match" else "BMC fulfillment"
        await send_mail(clean(p.get("email")),"BMC received your request",
          f"We received your request for {service_key} in {market}. It is now in the {workflow_text} workflow.\n\nReference: {lead_id}\nBMC Luminary Ventures LLC")

    if service_key=="unclassified":
        await conn.execute("""insert into exceptions(type,lead_id,severity,summary,recommended_action)
          values('classification_needed',$1,'normal',$2,$3)""",
          lead_id,f"Request needs classification: {scope[:250]}","Classify service_key, then route")
        return {"ok":True,"status":"needs_classification","lead_id":str(lead_id),"message":"Request received. BMC will classify it before routing."}

    if fulfillment_mode=="provider_match":
        lead=await conn.fetchrow("select * from leads where lead_id=$1",lead_id)
        await offer_next(conn,lead)
        final_status=await conn.fetchval("select status from leads where lead_id=$1",lead_id)
        return {"ok":True,"status":final_status,"lead_id":str(lead_id),"message":"Request received. BMC has started provider matching."}

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
    return {"ok":True,"status":"internal_queue","lead_id":str(lead_id),"task_id":str(task_id),"message":"Request received and queued for BMC fulfillment."}


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
      rows=await conn.fetch("""select lm.*,v.public_email,v.business_name,l.market,l.service_key
        from lead_matches lm join vendors v on v.vendor_id=lm.vendor_id join leads l on l.lead_id=lm.lead_id
        where v.public_email is not null and v.public_email<>''
          and (
            (lm.status='accepted' and lm.responded_at < now()-interval '4 hours') or
            (lm.status='contacted' and lm.contacted_at < now()-interval '24 hours') or
            (lm.status='estimate' and lm.estimate_at < now()-interval '48 hours')
          )
          and (lm.last_followup_at is null or lm.last_followup_at < now()-interval '24 hours')
        order by coalesce(lm.last_followup_at,lm.responded_at,lm.offered_at) asc limit 100""")
      for row in rows:
        link=f"{PUBLIC_SITE_URL}/portfolio/provider-job-update/?lead_id={row['lead_id']}&vendor_id={row['vendor_id']}&token={row['response_token']}"
        ok=await send_mail(row["public_email"],f"Update BMC request: {row['service_key']} in {row['market']}",
          f"""Please update the outcome of the BMC request you accepted.

Market: {row['market']}
Service: {row['service_key']}

Mark contacted, estimate sent, won, or lost:
{link}

Closing the loop helps BMC route future work more accurately.
""")
        if ok:
          await conn.execute("update lead_matches set last_followup_at=now() where match_id=$1",row["match_id"])
          await event(conn,"lead",row["lead_id"],"provider_followup_sent",{"vendor_id":row["vendor_id"]})
          sent+=1
    return {"ok":True,"sent":sent}


def vendor_recruitment_copy(row,step):
    market=row["market"] or "your area"
    service=row["service_key"] or "local service"
    business=row["business_name"]
    signal=clean(row["association_signal"])
    if step==1:
        if signal:
            subject=f"Put your local credibility to work in {market}"
            body=f"""Hi {business},

You have already invested in local credibility through {signal}. BMC Luminary Ventures is building an active request-and-referral channel for {service} in {market}.

The goal is simple: add qualified local work on top of the credibility you already paid to establish, rather than selling you another passive directory listing.

If you are taking new work, tell us the territory, job types, and capacity you want here:
{PARTNER_URL}

No sales meeting is required. We will confirm any paid lead or territory terms before anything is activated.

BMC Luminary Ventures LLC
{BUSINESS_POSTAL_ADDRESS}

If this is not relevant, reply no and we will suppress future outreach."""
        else:
            subject=f"{market} {service} partner"
            body=f"""Hi {business},

BMC Luminary Ventures is building a local request-and-referral channel for {service} in {market}.

We are selecting providers by service area and job fit rather than sending every request to a giant list. If you are taking new work, tell us the territory, job types, and capacity you want here:
{PARTNER_URL}

No sales meeting is required. We will confirm any paid lead or territory terms before anything is activated.

BMC Luminary Ventures LLC
{BUSINESS_POSTAL_ADDRESS}

If this is not relevant, reply no and we will suppress future outreach."""
    elif step==2:
        subject=f"Re: {market} {service} partner"
        body=f"""Hi {business},

Following up in case additional {service} work in {market} is relevant. The partner form lets you specify exactly which jobs and territory you want:
{PARTNER_URL}

BMC Luminary Ventures LLC
{BUSINESS_POSTAL_ADDRESS}

Reply no if you do not want future outreach."""
    else:
        subject=f"Last note: {market} {service} requests"
        body=f"""Hi {business},

Last note from me on the BMC {service} partner pool in {market}. If you want to be considered for qualified local requests, the partner form is here:
{PARTNER_URL}

If not, no action is needed and we will close this sequence.

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
      rows=await conn.fetch("""select o.outreach_id,o.sequence_step,o.status,o.entity_id,
          v.business_name,v.public_email,v.association_signal,
          vm.market,vs.service_key
        from outreach o
        join vendors v on v.vendor_id=o.entity_id
        left join lateral (select market from vendor_markets where vendor_id=v.vendor_id order by market limit 1) vm on true
        left join lateral (select service_key from vendor_services where vendor_id=v.vendor_id order by service_key limit 1) vs on true
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
        subject,body=vendor_recruitment_copy(row,step)
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
        return f"{PUBLIC_SITE_URL}/portfolio/facility-maintenance/"
    if campaign=="restaurants":
        return f"{PUBLIC_SITE_URL}/portfolio/restaurant-repair/"
    if campaign=="automotive":
        return f"{PUBLIC_SITE_URL}/portfolio/request/?service=vehicle_services"
    return f"{PUBLIC_SITE_URL}/portfolio/request/"

def buyer_outreach_copy(row,step):
    business=row["business_name"]; market=row["market"] or "your area"; btype=clean(row["buyer_type"])
    landing=buyer_landing(row)
    likely=clean(row["likely_services"]).replace("|",", ")
    public_note=""
    if "school" in btype or "government" in btype:
        public_note=" We understand formal procurement or approved-vendor rules may apply."
    if step==1:
        subject=f"One request for facility work in {market}"
        body=f"""Hi {business},

BMC Luminary Ventures is building an Arizona service-coordination network for organizations that repeatedly need local vendors.{public_note}

Instead of calling separate companies for every project, you can submit one request and BMC can route the work by service and market. Based on your type of facility, common categories may include {likely or 'cleaning, grounds, repairs, and recurring maintenance'}.

Request or test the concierge here:
{landing}

There is no sales call required.

BMC Luminary Ventures LLC
{BUSINESS_POSTAL_ADDRESS}

Reply no if you do not want future outreach."""
    else:
        subject=f"Re: facility service coordination in {market}"
        body=f"""Hi {business},

Just following up once on the BMC service concierge. If your organization has a deep-cleaning project, recurring maintenance need, or several vendor categories to coordinate, you can submit it here:

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


def require_admin(key):
    if not ADMIN_KEY or key!=ADMIN_KEY:
        raise HTTPException(403,"Forbidden")

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
<div class='section'><label>Admin key<input id='key' type='password'></label><button onclick='loadSummary()'>Load summary</button><button onclick='loadPreflight()'>Launch preflight</button><button onclick='loadFirstWave()'>Preview First Wave</button><div id='summary' class='grid'></div><div id='preflight' class='card' style='margin-top:12px'></div></div><div class='section'><h2>First Wave preview</h2><div id='first_wave'></div></div>
<div class='section card'><h2>Vendor activation</h2><input id='vendor_id' placeholder='vendor_id'><select id='vendor_status'><option>pilot</option><option>active</option><option>paused</option><option>suppressed</option></select><input id='vendor_services' placeholder='service keys comma-separated'><input id='vendor_markets' placeholder='markets comma-separated'><button onclick='vendorUpdate()'>Save vendor</button><pre id='vendor_result'></pre></div>
<div class='section card'><h2>Classify unresolved lead</h2><input id='lead_id' placeholder='lead UUID'><input id='service_key' placeholder='service_key'><button onclick='classifyLead()'>Classify + route</button><pre id='lead_result'></pre></div>
<div class='section card'><h2>Suppress outreach email</h2><input id='suppress_email' placeholder='email'><input id='suppress_reason' placeholder='reason'><button onclick='suppressEmail()'>Suppress</button><pre id='suppress_result'></pre></div>
<script>
function headers(){return {'Content-Type':'application/json','X-BMC-Admin-Key':document.getElementById('key').value}}
async function loadSummary(){const r=await fetch('/api/admin/summary',{headers:headers()});const j=await r.json();const el=document.getElementById('summary');el.innerHTML='';Object.entries(j).forEach(function(pair){const d=document.createElement('div');d.className='card';d.innerHTML='<b>'+pair[0]+'</b><pre>'+JSON.stringify(pair[1],null,2)+'</pre>';el.appendChild(d)})}\nasync function loadPreflight(){const r=await fetch('/api/admin/preflight',{headers:headers()});const j=await r.json();document.getElementById('preflight').innerHTML='<h2>Launch preflight</h2><pre>'+JSON.stringify(j,null,2)+'</pre>'}\nasync function loadFirstWave(){const r=await fetch('/api/admin/first-wave',{headers:headers()});const j=await r.json();const el=document.getElementById('first_wave');el.innerHTML='';(j.records||[]).forEach(function(x){const d=document.createElement('div');d.className='card';d.style.margin='10px 0';d.innerHTML='<b>'+x.side.toUpperCase()+' · '+x.business_name+'</b><div>'+x.market+' · '+x.email+'</div><div><strong>'+x.subject+'</strong></div><pre>'+x.body+'</pre>';el.appendChild(d)})}
async function vendorUpdate(){const body={vendor_id:document.getElementById('vendor_id').value,status:document.getElementById('vendor_status').value,services:document.getElementById('vendor_services').value.split(',').map(function(x){return x.trim()}).filter(Boolean),markets:document.getElementById('vendor_markets').value.split(',').map(function(x){return x.trim()}).filter(Boolean)};const r=await fetch('/api/admin/vendor-status',{method:'POST',headers:headers(),body:JSON.stringify(body)});document.getElementById('vendor_result').textContent=JSON.stringify(await r.json(),null,2)}
async function classifyLead(){const body={lead_id:document.getElementById('lead_id').value,service_key:document.getElementById('service_key').value};const r=await fetch('/api/admin/classify-lead',{method:'POST',headers:headers(),body:JSON.stringify(body)});document.getElementById('lead_result').textContent=JSON.stringify(await r.json(),null,2)}
async function suppressEmail(){const body={email:document.getElementById('suppress_email').value,reason:document.getElementById('suppress_reason').value};const r=await fetch('/api/admin/suppress',{method:'POST',headers:headers(),body:JSON.stringify(body)});document.getElementById('suppress_result').textContent=JSON.stringify(await r.json(),null,2)}
</script></body></html>"""

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
    tunnel_ready=configured(CLOUDFLARE_TUNNEL_TOKEN) and configured(WEBHOOK_URL)
    async with app.state.pool.acquire() as conn:
        pilot_vendors=await conn.fetchval("select count(*) from vendors where status in ('pilot','active')")
        first_wave_vendors=await conn.fetchval("select count(*) from outreach where entity_type='vendor' and wave='pilot1'")
        first_wave_buyers=await conn.fetchval("select count(*) from outreach where entity_type='buyer' and wave='pilot1'")
        research_queued=await conn.fetchval("select count(*) from research_backlog where status='queued'")
        open_exceptions=await conn.fetchval("select count(*) from exceptions where status='open'")
    live_intake_ready=bool(smtp_ready and tunnel_ready and int(pilot_vendors or 0)>=1)
    outreach_ready=bool(smtp_ready and imap_ready and postal_ready)
    return {
      "ok":True,
      "gates":{"live_intake_ready":live_intake_ready,"outreach_ready":outreach_ready,"payments_ready":stripe_ready},
      "config":{
        "public_site_url":PUBLIC_SITE_URL,
        "webhook_url":WEBHOOK_URL or None,
        "cloudflare_tunnel_configured":tunnel_ready,
        "smtp_configured":smtp_ready,
        "imap_configured":imap_ready,
        "postal_address_configured":postal_ready,
        "stripe_webhook_configured":stripe_ready,
        "vendor_outreach_enabled":OUTREACH_ENABLED,
        "buyer_outreach_enabled":BUYER_OUTREACH_ENABLED
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
          ("Configure Cloudflare Tunnel / WEBHOOK_URL",tunnel_ready),
          ("Configure transactional SMTP",smtp_ready),
          ("Activate at least one verified pilot provider",int(pilot_vendors or 0)>=1),
          ("Configure monitored IMAP inbox before outbound prospecting",imap_ready),
          ("Set real BMC postal address before outbound prospecting",postal_ready),
          ("Configure Stripe webhook after Stripe activation",stripe_ready)
        ] if not ready
      ]
    }

@app.get("/api/admin/first-wave")
async def admin_first_wave(x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    records=[]
    async with app.state.pool.acquire() as conn:
        vendors=await conn.fetch("""select o.entity_id,v.business_name,v.public_email,vm.market,vs.service_key,v.association_signal
          from outreach o join vendors v on v.vendor_id=o.entity_id
          left join lateral (select market from vendor_markets where vendor_id=v.vendor_id order by market limit 1) vm on true
          left join lateral (select service_key from vendor_services where vendor_id=v.vendor_id order by service_key limit 1) vs on true
          where o.entity_type='vendor' and o.wave='pilot1'
          order by o.created_at,o.entity_id""")
        for row in vendors:
            subject,body=vendor_recruitment_copy(row,1)
            records.append({"side":"vendor","entity_id":row["entity_id"],"business_name":row["business_name"],
              "email":row["public_email"],"market":row["market"],"subject":subject,"body":body})
        buyers=await conn.fetch("""select o.entity_id,b.business_name,b.public_email,b.market,b.buyer_type,b.campaign,b.likely_services
          from outreach o join buyers b on b.buyer_id=o.entity_id
          where o.entity_type='buyer' and o.wave='pilot1'
          order by case when b.priority='A' then 0 else 1 end,o.created_at,o.entity_id""")
        for row in buyers:
            subject,body=buyer_outreach_copy(row,1)
            records.append({"side":"buyer","entity_id":row["entity_id"],"business_name":row["business_name"],
              "email":row["public_email"],"market":row["market"],"subject":subject,"body":body})
    return {"ok":True,"count":len(records),"records":records}

@app.post("/api/admin/vendor-status")
async def admin_vendor_status(request:Request,x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    p=await request.json()
    vid=clean(p.get("vendor_id")); status=clean(p.get("status"))
    if not vid or status not in ("prospect","applicant","pilot","active","paused","suppressed"):
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
