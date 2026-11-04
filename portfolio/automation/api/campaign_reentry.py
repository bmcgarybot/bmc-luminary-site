"""Explicit additive authorization for seven pre-review Growth contacts only.

Never edits/deletes old outreach, review flags, attempts, samples or orders.
Preparation authorization is separate from new scoped campaign dispatch. Caller
must insert the new outreach row and consume_reentry in the SAME transaction.
"""
import copy,hashlib,hmac,json,re,uuid
from datetime import datetime,timedelta,timezone
from census_research_api import legal_name
from owner_research_export import seal_export
from historical_growth import CUTOFF as HISTORICAL_CUTOFF

VERSION='historical-growth-reentry-v1'
CUTOFF=datetime.fromisoformat(HISTORICAL_CUTOFF.replace('Z','+00:00'))
TTL=timedelta(days=14)
MEMBERS_SQL="""select distinct entity_id from outreach where entity_type='growth_customer'
 and campaign='growth_sales' and sent_at<'2026-10-30T03:50:30Z'::timestamptz
 and historical_review_recorded_at is not null order by entity_id limit 8"""
RELATED_SQL="""select o.* from outreach o
 left join growth_outreach_targets g on o.entity_type='growth_customer' and o.entity_id=g.target_id
 left join vendors v on o.entity_type='vendor' and o.entity_id=v.vendor_id
 left join buyers b on o.entity_type='buyer' and o.entity_id=b.buyer_id
 where o.entity_id=$1 or lower(g.public_email)=lower($2)
 or lower(v.public_email)=lower($2) or lower(b.public_email)=lower($2)
 order by o.outreach_id for update of o"""
ENGAGEMENT_SQL="""select
 exists(select 1 from outreach_suppressions where lower(email)=lower($2))
 or exists(select 1 from events where event_type='outreach_sent'
   and (entity_id=$1 or lower(payload->>'email')=lower($2))
   and occurred_at>='2026-10-30T03:50:30Z'::timestamptz)
 or exists(select 1 from events where event_type='outreach_sent' and entity_id=$1
   and coalesce(payload->>'email','')<>'' and lower(payload->>'email')<>lower($2))
 or exists(select 1 from events where (entity_id=$1 or lower(payload->>'email')=lower($2)
   or lower(payload->>'sender')=lower($2)) and event_type in ('outreach_reply','owner_reply_review'))
 or exists(select 1 from growth_sample_requests where source_target_id=$1 or lower(email)=lower($2))
 or exists(select 1 from growth_prospect_exposures where lower(recipient_key)=lower($2))
 or exists(select 1 from orders where lower(customer_email)=lower($2))
 or exists(select 1 from growth_purchase_offers where lower(email)=lower($2))
 or exists(select 1 from growth_email_verifications where lower(email)=lower($2))
 or exists(select 1 from vendors v where lower(v.public_email)=lower($2) and
   (coalesce(v.status,'') not in ('prospect','applicant','pilot_pending_review','discovered','research')
    or exists(select 1 from lead_matches lm where lm.vendor_id=v.vendor_id
      and (lm.responded_at is not null or lm.status in ('accepted','contacted','estimate','won','lost')))))"""
ATTEMPT_SQL="""select exists(select 1 from mail_delivery_attempts where
 delivery_key=any($1::text[]) and status in ('attempting','uncertain'))"""

INERT_QUEUE_HISTORY_SQL="""select
 exists(select 1 from mail_delivery_attempts where position(':'||$1::text||':' in lower(delivery_key))>0)
 or exists(select 1 from events where event_type='outreach_sent' and entity_id=$2)"""

class ReentryHeld(ValueError):
    def __init__(self,reason,diagnostics=None):
        super().__init__(reason);self.diagnostics=diagnostics or {}

def blocked_row(row):
    return {'outreach_id':str(row['outreach_id']),
        **{key:row.get(key) for key in ('entity_type','campaign','status','owner_review_required')},
        'sent_at':iso(row['sent_at']) if row.get('sent_at') else None,
        'historical_review_recorded_at':iso(row['historical_review_recorded_at']) if row.get('historical_review_recorded_at') else None}

def canonical(value):return json.dumps(value,sort_keys=True,separators=(',',':'),default=str)
def mac(value,secret):
    if not secret:raise ReentryHeld('reentry_signing_unavailable')
    return hmac.new(secret.encode(),('bmc-historical-growth-reentry-v1|'+canonical(value)).encode(),hashlib.sha256).hexdigest()
def data_for(target):
    data=target.get('source_data')
    if isinstance(data,str):
        try:data=json.loads(data)
        except (ValueError,TypeError):pass
    if data is None:return {}
    if not isinstance(data,dict):return {'legacy_source_data':copy.deepcopy(data)}
    return copy.deepcopy(data)
def iso(value):return value.isoformat() if isinstance(value,datetime) else str(value)
def when(value):
    d=value if isinstance(value,datetime) else datetime.fromisoformat(value)
    if d.tzinfo is None:raise ReentryHeld('historical_time_unproven')
    return d

def identity(target):
    """Logical authorization identity, never replacement customer display copy."""
    return {'target_id':str(target.get('target_id') or '').strip(),
        'email':str(target.get('public_email') or '').strip().lower(),
        'business_name':' '.join(legal_name(target.get('business_name'))),
        'market':str(target.get('market') or '').strip().casefold(),
        'service_key':str(target.get('service_key') or '').strip()}

def recipient_matches(target,recipient):
    email=str(recipient.get('public_email') or recipient.get('email') or '').strip().lower()
    service=recipient.get('service_key') or recipient.get('category_key')
    return bool((not email or email==str(target.get('public_email') or '').strip().lower())
        and legal_name(recipient.get('business_name'))==legal_name(target.get('business_name'))
        and legal_name(target.get('business_name'))
        and str(service or '')==str(target.get('service_key') or '')
        and str(recipient.get('market') or '').strip().casefold()==str(target.get('market') or '').strip().casefold()
        and (not recipient.get('target_id') or str(recipient['target_id'])==str(target['target_id'])))

async def members(conn):
    rows=await conn.fetch(MEMBERS_SQL);ids={str(r['entity_id']) for r in rows}
    if len(ids)!=7:raise ReentryHeld('exact_initial_seven_membership_unproven')
    return ids

async def locked_target(conn,recipient,*,read_only=False):
    email=str(recipient.get('public_email') or recipient.get('email') or '').strip().lower()
    target_id=recipient.get('target_id')
    if not email:
        normalized=' '.join(legal_name(recipient.get('business_name')))
        service=recipient.get('service_key') or recipient.get('category_key')
        if not normalized or not service or not recipient.get('market'):raise ReentryHeld('exact_historical_recipient_unproven')
        candidates=await conn.fetch("""select * from growth_outreach_targets where source_data ? 'historical_reentry'
          and lower(trim(market))=lower(trim($1)) and service_key=$2
          and ($3::text is null or target_id=$3)
          and regexp_replace(trim(regexp_replace(lower(business_name),'[^a-z0-9]+',' ','g')),
            '( (llc|inc|incorporated|corp|corporation|ltd|limited))+$','')=$4
          order by target_id limit 2""",str(recipient['market']),str(service),str(target_id) if target_id else None,normalized)
        if len(candidates)!=1 or not recipient_matches(dict(candidates[0]),recipient):raise ReentryHeld('exact_historical_recipient_unproven')
        target_id=str(candidates[0]['target_id']);email=str(candidates[0]['public_email'] or '').strip().lower()
        if not email:raise ReentryHeld('exact_historical_recipient_unproven')
    if not read_only:
        await conn.fetchval('select pg_advisory_xact_lock(hashtextextended($1,0))','historical_reentry_email:'+email)
    rows=await conn.fetch("""select * from growth_outreach_targets where lower(public_email)=lower($1)
      and ($2::text is null or target_id=$2) order by target_id limit 2"""+('' if read_only else ' for update'),email,str(target_id) if target_id else None)
    if len(rows)!=1:raise ReentryHeld('exact_historical_recipient_unproven')
    target=dict(rows[0])
    if not recipient_matches(target,recipient):raise ReentryHeld('reentry_recipient_changed')
    if target.get('status') in ('suppressed','bad_fit','replied','sample_requested','converted'):raise ReentryHeld('recipient_engagement_or_hold')
    return target

async def live_state(conn,target,batch,allowed_new=None,*,read_only=False,_inert_rows=None):
    tid=str(target['target_id']);email=target['public_email'].strip().lower()
    if tid not in batch:raise ReentryHeld('not_initial_historical_batch')
    rows=[dict(r) for r in await conn.fetch(RELATED_SQL.replace(' for update of o','') if read_only else RELATED_SQL,tid,email)]
    old=[];new=[]
    for row in rows:
        oid=str(row['outreach_id'])
        if row.get('opt_out') or row.get('replied_at') or row.get('reply_type') or row.get('status') in ('replied','suppressed','sample_requested','converted'):
            raise ReentryHeld('response_or_optout_history',{'blocked_outreach':blocked_row(row)})
        if oid==allowed_new:
            if (row.get('entity_type')!='growth_customer' or row.get('campaign')!='growth_sales'
                or str(row.get('entity_id'))!=tid or row.get('status')!='queued'
                or row.get('sequence_step')!=0 or row.get('sent_at') is not None):raise ReentryHeld('new_reentry_outreach_not_fresh')
            new.append(row);continue
        if row.get('status') in ('queued','superseded') and row.get('sent_at') is None:
            # A seed queue is inventory, unless durable delivery evidence exists.
            try:queue_id=str(uuid.UUID(oid))
            except (ValueError,TypeError):raise ReentryHeld('invalid_outreach_uuid')
            from recipient_history import inert_outreach
            if await inert_outreach(conn,row,statuses=('queued','superseded'),authorized_historical_before=CUTOFF.isoformat()):
                if _inert_rows is not None:_inert_rows.append(oid)
                continue
            raise ReentryHeld('queued_outreach_delivery_evidence',{'blocked_outreach':blocked_row(row)})
        if (row.get('entity_type')!='growth_customer' or row.get('campaign')!='growth_sales'
            or str(row.get('entity_id')) not in batch or row.get('sent_at') is None
            or when(row['sent_at'])>=CUTOFF or row.get('historical_review_recorded_at') is None
            or row.get('owner_review_required') is not True):raise ReentryHeld('nonhistorical_or_changed_outreach',{'blocked_outreach':blocked_row(row)})
        old.append(row)
    if not old or (allowed_new and len(new)!=1):raise ReentryHeld('historical_or_new_outreach_missing')
    if await conn.fetchval(ENGAGEMENT_SQL,tid,email) is not False:raise ReentryHeld('current_response_optout_customer_or_provider_engagement')
    # The owner explicitly authorized one NEW campaign for the accidental batch.
    # Preserve prior uncertain submissions as evidence; do not retry those claims.
    # The newly authorized row still cannot acquire another uncertain submission.
    if allowed_new:
        keys=['growth-outreach:'+allowed_new+':'+str(step) for step in (1,2)]
        if await conn.fetchval(ATTEMPT_SQL,keys) is not False:raise ReentryHeld('uncertain_delivery_history')
    proof=[{k:(iso(r[k]) if k in ('sent_at','historical_review_recorded_at') else str(r[k]))
            for k in ('outreach_id','entity_id','entity_type','campaign','wave','sent_at','historical_review_recorded_at')} for r in old]
    proof.sort(key=lambda r:r['outreach_id'])
    return {'old_outreach_ids':[p['outreach_id'] for p in proof],
            'historical_proof_sha256':hashlib.sha256(canonical(proof).encode()).hexdigest()}

def token_valid(target,secret):
    token=data_for(target).get('historical_reentry')
    if not isinstance(token,dict):raise ReentryHeld('explicit_reentry_authorization_required')
    value=dict(token);signature=value.pop('signature','')
    if not isinstance(signature,str) or not hmac.compare_digest(signature,mac(value,secret)):raise ReentryHeld('reentry_signature_invalid')
    required={'version','target_id','email','business_name','market','service_key','old_outreach_ids','historical_proof_sha256',
        'authorized_at','expires_at','request_id','consumed_outreach_id','consumed_at'}
    if set(value)!=required or value['version']!=VERSION:raise ReentryHeld('reentry_token_invalid')
    if any(value[k]!=v for k,v in identity(target).items()):raise ReentryHeld('reentry_recipient_changed')
    issued=when(value['authorized_at']);expires=when(value['expires_at']);now=datetime.now(timezone.utc)
    if not issued<=now<expires or expires-issued!=TTL:raise ReentryHeld('reentry_expired_or_future')
    return token

async def approved_reentry(conn,recipient,secret,consume=False,*,read_only=False):
    """Live preparation check. consume may be a NEW outreach UUID, never True."""
    if consume is not False:
        if read_only:raise ReentryHeld('read_only_reentry_cannot_consume')
        if isinstance(consume,bool):raise ReentryHeld('new_outreach_uuid_required')
        return await consume_reentry(conn,recipient,secret,consume)
    target=await locked_target(conn,recipient,read_only=read_only);token=token_valid(target,secret)
    if token['consumed_outreach_id'] is not None:raise ReentryHeld('reentry_already_consumed')
    inert_ids=[]
    state=await live_state(conn,target,await members(conn),read_only=read_only,_inert_rows=inert_ids)
    if any(token[k]!=state[k] for k in state):raise ReentryHeld('historical_proof_changed')
    return {'target':target,'token':token,'expected_email':token['email'],'require_fresh_email_match':True,'preparation_only':True,'inert_outreach_ids':inert_ids,'outreach_sent':0}

async def consume_reentry(conn,recipient,secret,new_outreach_id):
    """Bind exactly one fresh queued row, within caller's insertion transaction."""
    try:new_id=str(uuid.UUID(str(new_outreach_id)))
    except (ValueError,TypeError):raise ReentryHeld('new_outreach_uuid_required')
    if not (recipient.get('public_email') or recipient.get('email')):raise ReentryHeld('fresh_recipient_email_match_required')
    target=await locked_target(conn,recipient);token=token_valid(target,secret)
    if token['consumed_outreach_id'] not in (None,new_id):raise ReentryHeld('reentry_already_consumed')
    if new_id in token['old_outreach_ids']:raise ReentryHeld('old_outreach_cannot_be_reused')
    state=await live_state(conn,target,await members(conn),allowed_new=new_id)
    if any(token[k]!=state[k] for k in state):raise ReentryHeld('historical_proof_changed')
    if token['consumed_outreach_id']==new_id:return {'target':target,'token':token,'already_consumed':True,'outreach_sent':0}
    value=dict(token);value.pop('signature');value.update(consumed_outreach_id=new_id,consumed_at=datetime.now(timezone.utc).isoformat())
    updated=dict(value,signature=mac(value,secret));data=data_for(target);data['historical_reentry']=updated
    await conn.execute('update growth_outreach_targets set source_data=$2::jsonb,updated_at=now() where target_id=$1',target['target_id'],json.dumps(data))
    await conn.execute("""insert into events(entity_type,entity_id,event_type,actor,payload)
      values('growth_customer',$1,'historical_reentry_consumed','owner_authorized',$2::jsonb)""",target['target_id'],json.dumps({'request_id':token['request_id'],'new_outreach_id':new_id,'old_outreach_ids':token['old_outreach_ids']}))
    return {'target':dict(target,source_data=data),'token':updated,'already_consumed':False,'outreach_sent':0}

async def authorize(conn,target_id,secret,request_id):
    row=await conn.fetchrow('select * from growth_outreach_targets where target_id=$1',target_id)
    if not row:raise ReentryHeld('historical_target_not_found')
    target=await locked_target(conn,dict(row));state=await live_state(conn,target,await members(conn))
    data=data_for(target)
    if data.get('historical_reentry') is not None:
        token=token_valid(target,secret)
        if any(token[k]!=state[k] for k in state):raise ReentryHeld('historical_proof_changed')
        return {'target_id':target_id,'token':token,'already_authorized':True}
    now=datetime.now(timezone.utc)
    value=dict(version=VERSION,**identity(target),**state,authorized_at=now.isoformat(),expires_at=(now+TTL).isoformat(),
        request_id=request_id,consumed_outreach_id=None,consumed_at=None)
    token=dict(value,signature=mac(value,secret));data['historical_reentry']=token
    await conn.execute('update growth_outreach_targets set source_data=$2::jsonb,updated_at=now() where target_id=$1',target_id,json.dumps(data))
    await conn.execute("""insert into events(entity_type,entity_id,event_type,actor,payload)
      values('growth_customer',$1,'historical_reentry_authorized','owner_authorized',$2::jsonb)""",target_id,json.dumps({'request_id':request_id,'old_outreach_ids':state['old_outreach_ids'],'expires_at':value['expires_at']}))
    return {'target_id':target_id,'token':token,'already_authorized':False}


def install(app,require_admin,secret):
    from fastapi import Request,Header,HTTPException
    @app.post('/api/admin/authorize-historical-growth-reentry')
    async def endpoint(request:Request,request_id:str,x_bmc_admin_key:str|None=Header(default=None)):
        require_admin(x_bmc_admin_key)
        if not re.fullmatch('[A-Za-z0-9][A-Za-z0-9_-]{5,118}',request_id):raise HTTPException(400,'invalid_request_id')
        raw=await request.body()
        try:
            if len(raw)>4096:raise ValueError('size')
            body=json.loads(raw);ids=body.get('target_hashes') if isinstance(body,dict) else None
            if (not isinstance(body,dict) or set(body)!={'target_hashes'} or not isinstance(ids,list) or not 1<=len(ids)<=7
                or any(not isinstance(x,str) or not re.fullmatch('[0-9a-f]{64}',x) for x in ids)
                or len(set(ids))!=len(ids)):raise ValueError('body')
        except (ValueError,TypeError,UnicodeError):raise HTTPException(422,'invalid_reentry_request')
        def sealed(payload):
            if len(json.dumps(payload,default=str).encode())>500_000:raise ReentryHeld('capsule_size_exceeded')
            capsule=seal_export(payload,request_id)
            if len(json.dumps(capsule).encode())>500_000:raise ReentryHeld('capsule_size_exceeded')
            return capsule
        try:
            # Resolve the complete opaque input set before any authorization write.
            async with app.state.pool.acquire() as conn:
                async with conn.transaction(readonly=True):
                    rows=await conn.fetch("""select target_id from growth_outreach_targets
                      where encode(digest(convert_to(target_id,'UTF8'),'sha256'),'hex')=any($1::text[])
                      order by target_id limit 8""",ids)
                    resolved={hashlib.sha256(str(r['target_id']).encode('utf-8')).hexdigest():str(r['target_id']) for r in rows}
                    if len(rows)!=len(ids) or set(resolved)!=set(ids):raise ReentryHeld('exact_target_hashes_not_found')
        except ReentryHeld as exc:
            return sealed({'status':'historical_reentry_held','request_id':request_id,'gate_reason':str(exc),'diagnostics':exc.diagnostics,'outreach_sent':0,'history_reset':False})
        except Exception:
            return sealed({'status':'historical_reentry_held','request_id':request_id,'gate_reason':'reentry_audit_unavailable','outreach_sent':0,'history_reset':False})
        results=[]
        for key in sorted(ids):
            try:
                async with app.state.pool.acquire() as conn:
                    async with conn.transaction():
                        item=dict(await authorize(conn,resolved[key],secret,request_id),status='authorized',target_hash=key)
                        # Verify encryption and result bounds before this company's
                        # transaction commits. Another company's hold stays local.
                        sealed({'status':'historical_reentry_authorized','request_id':request_id,'results':[item],
                            'outreach_sent':0,'history_reset':False,'provider_accepted':False})
                results.append(item)
            except ReentryHeld as exc:
                results.append({'status':'held','target_hash':key,'gate_reason':str(exc),'diagnostics':exc.diagnostics})
            except Exception:
                results.append({'status':'held','target_hash':key,'gate_reason':'reentry_audit_unavailable'})
        authorized=sum(item['status']=='authorized' for item in results)
        return sealed({'status':'historical_reentry_authorized' if authorized else 'historical_reentry_held',
            'request_id':request_id,'results':results,'authorized':authorized,'held':len(results)-authorized,
            'outreach_sent':0,'history_reset':False,'provider_accepted':False})
