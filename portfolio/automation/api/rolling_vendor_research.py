"""Bounded source verification transitions for never-contacted inventory vendors.

Writes only the same inventory UUID plus an append-only events journal entry.
Full prior records are archived in evidence. Never stages, accepts, sends, edits
customer/frozen records, resets research attempts, or changes provider status.
"""
import asyncio,copy,json,re,uuid
from datetime import datetime,timedelta,timezone
from official_research import (FetchedPageReceipt,VENDOR_TERMS,auto_evidence_valid,
    canonical,fetch_page_receipt,host,parse_record,contact_links)
from census_research_api import (SELECT_SQL,validate_body,review_row,raw_source_key,
    research_get_url,legal_name)
from owner_research_export import seal_export

FULL_ROW_SQL='select * from market_inventory_candidates where candidate_id=$1'
MAX_CAPSULE_BYTES=500_000
from recipient_history import inert_outreach_sql,protected_target_sql

HISTORY_SQL=f"""select
 exists(select 1 from outreach_suppressions where lower(email)=any($3::text[]))
 or exists(select 1 from growth_outreach_targets g where (target_id=any($2::text[])
   or lower(public_email)=any($3::text[]) or source_data->>'candidate_id'=$1::text
   or source_data->'scoped_offer'->>'candidate_id'=$1::text
   or (lower(business_name)=lower($4) and market=$5)) and {protected_target_sql('g')})
 or exists(select 1 from outreach o
   left join growth_outreach_targets g on o.entity_type='growth_customer' and o.entity_id=g.target_id
   left join vendors v on o.entity_type='vendor' and o.entity_id=v.vendor_id
   left join buyers b on o.entity_type='buyer' and o.entity_id=b.buyer_id
   where not {inert_outreach_sql('o')} and (o.entity_id=any($2::text[]) or lower(g.public_email)=any($3::text[])
     or lower(v.public_email)=any($3::text[]) or lower(b.public_email)=any($3::text[])))
 or exists(select 1 from vendors v where (v.vendor_id=any($2::text[]) or lower(v.public_email)=any($3::text[])
   or lower(v.business_name)=lower($4)) and coalesce(v.status,'') not in ('prospect','discovered','research'))
 or exists(select 1 from buyers b where (b.buyer_id=any($2::text[]) or lower(b.public_email)=any($3::text[]))
   and coalesce(b.status,'') not in ('prospect','discovered','research'))
 or exists(select 1 from lead_matches m join vendors v on v.vendor_id=m.vendor_id
   where v.vendor_id=any($2::text[]) or lower(v.public_email)=any($3::text[]) or lower(v.business_name)=lower($4))
 or exists(select 1 from leads where lower(email)=any($3::text[]))
 or exists(select 1 from growth_sample_requests where source_target_id=any($2::text[])
   or lower(email)=any($3::text[]) or (lower(business_name)=lower($4) and market=$5))
 or exists(select 1 from growth_prospect_exposures where (lower(recipient_key)=any($3::text[]) or 'email:'||lower(recipient_key)=any($6::text[])) and status in ('reserved','delivered'))
 or exists(select 1 from growth_email_verifications where lower(email)=any($3::text[]))
 or exists(select 1 from orders where lower(customer_email)=any($3::text[]))
 or exists(select 1 from growth_purchase_offers where lower(email)=any($3::text[]))"""

HISTORY_BRANCHES=('suppression','growth_target','outreach','vendor_interaction','buyer_interaction','provider_match','submitted_lead','sample_request',
                  'prospect_exposure','email_verification','customer_order','purchase_offer')
# Reuse the exact gate expressions; diagnostics never replace the original gate.
_HISTORY_EXPRESSIONS=re.split(r'\n or (?=exists)',HISTORY_SQL.removeprefix('select\n '))
assert len(_HISTORY_EXPRESSIONS)==len(HISTORY_BRANCHES)
HISTORY_DIAGNOSTIC_SQL='select '+',\n'.join(expr+' as '+name for name,expr in zip(HISTORY_BRANCHES,_HISTORY_EXPRESSIONS))

class Held(ValueError):
    def __init__(self,reason,diagnostics=None):
        super().__init__(reason);self.diagnostics=diagnostics or {}


def source_diagnostics(proposal):
    result={}
    for key in ('status','reason','gate_reason','fetch_failure_reason'):
        value=proposal.get(key)
        if isinstance(value,str) and re.fullmatch('[a-z0-9_]{1,100}',value):result[key]=value
    # Existing bounded source observations remain private inside the owner capsule.
    for key in ('visible_excerpt','unverified_schema_observations','source_receipt','fetch_receipt'):
        if key in proposal:
            try:
                encoded=json.dumps(proposal[key],ensure_ascii=False)
                if len(encoded.encode())<=16000:result[key]=json.loads(encoded)
            except (ValueError,TypeError):pass
    return result


def evidence(row):
    value=row.get('evidence') or {}
    if isinstance(value,str):value=json.loads(value)
    if not isinstance(value,dict):raise Held('invalid_source_evidence')
    return value


def json_record(row):return json.loads(json.dumps(dict(row),default=str))
def snapshot(row):return canonical(json_record(row))


def eligible(row,protected):
    if not row:raise Held('candidate_not_found')
    cid=str(row['candidate_id'])
    if cid in protected or 'inventory:'+cid in protected or str(row.get('promoted_entity_id') or '') in protected:
        raise Held('protected_candidate')
    if (row.get('side')!='vendor' or row.get('status')!='discovered' or row.get('closed_at') is not None
        or evidence(row).get('qualification_hold')):raise Held('unheld_discovered_vendor_required')


async def no_history(conn,row,new_email='',secret=None):
    ids=[str(row['candidate_id']),'inventory:'+str(row['candidate_id'])]
    if row.get('promoted_entity_id'):ids.append(str(row['promoted_entity_id']))
    emails=sorted({str(x).lower() for x in (row.get('public_email'),new_email) if x})
    if await conn.fetchval(HISTORY_SQL,str(row['candidate_id']),ids,emails,row['business_name'],row['market'],['email:'+x for x in emails]) is not False:
        diagnostics={'history_diagnostics_unavailable':True}
        try:
            values=await conn.fetchrow(HISTORY_DIAGNOSTIC_SQL,str(row['candidate_id']),ids,emails,row['business_name'],row['market'],['email:'+x for x in emails])
            if values and all(isinstance(values.get(key),bool) for key in HISTORY_BRANCHES):
                diagnostics={'history_checks':{key:values[key] for key in HISTORY_BRANCHES}}
        except Exception:pass
        if secret:
            from campaign_reentry import approved_reentry,ReentryHeld
            try:
                return await approved_reentry(conn,dict(row,public_email=new_email or ''),secret)
            except Exception:pass
        raise Held('existing_customer_target_or_history',diagnostics)


def seal_result(payload,request_id):
    if len(json.dumps(payload,default=str).encode())>MAX_CAPSULE_BYTES:raise Held('capsule_size_exceeded')
    result=seal_export(payload,request_id)
    if len(json.dumps(result).encode())>MAX_CAPSULE_BYTES:raise Held('capsule_size_exceeded')
    return result


def result(status,**values):
    return dict(status=status,provider_accepted=False,confirmed_demand=False,
        outreach_sent=0,customer_records_changed=False,**values)


def validate_projection(original,parsed,service,secret):
    if not isinstance(parsed,dict) or not parsed.get('public_email') or not parsed.get('public_phone'):
        raise Held('published_native_contacts_required')
    if (not legal_name(original['business_name']) or legal_name(parsed.get('business_name'))!=legal_name(original['business_name'])
        or parsed.get('market')!=original['market'] or parsed.get('category_key')!=service or parsed.get('side')!='vendor'):
        raise Held('exact_native_identity_service_market_required')
    # The census reviewer may discover an official replacement for a directory.
    # Its source is accepted only through review_row's server discovery/fetch.
    row=dict(original,**parsed,category_label=service.replace('_',' ').title())
    if not auto_evidence_valid(row,secret):raise Held('native_projection_invalid')
    old_phone=re.sub(r'\D','',str(original.get('public_phone') or '')).removeprefix('1')
    new_phone=re.sub(r'\D','',str(parsed['public_phone'])).removeprefix('1')
    if old_phone and old_phone!=new_phone:raise Held('known_phone_conflict')
    return row


async def save_transition(pool,original,parsed,service,secret,protected,request_id,kind,source_key=None):
    projected=validate_projection(original,parsed,service,secret)
    async with pool.acquire() as conn:
        async with conn.transaction():
            cid=original['candidate_id'];email=projected['public_email'].lower()
            await conn.fetchval('select pg_advisory_xact_lock(hashtextextended($1,0))','rolling_vendor_candidate:'+str(cid))
            await conn.fetchval('select pg_advisory_xact_lock(hashtextextended($1,0))','native_contact_candidate:'+str(cid))
            await conn.fetchval('select pg_advisory_xact_lock(hashtextextended($1,0))','native_contact_email:'+email)
            await conn.fetchval('select pg_advisory_xact_lock(hashtextextended($1,0))','scoped_journey:'+email+'|'+service)
            current=await conn.fetchrow(FULL_ROW_SQL+' for update',cid);current=dict(current) if current else None
            eligible(current,protected)
            if snapshot(current)!=snapshot(original):raise Held('source_candidate_changed')
            await no_history(conn,current,email,secret)
            data=copy.deepcopy(evidence(current));fresh=copy.deepcopy(parsed['evidence'])
            # These are append-only local archives, not resets of queue/audit rows.
            archive={'source_key':source_key,'record':json_record(current),'request_id':request_id,
                     'archived_at':datetime.now(timezone.utc).isoformat()}
            archive_key='census_original_archive' if kind=='census_source_verification' else 'native_original_archive'
            if archive_key in data:raise Held('original_archive_already_present')
            data[archive_key]=archive
            data.pop('contact_verification',None)
            data.update(fresh)
            data['native_source_transition']={'kind':kind,'request_id':request_id,'source_key':source_key,
                'source_url':parsed['source_url'],'content_sha256':parsed['content_sha256'],
                'verified_at':parsed['checked_at'],'verifier':parsed['verifier'],
                'verification_basis':parsed.get('verification_basis','fresh_current_source_verified')}
            projected['evidence']=data
            if not auto_evidence_valid(projected,secret):raise Held('native_projection_invalid')
            payload=result('native_source_verified',candidate_id=str(cid),native_record_written=True,
                source_key=source_key,verification=parsed['evidence']['vps_verification'],
                verification_basis=parsed.get('verification_basis','fresh_current_source_verified'))
            # Validate encryption/key/bounds before performing any inventory write.
            seal_result(dict(request_id=request_id,results=[payload]),request_id)
            saved=await conn.fetchrow("""update market_inventory_candidates set business_name=$2,category_key=$3,
                category_label=$4,source_url=$5,source_domain=$6,snippet=$7,public_email=$8,public_phone=$9,
                official_site=true,source_tier='direct',verification_status='direct_evidence',
                last_verified_at=now(),evidence=$10::jsonb,updated_at=now()
                where candidate_id=$1 returning *""",cid,projected['business_name'],service,projected['category_label'],
                parsed['source_url'],parsed['source_domain'],parsed['snippet'],parsed['public_email'],parsed['public_phone'],json.dumps(data,default=str))
            if not saved or not auto_evidence_valid(dict(saved),secret):raise Held('persisted_native_proof_invalid')
            await conn.execute("""insert into events(entity_type,entity_id,event_type,actor,payload)
                values('inventory_candidate',$1,'native_source_verified','owner_rolling_research',$2::jsonb)""",
                str(cid),json.dumps(data['native_source_transition']))
            return payload


async def promote_one(pool,row,service,search,secret,protected,request_id):
    original=dict(row)
    try:
        eligible(original,protected)
        if evidence(original).get('researched_by')!='assistant_manual_census':raise Held('manual_census_source_required')
        source_key=raw_source_key(original)
        async with pool.acquire() as conn:await no_history(conn,original,secret=secret)
        research_input=dict(original,public_email='',source_key=source_key)
        proposal=await review_row(research_input,service,search,secret,try_existing_source=True)
        if proposal.get('status')!='source_proposal_only':
            raise Held('fresh_official_source_unproven',{'source_review':source_diagnostics(proposal)})
        parsed=proposal.get('parsed_record')
        if isinstance(parsed,dict):parsed=dict(parsed,verification_basis=proposal.get('discovery_identity_basis','fresh_current_source_verified'))
        return await save_transition(pool,original,parsed,service,secret,protected,request_id,
                                     'census_source_verification',source_key)
    except Held as exc:return result('native_source_held',candidate_id=str(original.get('candidate_id')),gate_reason=str(exc),native_record_written=False,diagnostics=exc.diagnostics)
    except Exception:return result('native_source_held',candidate_id=str(original.get('candidate_id')),gate_reason='research_transition_unavailable',native_record_written=False)


async def refresh_one(pool,candidate_id,secret,protected,request_id):
    try:
        async with pool.acquire() as conn:
            found=await conn.fetchrow(FULL_ROW_SQL,candidate_id);original=dict(found) if found else None
            eligible(original,protected)
            if original.get('public_email'):raise Held('empty_native_mailbox_required')
            if (original.get('category_key') not in VENDOR_TERMS or original.get('official_site') is not True
                or not auto_evidence_valid(original,secret)):raise Held('current_native_proof_required')
            await no_history(conn,original,secret=secret)
        url=original['source_url']
        if not research_get_url(url):raise Held('unsupported_primary_url')
        import hashlib
        deadline=asyncio.get_running_loop().time()+120
        queue=[url];seen=set();stages=[]
        while queue and len(seen)<3:
            current_url=queue.pop(0)
            if current_url in seen:continue
            seen.add(current_url)
            remaining=deadline-asyncio.get_running_loop().time()
            if remaining<=0:
                stages.append({'stage':'fetch','reason':'total_fetch_timeout'});break
            try:receipt=await asyncio.wait_for(asyncio.to_thread(fetch_page_receipt,current_url),min(45,remaining))
            except Exception:
                stages.append({'stage':'fetch','reason':'official_fetch_unavailable'});continue
            if (not isinstance(receipt,FetchedPageReceipt) or receipt.requested_url!=current_url or receipt.http_status!=200
                or not isinstance(receipt.raw_bytes,bytes) or not 0<len(receipt.raw_bytes)<=1_000_000
                or receipt.content_type.split(';')[0].strip().lower() not in ('text/html','application/xhtml+xml')
                or any(not research_get_url(u) or host(u)!=host(url) for u in (receipt.final_url,*receipt.redirect_chain))
                or hashlib.sha256(receipt.raw_bytes).hexdigest()!=receipt.content_sha256):
                stages.append({'stage':'receipt','reason':'fresh_transport_receipt_invalid'});continue
            try:
                when=datetime.fromisoformat(receipt.fetched_at)
                valid_time=when.tzinfo is not None and timedelta(0)<=datetime.now(timezone.utc)-when<=timedelta(minutes=5)
            except (ValueError,TypeError):valid_time=False
            if not valid_time:
                stages.append({'stage':'receipt','reason':'fresh_transport_receipt_invalid'});continue
            # Only the validated primary page contributes observed fallback links.
            if current_url==url:
                queue.extend(link for link in contact_links(receipt.final_url,receipt.document)
                             if research_get_url(link) and host(link)==host(url) and link not in seen)
                queue=queue[:2]
            try:parsed=parse_record(original,receipt.final_url,receipt.document,receipt.content_sha256,secret)
            except (ValueError,TypeError,KeyError):
                stages.append({'stage':'parse','reason':'fresh_official_source_unproven'});continue
            if host(parsed['source_url'])!=host(original['source_url']):
                stages.append({'stage':'identity','reason':'official_source_host_changed'});continue
            try:validate_projection(original,parsed,original['category_key'],secret)
            except Held as exc:
                stages.append({'stage':'projection','reason':str(exc)});continue
            # Save still repeats current source snapshot, history, and native gates.
            return await save_transition(pool,original,parsed,original['category_key'],secret,protected,request_id,'native_source_refresh')
        reason=stages[-1]['reason'] if stages else 'fresh_official_source_unproven'
        raise Held(reason,{'refresh_stages':stages,'get_count':len(seen),'observed_contact_links':len(seen)-1})
    except Held as exc:return result('native_source_held',candidate_id=str(candidate_id),gate_reason=str(exc),native_record_written=False,diagnostics=exc.diagnostics)
    except Exception:return result('native_source_held',candidate_id=str(candidate_id),gate_reason='research_transition_unavailable',native_record_written=False)


def install(app,require_admin,secret,protected_ids,search):
    from fastapi import Request,Header,HTTPException
    protected=frozenset(str(x) for x in protected_ids)
    async def read_body(request,request_id,key):
        require_admin(key)
        if not isinstance(request_id,str) or not re.fullmatch('[A-Za-z0-9][A-Za-z0-9_-]{5,118}',request_id):raise HTTPException(400,'invalid_request_id')
        raw=await request.body()
        if len(raw)>4096:raise HTTPException(413,'request_too_large')
        try:return json.loads(raw)
        except (ValueError,TypeError,UnicodeError):raise HTTPException(422,'invalid_research_request')

    @app.post('/api/admin/research-promote-census')
    async def promote(request:Request,request_id:str,x_bmc_admin_key:str|None=Header(default=None)):
        body=await read_body(request,request_id,x_bmc_admin_key)
        try:keys,service=validate_body(body)
        except (ValueError,TypeError):raise HTTPException(422,'invalid_research_request')
        try:
            async with app.state.pool.acquire() as conn:
                selected=[dict(r) for r in await conn.fetch(SELECT_SQL,keys)]
                originals={}
                for row in selected:
                    full=await conn.fetchrow(FULL_ROW_SQL,row['candidate_id'])
                    if full and raw_source_key(dict(full))==row['source_key']:originals[row['source_key']]=dict(full)
        except Exception:
            return seal_result(dict(request_id=request_id,results=[result('native_source_held',source_key=key,
                gate_reason='census_selection_unavailable',native_record_written=False) for key in keys],outreach_sent=0),request_id)
        async def one(key):
            if sum(row['source_key']==key for row in selected)!=1 or key not in originals:
                return result('native_source_held',source_key=key,gate_reason='exact_unheld_census_key_not_unique_or_found',native_record_written=False)
            return await promote_one(app.state.pool,originals[key],service,search,secret,protected,request_id)
        results=await asyncio.gather(*(one(key) for key in keys))
        return seal_result(dict(request_id=request_id,results=results,outreach_sent=0),request_id)

    @app.post('/api/admin/refresh-uncontacted-vendor')
    async def refresh(request:Request,request_id:str,x_bmc_admin_key:str|None=Header(default=None)):
        body=await read_body(request,request_id,x_bmc_admin_key)
        try:
            if not isinstance(body,dict) or set(body)!={'candidate_id'} or not isinstance(body['candidate_id'],str):raise ValueError('body')
            candidate=uuid.UUID(body['candidate_id'])
            if str(candidate)!=body['candidate_id']:raise ValueError('body')
        except (ValueError,TypeError):raise HTTPException(422,'invalid_research_request')
        status=await refresh_one(app.state.pool,candidate,secret,protected,request_id)
        return seal_result(dict(request_id=request_id,results=[status],outreach_sent=0),request_id)
