"""Admin-only, bounded empty-native-mailbox enrichment; no provider/outreach writes.

Fetches outside the transaction. Final save locks and rechecks the unchanged
candidate, and refuses any historical/customer relation. Existing nonempty email
is immutable (except an idempotent read of the same valid contact attestation).
"""
import asyncio
import copy
import hashlib
import hmac
import json
import re
import uuid
from datetime import datetime,timezone
from urllib.parse import urlsplit,urlunsplit

from contact_enrichment import verify_contact_enrichment,create_contact_verification,_ContactPage
from official_research import auto_evidence_valid,canonical,fetch_page_receipt,host,VENDOR_TERMS,allowed_url
from owner_research_export import seal_export

MAX_CAPSULE_BYTES=500_000
SELECT_SQL='select * from market_inventory_candidates where candidate_id=$1'
# All names/columns below are from the actual migrated schema; no inferred
# candidate_id columns on recipient sample/order tables. Bare prospect/discovered
# inventory is not interaction; other states and all submitted leads remain protected.
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
 or exists(select 1 from vendors where
   (vendor_id=any($2::text[]) or lower(public_email)=any($3::text[]) or lower(business_name)=lower($4))
   and coalesce(status,'') not in ('prospect','discovered','research'))
 or exists(select 1 from buyers where
   (buyer_id=any($2::text[]) or lower(public_email)=any($3::text[]))
   and coalesce(status,'') not in ('prospect','discovered','research'))
 or exists(select 1 from lead_matches m join vendors v on v.vendor_id=m.vendor_id
   where v.vendor_id=any($2::text[]) or lower(v.public_email)=any($3::text[]) or lower(v.business_name)=lower($4))
 or exists(select 1 from growth_sample_requests where source_target_id=any($2::text[])
   or lower(email)=any($3::text[]) or (lower(business_name)=lower($4) and market=$5))
 or exists(select 1 from growth_prospect_exposures where (lower(recipient_key)=any($3::text[]) or 'email:'||lower(recipient_key)=any($6::text[])) and status in ('reserved','delivered'))
 or exists(select 1 from growth_email_verifications where lower(email)=any($3::text[]))
 or exists(select 1 from orders where lower(customer_email)=any($3::text[]))
 or exists(select 1 from growth_purchase_offers where lower(email)=any($3::text[]))
 or exists(select 1 from leads where lower(email)=any($3::text[]))"""


class Held(ValueError):pass


def _evidence(row):
    value=row.get('evidence') or {}
    if isinstance(value,str):value=json.loads(value)
    if not isinstance(value,dict):raise Held('invalid_native_evidence')
    return value


def safe_get_url(url):
    if not isinstance(url,str) or not allowed_url(url):return False
    parts=urlsplit(url)
    return not parts.query and not parts.fragment and not re.search(
        r'/(?:admin|api|account|login|logout|unsubscribe|checkout|payment|delete|remove|confirm|activate|subscribe|reset|submit)(?:/|[.-]|$)',parts.path,re.I)


def validate_body(body):
    if not isinstance(body,dict) or set(body)!={'candidate_id','contact_url','public_email'}:raise ValueError('invalid_body')
    if not all(isinstance(body[k],str) for k in body):raise ValueError('invalid_body')
    candidate=uuid.UUID(body['candidate_id'])
    if str(candidate)!=body['candidate_id'] or not safe_get_url(body['contact_url']):raise ValueError('invalid_body')
    if len(body['contact_url'])>2048 or len(body['public_email'])>254 or not re.fullmatch(r'[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}',body['public_email']):raise ValueError('invalid_body')
    return candidate,body['contact_url'],body['public_email'].lower()


def validate_hash_body(body):
    if not isinstance(body,dict) or set(body)!={'candidate_id','contact_path','email_sha256'}:raise ValueError('invalid_body')
    if not all(isinstance(body[k],str) for k in body):raise ValueError('invalid_body')
    candidate=uuid.UUID(body['candidate_id']);path=body['contact_path']
    # ASCII public document paths only: reject schemes, network-path references,
    # encoded separators/traversal, backslashes, queries and fragments outright.
    if (str(candidate)!=body['candidate_id'] or not 1<=len(path)<=1024
        or not re.fullmatch(r'/[A-Za-z0-9_./-]*',path) or path.startswith('//')
        or any(piece in ('.','..') for piece in path.split('/'))
        or not re.fullmatch('[0-9a-f]{64}',body['email_sha256'])):raise ValueError('invalid_body')
    if not safe_get_url('https://path-validation.example'+path):raise ValueError('invalid_body')
    return candidate,path,body['email_sha256']


def _email_hash(email):return hashlib.sha256(email.lower().encode('utf-8')).hexdigest()


def _published_mailbox(receipt,expected_hash):
    try:
        page=_ContactPage();page.feed(receipt.document)
        emails={item[0] for item in page.mail}
    except (ValueError,TypeError,AttributeError):raise Held('exact_single_published_mailbox_unproven')
    if len(emails)!=1:raise Held('exact_single_published_mailbox_unproven')
    email=next(iter(emails))
    if not hmac.compare_digest(_email_hash(email),expected_hash):raise Held('published_mailbox_hash_mismatch')
    return email


def _eligible(row,secret,protected):
    if row is None:raise Held('candidate_not_found')
    cid=str(row['candidate_id']);target='inventory:'+cid
    if cid in protected or target in protected or str(row.get('promoted_entity_id') or '') in protected:
        raise Held('protected_candidate')
    if (row.get('status')!='discovered' or row.get('closed_at') is not None or row.get('promoted_entity_id')
        or row.get('side')!='vendor' or row.get('category_key') not in VENDOR_TERMS
        or row.get('official_site') is not True or _evidence(row).get('qualification_hold')):
        raise Held('candidate_not_unheld_native_vendor')
    if not auto_evidence_valid(row,secret):raise Held('current_native_proof_required')
    if not safe_get_url(row['source_url']):raise Held('unsupported_primary_url')


def _snapshot(row):
    return canonical({k:row.get(k) for k in ('candidate_id','business_name','side','market','category_key',
        'source_url','public_email','public_phone','snippet','status','closed_at','promoted_entity_id','official_site')}
        |{'candidate_id':str(row['candidate_id']),'evidence':_evidence(row)})


async def _no_history(conn,row,email):
    cid=row['candidate_id'];ids=[str(cid),'inventory:'+str(cid)]
    if row.get('promoted_entity_id'):ids.append(str(row['promoted_entity_id']))
    emails=sorted({x.lower() for x in (email,row.get('public_email') or '') if x})
    if await conn.fetchval(HISTORY_SQL,str(cid),ids,emails,row['business_name'],row['market'],['email:'+x for x in emails]) is not False:
        raise Held('existing_customer_target_or_history')


def _same_attestation(row,email,url):
    token=_evidence(row).get('contact_verification')
    return bool(isinstance(token,dict) and row.get('public_email')==email and token.get('public_email')==email
        and url in (token.get('contact_receipt',{}).get('requested_url'),token.get('contact_receipt',{}).get('final_url')))


def _payload(status,request_id,**fields):
    return dict(status=status,request_id=request_id,observed_at=datetime.now(timezone.utc).isoformat(),
                provider_accepted=False,confirmed_demand=False,outreach_sent=0,**fields)


def _seal(payload,request_id):
    if len(json.dumps(payload,default=str).encode())>MAX_CAPSULE_BYTES:raise Held('capsule_size_exceeded')
    sealed=seal_export(payload,request_id)
    if len(json.dumps(sealed).encode())>MAX_CAPSULE_BYTES:raise Held('capsule_size_exceeded')
    return sealed


async def enrich(pool,candidate_id,contact_url,email,secret,protected,request_id,*,contact_path=None,email_sha256=None):
    async with pool.acquire() as conn:
        row=await conn.fetchrow(SELECT_SQL,candidate_id)
        row=dict(row) if row else None
        _eligible(row,secret,protected)
        if contact_path is not None:
            signed_source=_evidence(row)['vps_verification']['source_url']
            parts=urlsplit(signed_source)
            contact_url=urlunsplit(('https',parts.netloc,contact_path,'',''))
            if not safe_get_url(contact_url):raise Held('unsupported_contact_path')
        if row.get('public_email'):
            if email_sha256 is not None:
                if not hmac.compare_digest(_email_hash(row['public_email']),email_sha256):
                    raise Held('published_mailbox_hash_mismatch')
                email=row['public_email']
            if _same_attestation(row,email,contact_url):
                return _seal(_payload('native_contact_already_verified',request_id,candidate_id=str(candidate_id),
                    contact_verification=_evidence(row)['contact_verification'],native_record_written=False),request_id)
            raise Held('nonempty_native_mailbox_immutable')
        if host(contact_url)!=host(row['source_url']):raise Held('contact_domain_mismatch')
        await _no_history(conn,row,email)
    original_snapshot=_snapshot(row)
    # Two bounded server fetch operations, maximum two in parallel. Existing
    # transport bounds each operation to four pinned HTTPS hops and 1MB per page.
    urls=list(dict.fromkeys([row['source_url'],contact_url]))
    async def fetch(url):
        try:
            receipt=await asyncio.wait_for(asyncio.to_thread(fetch_page_receipt,url),45)
        except Exception:raise Held('official_fetch_unavailable')
        if receipt.requested_url!=url or any(not safe_get_url(u) for u in (receipt.final_url,*receipt.redirect_chain)):
            raise Held('receipt_url_unproven')
        return receipt
    receipts=await asyncio.gather(*(fetch(url) for url in urls))
    by_url=dict(zip(urls,receipts));primary=by_url[row['source_url']];contact=by_url[contact_url]
    def trusted(receipt):return any(receipt is value for value in receipts)
    if email_sha256 is not None:email=_published_mailbox(contact,email_sha256)
    try:
        proposal=verify_contact_enrichment(row,primary,contact,email,secret,receipt_is_trusted=trusted)
        token=create_contact_verification(row,proposal,secret,receipt_is_trusted=trusted)
    except (ValueError,TypeError,KeyError) as exc:
        if str(exc) in ('contact_address_conflict_or_unproven','fresh_primary_visible_address_conflict','fresh_primary_identity_or_location_conflict'):
            raise Held('published_identity_or_address_conflict')
        raise Held('fresh_contact_or_primary_proof_conflict')
    async with pool.acquire() as conn:
        async with conn.transaction():
            # Same email/service key as scoped journey preparation; no global
            # history-table locks. Empty native mailbox is required at both reads.
            await conn.fetchval('select pg_advisory_xact_lock(hashtextextended($1,0))','native_contact_candidate:'+str(candidate_id))
            await conn.fetchval('select pg_advisory_xact_lock(hashtextextended($1,0))','native_contact_email:'+email)
            await conn.fetchval('select pg_advisory_xact_lock(hashtextextended($1,0))','scoped_journey:'+email+'|'+row['category_key'])
            current=await conn.fetchrow(SELECT_SQL+' for update',candidate_id)
            current=dict(current) if current else None
            _eligible(current,secret,protected)
            if _snapshot(current)!=original_snapshot:raise Held('native_candidate_changed')
            if current.get('public_email'):raise Held('nonempty_native_mailbox_immutable')
            await _no_history(conn,current,email)
            updated=dict(current,public_email=email,evidence=copy.deepcopy(_evidence(current)))
            updated['evidence']['contact_verification']=token
            if not auto_evidence_valid(updated,secret):raise Held('updated_native_proof_invalid')
            # Seal before mutation; key/export failures cannot leave partial saves.
            capsule=_seal(_payload('native_contact_enriched',request_id,candidate_id=str(candidate_id),
                native_record_written=True,contact_verification=token),request_id)
            saved=await conn.fetchrow("""update market_inventory_candidates set public_email=$2,
                evidence=jsonb_set(evidence,'{contact_verification}',$3::jsonb,true)
                where candidate_id=$1 and coalesce(public_email,'')='' returning *""",candidate_id,email,json.dumps(token))
            if not saved or not auto_evidence_valid(dict(saved),secret):raise Held('updated_native_proof_invalid')
            return capsule


def install(app,require_admin,secret,protected_ids):
    from fastapi import Header,HTTPException,Request
    protected=frozenset(str(x) for x in protected_ids)
    @app.post('/api/admin/enrich-native-contact')
    async def collect(request:Request,request_id:str,x_bmc_admin_key:str|None=Header(default=None)):
        require_admin(x_bmc_admin_key)
        if not isinstance(request_id,str) or not re.fullmatch(r'[A-Za-z0-9][A-Za-z0-9_-]{5,118}',request_id):
            raise HTTPException(400,'invalid_request_id')
        raw=await request.body()
        if len(raw)>4096:raise HTTPException(413,'request_too_large')
        try:candidate,url,email=validate_body(json.loads(raw))
        except (ValueError,TypeError,UnicodeError):raise HTTPException(422,'invalid_contact_request')
        try:return await enrich(app.state.pool,candidate,url,email,secret,protected,request_id)
        except Held as exc:
            return _seal(_payload('native_contact_held',request_id,candidate_id=str(candidate),gate_reason=str(exc),native_record_written=False),request_id)
        except Exception:
            # No arbitrary transport, SQL, path or parser exception text escapes.
            return _seal(_payload('native_contact_held',request_id,candidate_id=str(candidate),gate_reason='contact_collection_unavailable',native_record_written=False),request_id)


    @app.post('/api/admin/enrich-native-contact-by-hash')
    async def collect_by_hash(request:Request,request_id:str,x_bmc_admin_key:str|None=Header(default=None)):
        require_admin(x_bmc_admin_key)
        if not isinstance(request_id,str) or not re.fullmatch(r'[A-Za-z0-9][A-Za-z0-9_-]{5,118}',request_id):
            raise HTTPException(400,'invalid_request_id')
        raw=await request.body()
        if len(raw)>4096:raise HTTPException(413,'request_too_large')
        try:candidate,path,email_hash=validate_hash_body(json.loads(raw))
        except (ValueError,TypeError,UnicodeError):raise HTTPException(422,'invalid_contact_request')
        try:
            return await enrich(app.state.pool,candidate,None,None,secret,protected,request_id,
                                contact_path=path,email_sha256=email_hash)
        except Held as exc:
            return _seal(_payload('native_contact_held',request_id,candidate_id=str(candidate),gate_reason=str(exc),native_record_written=False),request_id)
        except Exception:
            return _seal(_payload('native_contact_held',request_id,candidate_id=str(candidate),gate_reason='contact_collection_unavailable',native_record_written=False),request_id)
