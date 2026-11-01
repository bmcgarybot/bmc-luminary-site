"""Isolated Nevada intake and readiness. No mail, checkout or worker side effects.

This first release intentionally cannot sell an unfulfilled shortlist or reuse an
Arizona allocator. Checkout remains blocked until Nevada inventory and payment
integration pass their own acceptance tests.
"""
import json
import os
from pathlib import Path
import re
import uuid

CONFIG = json.loads(Path(__file__).with_name('nevada-config.json').read_text())
SERVICES = {s['service_key']:s for s in CONFIG['services']}
MARKETS = frozenset(CONFIG['markets'])

def intake_open(env):
    return (env.get('BMC_OWNER_LAUNCH_HOLD','true').lower() == 'false'
        and env.get('NV_PILOT_OWNER_LAUNCH_HOLD','true').lower() == 'false'
        and env.get('NV_PILOT_INTAKE_ENABLED','false').lower() == 'true')

def validate_request(payload):
    if not isinstance(payload,dict): raise ValueError('Request must be an object.')
    if payload.get('state_code') != 'NV' or payload.get('market') not in MARKETS:
        raise ValueError('Choose Las Vegas or Henderson, Nevada.')
    audience=payload.get('audience')
    if audience not in ('household','business'): raise ValueError('Choose household or business research.')
    key=payload.get('service_key')
    service=SERVICES.get(key)
    if not service: raise ValueError('Choose a listed service.')
    if service['availability']=='licensing_hold':
        raise ValueError('Household employee placement and personal care are not available through this pilot.')
    if payload.get('consent') is not True: raise ValueError('Please consent to a reply about this request.')
    email=str(payload.get('email') or '').strip().lower()
    if len(email)>254 or not re.fullmatch(r'[^\s@]+@[^\s@]+\.[^\s@]+',email): raise ValueError('Enter a valid email address.')
    scope=str(payload.get('scope') or '').strip()
    if len(scope)>1500: raise ValueError('Please keep the request under 1,500 characters.')
    if re.search(r'\b(nann(?:y|ies)|babysitt\w*|hire an? employee|live[ -]in|personal care|house(?:hold)? manager|staff placement)\b',scope,re.I):
        raise ValueError('Employee placement and personal care are not available through this pilot.')
    business=str(payload.get('business_name') or '').strip()
    if len(business)>200: raise ValueError('Business name is too long.')
    if audience=='business' and not business: raise ValueError('Enter your business name.')
    return {'state_code':'NV','market':payload['market'],'audience':audience,'service_key':key,'email':email,'scope':scope,'business_name':business}

def readiness(env):
    return {'state_code':'NV','markets':sorted(MARKETS),'intake_open':intake_open(env),
        'checkout_open':False,'outreach_open':False,
        'employee_placement_open':False,'stage':'research_and_owner_review',
        'offers':[{'product_key':o['product_key'],'amount_cents':o['amount_cents'],
            'currency':o['currency'],'checkout_enabled':False} for o in CONFIG['offers']]}

def install(app, require_admin):
    # FastAPI imports stay here so policy functions can be tested without a server.
    from fastapi import Request, Header, HTTPException
    @app.get('/api/nevada/status')
    async def public_status():
        return readiness(os.environ)

    @app.post('/api/nevada/request')
    async def request_research(request:Request):
        if not intake_open(os.environ):
            raise HTTPException(503,'Nevada requests are not open yet. Please check back after launch review.')
        try:
            body=await request.body()
            if len(body)>10000: raise HTTPException(413,'Request too large.')
            data=validate_request(json.loads(body))
        except (ValueError, UnicodeError) as exc:
            raise HTTPException(422,str(exc))
        request_id=uuid.uuid4()
        async with app.state.pool.acquire() as conn:
            async with conn.transaction():
                # Serialize by normalized email; never send mail from public intake.
                await conn.execute('select pg_advisory_xact_lock(hashtextextended($1,0))','nv-intake:'+data['email'])
                count=await conn.fetchval("select count(*) from nevada.requests where lower(email)=$1 and created_at>now()-interval '24 hours'",data['email'])
                if count>=3: raise HTTPException(429,'Please wait for a reply to your existing request.')
                await conn.execute('''insert into nevada.requests(request_id,state_code,market,audience,service_key,email,business_name,scope)
                  values($1,$2,$3,$4,$5,$6,$7,$8)''',request_id,*[data[k] for k in ('state_code','market','audience','service_key','email','business_name','scope')])
        return {'received':True,'request_id':str(request_id),'state_code':'NV',
            'message':'Your request is awaiting review. No payment has been taken and no service has been booked.'}

    @app.get('/api/admin/nevada/status')
    async def admin_status(x_bmc_admin_key:str|None=Header(default=None)):
        require_admin(x_bmc_admin_key)
        async with app.state.pool.acquire() as conn:
            requests=await conn.fetchval('select count(*) from nevada.requests')
            orders=await conn.fetchval('select count(*) from nevada.orders')
        return {**readiness(os.environ),'requests':requests,'orders':orders,
            'blockers':['Owner review and release','Review eligible Nevada fulfillment inventory','Separate payment links and signature-verified payment routing','Nevada fulfillment proof'],
            'household_data_included':False}
