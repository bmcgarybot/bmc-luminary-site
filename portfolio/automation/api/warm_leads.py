"""Qualification for customer-request introductions, separate from prospect research.
No checkout, charging, contact disclosure or outbound sending is enabled here.
"""
from datetime import datetime, timedelta, timezone

REVIEW_WINDOW = timedelta(hours=24)
REQUEST_WINDOW = timedelta(days=7)
ACTIVE_STATUSES = ('received','exception','provider_offered','provider_accepted','contacted','estimate')
INTRO_PRICE_CENTS = 2500  # Proposed pilot price; never an authorization to charge.

def assess(lead, review=None, now=None):
    now=now or datetime.now(timezone.utc)
    review=review or {}
    blockers=[]
    if lead.get('fulfillment_mode')!='provider_match':blockers.append('not_a_customer_job')
    if lead.get('consent') is not True:blockers.append('customer_consent_missing')
    if not str(lead.get('scope') or '').strip():blockers.append('scope_missing')
    if not str(lead.get('market') or '').strip():blockers.append('market_missing')
    if not (str(lead.get('email') or '').strip() or str(lead.get('phone') or '').strip()):blockers.append('contact_missing')
    if lead.get('status') not in ACTIVE_STATUSES:blockers.append('request_not_active')
    created=lead.get('submitted_at')
    if not isinstance(created,datetime) or created.tzinfo is None or not now-REQUEST_WINDOW<=created<=now:blockers.append('request_stale_or_invalid')
    confirmed=review.get('reviewed_at')
    if not isinstance(confirmed,datetime) or confirmed.tzinfo is None or not now-REVIEW_WINDOW<=confirmed<=now:blockers.append('fresh_customer_confirmation_required')
    for key in ('contact_verified','job_confirmed','sharing_confirmed','not_duplicate'):
        if review.get(key) is not True:blockers.append(key+'_required')
    return {'qualification':'confirmed_request' if not blockers else 'needs_review','blockers':blockers,
            'commercial_status':'paid_introductions_not_enabled','proposed_price_cents':INTRO_PRICE_CENTS,
            'can_charge':False}

async def summary(conn):
    counts=await conn.fetch("""select l.status,count(*) n from leads l
      join services s on s.service_key=l.service_key
      where s.fulfillment_mode='provider_match'
      group by l.status""")
    rows=await conn.fetch("""select l.*,s.fulfillment_mode,
      r.reviewed_at,r.contact_verified,r.job_confirmed,r.sharing_confirmed,r.not_duplicate
      from leads l join services s on s.service_key=l.service_key
      left join warm_lead_reviews r on r.lead_id=l.lead_id
      where s.fulfillment_mode='provider_match' and l.status=any($1::text[])
      order by l.submitted_at asc limit 200""",list(ACTIVE_STATUSES))
    queue=[]
    for row in rows:
        d=dict(row);result=assess(d,d)
        queue.append({'lead_id':str(d['lead_id']),'market':d['market'],'service_key':d['service_key'],
          'status':d['status'],'submitted_at':d['submitted_at'].isoformat(),**result})
    by_status={x['status']:int(x['n']) for x in counts}
    active=sum(by_status.get(s,0) for s in ACTIVE_STATUSES)
    return {'active_requests':active,'reviewed_window_count':len(queue),
      'confirmed_requests_in_window':sum(x['qualification']=='confirmed_request' for x in queue),
      'needs_review_in_window':sum(x['qualification']=='needs_review' for x in queue),
      'queue_truncated':active>len(queue),'by_status':by_status,'queue':queue,
      'paid_introductions_enabled':False,'proposed_price_cents':INTRO_PRICE_CENTS,
      'research_prospects_are_customer_requests':False}

def register(app,admin_key):
    from fastapi import Request, Header, HTTPException
    @app.post('/api/admin/active-leads')
    async def active_leads(x_bmc_admin_key:str|None=Header(default=None)):
        if not admin_key or x_bmc_admin_key!=admin_key:raise HTTPException(403,'Forbidden')
        async with app.state.pool.acquire() as conn:return await summary(conn)

    @app.post('/api/admin/active-leads/review')
    async def review_lead(request:Request,x_bmc_admin_key:str|None=Header(default=None)):
        if not admin_key or x_bmc_admin_key!=admin_key:raise HTTPException(403,'Forbidden')
        import uuid,json
        p=await request.json()
        try:lid=uuid.UUID(str(p.get('lead_id','')))
        except ValueError:raise HTTPException(400,'Valid lead_id required')
        keys=('contact_verified','job_confirmed','sharing_confirmed','not_duplicate')
        if any(type(p.get(k)) is not bool for k in keys):raise HTTPException(400,'Explicit boolean review findings required')
        note=str(p.get('evidence_note') or '').strip()
        if not 10<=len(note)<=1000:raise HTTPException(400,'Record how the customer and sharing permission were confirmed (10–1000 characters)')
        async with app.state.pool.acquire() as conn:
            async with conn.transaction():
                row=await conn.fetchrow("""select l.*,s.fulfillment_mode from leads l
                  join services s on s.service_key=l.service_key where lead_id=$1 for update of l""",lid)
                if not row:raise HTTPException(404,'Customer request not found')
                if row['fulfillment_mode']!='provider_match':raise HTTPException(409,'This is not a customer job request')
                await conn.execute("""insert into warm_lead_reviews(lead_id,contact_verified,job_confirmed,sharing_confirmed,not_duplicate,evidence_note)
                  values($1,$2,$3,$4,$5,$6) on conflict(lead_id) do update set
                  contact_verified=excluded.contact_verified,job_confirmed=excluded.job_confirmed,
                  sharing_confirmed=excluded.sharing_confirmed,not_duplicate=excluded.not_duplicate,
                  evidence_note=excluded.evidence_note,reviewed_at=now()""",lid,*[p[k] for k in keys],note)
                await conn.execute("""insert into events(entity_type,entity_id,event_type,actor,payload)
                  values('lead',$1,'customer_job_reviewed','authenticated_admin',$2::jsonb)""",str(lid),json.dumps({k:p[k] for k in keys}))
                reviewed=await conn.fetchrow('select * from warm_lead_reviews where lead_id=$1',lid)
                return {'ok':True,'lead_id':str(lid),**assess(dict(row),dict(reviewed))}
