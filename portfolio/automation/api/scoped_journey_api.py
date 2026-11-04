"""Held administrator journey preparation and explicit scope approval; no outreach."""
import json
import hmac
from datetime import datetime, timezone
import re
import uuid

from held_packet_api import compile_native_packet, HISTORY_SQL
from owner_research_export import seal_export
from scoped_growth import prepare_profile, profile_for_target, signature

VERSION='official-pdf-v2'


def install(app, require_admin, secret, original_ids, hold_required, compiler_callbacks,
            invitation_url, outreach_message):
    from fastapi import Header, HTTPException, Request
    frozen=frozenset(str(x) for x in original_ids)
    if len(frozen)!=9: raise ValueError('original_nine_ids_required')

    @app.post('/api/admin/prepare-scoped-journey')
    async def prepare(request_id: str, candidate_id: str, x_bmc_admin_key: str | None=Header(default=None)):
        require_admin(x_bmc_admin_key)
        if not hold_required(): raise HTTPException(409,'owner_hold_required')
        try:
            if not re.fullmatch(r'[A-Za-z0-9][A-Za-z0-9_-]{5,118}',request_id): raise ValueError('invalid_request')
            candidate=uuid.UUID(candidate_id)
            async with app.state.pool.acquire() as conn:
                async with conn.transaction(isolation='repeatable_read'):
                    packet=await compile_native_packet(conn,candidate,secret,frozen,hold_required,compiler_callbacks,pack_count=25)
                    recipient=packet['recipient'];email=recipient['public_email'].lower();service=recipient['category_key']
                    await conn.fetchval('select pg_advisory_xact_lock(hashtextextended($1,0))','scoped_journey:'+email+'|'+service)
                    existing=await conn.fetchrow('select * from growth_outreach_targets where lower(public_email)=$1 and service_key=$2 for update',email,service)
                    target=dict(existing) if existing else dict(target_id='inventory:'+str(candidate),status='contactable',source_data={})
                    if target['target_id'] in frozen or target.get('status')!='contactable': raise ValueError('target_unavailable')
                    fields=dict(business_name=recipient['business_name'],public_email=email,public_phone=recipient.get('public_phone'),
                                market=recipient['market'],service_key=service,source_url=recipient['source_url'])
                    if existing and any(str(target.get(k) or '').lower()!=str(fields[k] or '').lower()
                                        for k in ('business_name','public_email','market','service_key','source_url')):
                        raise ValueError('target_identity_changed')
                    if await conn.fetchval(HISTORY_SQL,email,list(frozen)) is not False: raise ValueError('history_changed')
                    data=target.get('source_data') or {}
                    if isinstance(data,str): data=json.loads(data)
                    if not isinstance(data,dict): raise ValueError('invalid_source_metadata')
                    target.update(fields,source_data=dict(data))
                    old=profile_for_target(target,secret)
                    if old and old['state']!='draft': raise ValueError('released_profile_immutable')
                    profile=prepare_profile(packet,target['target_id'],secret)
                    sample=packet['artifacts'][5]['rows'];ids=[uuid.UUID(x) for x in profile['sample_ids']]
                    saved=await conn.fetchrow('select * from growth_owner_previews where target_id=$1 and version=$2 for update',target['target_id'],VERSION)
                    if saved:
                        payload=saved['sample_payload'];payload=json.loads(payload) if isinstance(payload,str) else payload
                        if (list(map(str,saved['candidate_ids']))!=profile['sample_ids'] or payload!=sample
                            or list(saved['selected_markets'])!=[recipient['market']]
                            or saved['business_name']!=recipient['business_name'] or saved['service_key']!=service):
                            raise ValueError('saved_five_immutable')
                    if old and old['sample_ids']!=profile['sample_ids']: raise ValueError('profile_five_immutable')
                    # Exact retries retain the prior signature, expiry and frozen five.
                    if old and old['candidate_ids']==profile['candidate_ids'] and old['scope']==profile['scope']:
                        profile=data['scoped_offer']
                    target['source_data']['scoped_offer']=profile
                    profile_for_target(target,secret)  # validates final recipient/source binding before writes
                    owner_url=invitation_url(target,owner_preview=True)
                    message=outreach_message(target,1,owner_preview=True)
                    if not owner_url or len(message)!=5 or message[0]!=service or message[4]!=owner_url:
                        raise ValueError('owner_message_scope_changed')
                    if not hold_required(): raise ValueError('owner_hold_changed')
                    capsule=seal_export(dict(status='scoped_journey_draft',offer_ready=False,outreach_held=True,
                        target_id=target['target_id'],profile=profile,owner_url=owner_url,
                        message=dict(service_key=message[0],subject=message[1],text=message[2],html=message[3],url=message[4]),
                        remaining_gates=['Owner scope/release review','Current customer purchase/fulfillment/reply proof']),request_id)
                    if len(json.dumps(capsule,separators=(',',':')).encode())>500_000: raise ValueError('capsule_too_large')
                    if existing:
                        await conn.execute('update growth_outreach_targets set source_data=$2::jsonb,updated_at=now() where target_id=$1',target['target_id'],json.dumps(target['source_data']))
                    else:
                        await conn.execute('''insert into growth_outreach_targets(target_id,business_name,public_email,public_phone,
                            source_url,market,service_key,source_kind,source_data) values($1,$2,$3,$4,$5,$6,$7,'scoped_native_held',$8::jsonb)''',
                            target['target_id'],fields['business_name'],email,fields['public_phone'],fields['source_url'],fields['market'],service,json.dumps(target['source_data']))
                    if not saved:
                        await conn.execute('''insert into growth_owner_previews(target_id,version,selected_markets,candidate_ids,
                            sample_payload,business_name,service_key) values($1,$2,$3,$4,$5::jsonb,$6,$7)''',
                            target['target_id'],VERSION,[recipient['market']],ids,json.dumps(sample),recipient['business_name'],service)
                    if not hold_required(): raise ValueError('owner_hold_changed')
                    return capsule
        except (ValueError,KeyError,TypeError):
            raise HTTPException(409,'scoped_journey_requires_review')
    @app.post('/api/admin/approve-scoped-journey')
    async def approve_scope(request_id: str, target_id: str, expected_profile_signature: str,
                            approve: bool=False, x_bmc_admin_key: str | None=Header(default=None)):
        require_admin(x_bmc_admin_key)
        if not hold_required(): raise HTTPException(409,'owner_hold_required')
        try:
            if approve is not True: raise ValueError('explicit_approval_required')
            if not re.fullmatch(r'[A-Za-z0-9][A-Za-z0-9_-]{5,118}',request_id): raise ValueError('invalid_request')
            if target_id in frozen or not re.fullmatch('[0-9a-f]{64}',expected_profile_signature): raise ValueError('approval_scope_invalid')
            async with app.state.pool.acquire() as conn:
                async with conn.transaction(isolation='repeatable_read'):
                    raw=await conn.fetchrow('select * from growth_outreach_targets where target_id=$1 for update',target_id)
                    if not raw: raise ValueError('target_unavailable')
                    target=dict(raw)
                    if target.get('target_id')!=target_id or target.get('status')!='contactable': raise ValueError('target_unavailable')
                    profile=profile_for_target(target,secret)
                    data=target.get('source_data') or {}
                    if isinstance(data,str): data=json.loads(data)
                    current=data['scoped_offer']
                    if not hmac.compare_digest(current['signature'],expected_profile_signature): raise ValueError('stale_approval_signature')
                    if profile['candidate_id'] in frozen: raise ValueError('original_recipient')
                    # Repeated approval of this exact current signed state is a read only receipt.
                    if profile['state']=='approved':
                        if not profile.get('approved_at'): raise ValueError('approval_timestamp_missing')
                        changed=False
                    else:
                        packet=await compile_native_packet(conn,uuid.UUID(profile['candidate_id']),secret,frozen,
                            hold_required,compiler_callbacks,pack_count=25)
                        fresh=prepare_profile(packet,target_id,secret)
                        for field in ('candidate_id','business_name','email','market','service_key','source_url',
                                      'candidate_ids','sample_ids','pack_count','amount_cents','nonexclusive'):
                            if fresh[field]!=profile[field]: raise ValueError('reviewed_profile_drift')
                        scope=profile['scope'];new_scope=fresh['scope']
                        if not scope.get('content_sha256'): raise ValueError('source_digest_missing')
                        for field in ('source_url','content_sha256','category_keys','observed_sector_phrases','ideal_customer'):
                            if scope.get(field)!=new_scope.get(field): raise ValueError('reviewed_source_drift')
                        if scope.get('exclusions','')!=new_scope.get('exclusions',''): raise ValueError('reviewed_exclusions_drift')
                        saved=await conn.fetchrow('select * from growth_owner_previews where target_id=$1 and version=$2 for update',target_id,VERSION)
                        if not saved: raise ValueError('reviewed_five_missing')
                        sample=saved['sample_payload'];sample=json.loads(sample) if isinstance(sample,str) else sample
                        if (list(map(str,saved['candidate_ids']))!=profile['sample_ids']
                            or sample!=packet['artifacts'][5]['rows'] or list(saved['selected_markets'])!=[profile['market']]
                            or saved['business_name']!=profile['business_name'] or saved['service_key']!=profile['service_key']):
                            raise ValueError('reviewed_five_drift')
                        profile=dict(current);profile.pop('signature')
                        profile.update(state='approved',approved_at=datetime.now(timezone.utc).isoformat())
                        profile['signature']=signature(profile,secret)
                        data=dict(data,scoped_offer=profile);target['source_data']=data
                        profile_for_target(target,secret,customer=True)
                        changed=True
                    if not hold_required(): raise ValueError('owner_hold_changed')
                    capsule=seal_export(dict(status='scoped_journey_approved',target_id=target_id,
                        profile_signature=profile.get('signature',current['signature']),approved_at=profile['approved_at'],
                        state='approved',pack_count=25,amount_cents=14900,outreach_held=True,
                        outreach_created=False,customer_order_created=False),request_id)
                    if len(json.dumps(capsule,separators=(',',':')).encode())>500_000: raise ValueError('capsule_too_large')
                    if changed:
                        await conn.execute('update growth_outreach_targets set source_data=$2::jsonb,updated_at=now() where target_id=$1',target_id,json.dumps(data))
                    if not hold_required(): raise ValueError('owner_hold_changed')
                    return capsule
        except (ValueError,KeyError,TypeError):
            raise HTTPException(409,'scoped_approval_requires_review')
    @app.post('/api/admin/authorize-scoped-batch')
    async def authorize_batch(request:Request,request_id:str,x_bmc_admin_key:str|None=Header(default=None)):
        require_admin(x_bmc_admin_key)
        if not hold_required():raise HTTPException(409,'preparation_hold_required')
        raw=await request.body()
        if len(raw)>5000:raise HTTPException(413,'batch_too_large')
        try:
            body=json.loads(raw)
            ids=body['target_ids']
            if (len(raw)>5000 or set(body)!={'target_ids'} or not isinstance(ids,list)
                or not 1<=len(ids)<=25 or len(set(ids))!=len(ids)
                or not all(isinstance(t,str) and re.fullmatch('inventory:[0-9a-f-]{36}',t) for t in ids)
                or any(t in frozen or t.removeprefix('inventory:') in frozen for t in ids)
                or not re.fullmatch('[A-Za-z0-9][A-Za-z0-9_-]{5,118}',request_id)):
                raise ValueError('invalid_batch')
        except (ValueError,KeyError,TypeError):raise HTTPException(422,'exact_new_target_batch_required')
        from scoped_batch import register_target
        waves={'commercial_cleaning':'growth-cleaning-1','pressure_washing':'growth-pressure-1'}
        results=[]
        for target_id in ids:
            try:
                async with app.state.pool.acquire() as conn:
                    current=await conn.fetchrow('select * from growth_outreach_targets where target_id=$1',target_id)
                if not current:raise ValueError('target_unavailable')
                profile=profile_for_target(dict(current),secret)
                if not profile:raise ValueError('prepared_scope_required')
                await approve_scope(request_id,target_id,profile['signature'],True,x_bmc_admin_key)
                async with app.state.pool.acquire() as conn:
                    async with conn.transaction():
                        target=await conn.fetchrow('select * from growth_outreach_targets where target_id=$1 for update',target_id)
                        result=await register_target(conn,dict(target),secret,request_id,waves,outreach_message,hold_required)
                results.append(dict(target_id=target_id,status='registered',**result))
            except (ValueError,KeyError,TypeError,HTTPException):
                results.append(dict(target_id=target_id,status='held',sent=0))
        return {'ok':True,'registered':sum(x.get('registered',False) for x in results),
            'already_registered':sum(x.get('already_registered',False) for x in results),
            'held':sum(x['status']=='held' for x in results),'results':results,'sent':0,'history_reset':False}
    return prepare
