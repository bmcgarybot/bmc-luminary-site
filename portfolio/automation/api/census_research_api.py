"""Bounded read-only enrichment proposals for exact reviewed manual census keys.

No native upsert, job claim, provider acceptance, customer packet or outreach.
Domain discovery is evidence for owner review only, never ownership approval.
"""
import asyncio
import hashlib
import json
import re
from datetime import datetime, timedelta, timezone
from urllib.parse import urlsplit

from official_research import VENDOR_TERMS, FetchedPageReceipt, allowed_url, fetch_page_receipt, host, parse_record, auto_evidence_valid, Page, entities
from owner_research_export import seal_export
from research_policy import VisibleText

MAX_CAPSULE_BYTES=500_000
KEY_SQL="encode(digest(convert_to(jsonb_build_array(side,market,category_key,business_name,source_url)::text,'UTF8'),'sha256'),'hex')"
SELECT_SQL="""select candidate_id,side,market,category_key,category_label,business_name,source_url,source_domain,
 public_email,public_phone,official_site,evidence,"""+KEY_SQL+""" source_key
 from market_inventory_candidates
 where side='vendor' and status='discovered' and closed_at is null
 and evidence->>'researched_by'='assistant_manual_census'
 and (not(evidence ? 'qualification_hold') or evidence->'qualification_hold' in ('false'::jsonb,'null'::jsonb))
 and """+KEY_SQL+"""=any($1::text[]) order by candidate_id limit 3"""


def research_get_url(url):
    if not allowed_url(url):return False
    parts=urlsplit(url)
    return not parts.query and not parts.fragment and not re.search(
        r'/(?:admin|api|account|login|logout|unsubscribe|checkout|payment|delete|remove|confirm|activate|subscribe|reset|submit)(?:/|[.-]|$)',parts.path,re.I)


def raw_source_key(row):
    values=[row.get(key) for key in ('side','market','category_key','business_name','source_url')]
    if not all(isinstance(value,str) and value for value in values) or values[0]!='vendor':
        raise ValueError('invalid_server_natural_key')
    return hashlib.sha256(json.dumps(values,ensure_ascii=False,separators=(', ',': ')).encode('utf-8')).hexdigest()


def validate_body(body):
    if not isinstance(body,dict) or set(body)!={'source_keys','requested_service'}:raise ValueError('exact_source_keys_and_service_required')
    keys=body['source_keys'];service=body['requested_service']
    if not isinstance(keys,list) or not 1<=len(keys)<=2 or not all(isinstance(k,str) and re.fullmatch('[0-9a-f]{64}',k) for k in keys) or len(set(keys))!=len(keys):
        raise ValueError('one_or_two_distinct_source_hashes_required')
    if not isinstance(service,str) or service not in VENDOR_TERMS:raise ValueError('unsupported_requested_service')
    return keys,service


def legal_name(value):
    parts=re.findall('[a-z0-9]+',str(value).lower())
    while parts and parts[-1] in ('llc','inc','incorporated','corp','corporation','ltd','limited'):parts.pop()
    return parts


def excerpt(document):
    parser=VisibleText();parser.feed(document)
    return ' '.join(' '.join(parser.parts).split())[:1800]


SCHEMA_KEYS=frozenset(('@type','name','alternateName','url','address','areaServed','serviceArea','telephone','email','description',
    'streetAddress','addressLocality','addressRegion','postalCode','addressCountry','containedInPlace'))
TOP_SCHEMA_KEYS=frozenset(('@type','name','alternateName','url','address','areaServed','serviceArea','telephone','email','description'))


def published_schema_observations(document):
    """Bounded unverified source assertions, never physical/native proof.

    Copy only declared diagnostic fields, excluding arbitrary JSON-LD keys,
    executable HTML and URL userinfo. Scalars remain inert, unverified strings
    in the encrypted owner capsule.
    """
    def sanitize(value,depth=0,key=''):
        if depth>3:return None
        if isinstance(value,str):
            value=re.sub(r'[\x00-\x1f\x7f]',' ',re.sub('<[^>]*>',' ',value))
            value=' '.join(value.split())[:(800 if key=='description' else 500)]
            if key=='url':
                try:
                    parsed_url=urlsplit(value)
                    if parsed_url.scheme not in ('http','https') or parsed_url.username or parsed_url.password:return None
                except ValueError:return None
            return value
        if isinstance(value,(int,float)) and not isinstance(value,bool):return str(value)[:40]
        if isinstance(value,list):
            return [cleaned for child in value[:6] if (cleaned:=sanitize(child,depth+1,key)) is not None]
        if isinstance(value,dict):
            return {k:cleaned for k,v in value.items() if k in SCHEMA_KEYS and (cleaned:=sanitize(v,depth+1,k)) is not None}
        return None
    page=Page()
    result={'status':'unverified_published_schema_only','physical_address_verified':False,'provider_accepted':False,
            'note':'Published JSON-LD assertions only; not verified identity, physical location, service area or provider acceptance.',
            'nodes':[]}
    try:
        from itertools import islice
        seen=set()
        page.feed(document)
        for obj in islice(entities(page.ld),200):
            # Skip container/@graph-only and noninformative type-only fragments.
            if not any(k in obj for k in TOP_SCHEMA_KEYS-{'@type'}):continue
            if '@type' not in obj and not ('name' in obj and any(k in obj for k in ('url','description','address','areaServed','serviceArea','telephone','email'))):continue
            clean={key:value for key in TOP_SCHEMA_KEYS if key in obj and (value:=sanitize(obj[key],0,key)) is not None}
            encoded=json.dumps(clean,ensure_ascii=True,sort_keys=True)
            if not clean or encoded in seen:continue
            proposed=dict(result,nodes=result['nodes']+[clean])
            if len(json.dumps(proposed,ensure_ascii=True).encode())>12000:break
            seen.add(encoded);result['nodes'].append(clean)
            if len(result['nodes'])>=6:break
    except (ValueError,TypeError,RecursionError):
        pass  # Malformed source schema is diagnostic-only and remains unverified.
    return result


def fetch_failure_reason(exc):
    if isinstance(exc,(TimeoutError,asyncio.TimeoutError)):return 'timeout'
    # Match only known transport exception values; never serialize arbitrary text.
    text=str(exc)
    if isinstance(exc,ValueError) and text in {'http_403','http_404','http_429','not_html','page_too_large','redirect_limit'}:return text
    return 'fetch_unavailable'


def held_source_result(result,receipt,reason):
    return dict(result,gate_reason=reason,visible_excerpt=excerpt(receipt.document),
                unverified_schema_observations=published_schema_observations(receipt.document))


async def review_row(row,service,search,secret):
    result={'status':'source_review_held','candidate_id':str(row['candidate_id']),'raw_source_key':row['source_key'],
            'requested_service':service,'gate_reason':'source_unavailable','original_source_url':row['source_url']}
    try:
        if raw_source_key(row)!=row['source_key']:raise ValueError('key')
    except (ValueError,KeyError):
        result['gate_reason']='server_natural_key_binding_unproven';return result
    url=row['source_url']
    if not research_get_url(url) or row['official_site'] is not True:
        try:
            found=await asyncio.wait_for(search('"'+row['business_name'][:140]+'" "'+row['market']+'" official website',1,5),20)
            url=next((item['url'] for item in found if isinstance(item,dict) and isinstance(item.get('url'),str) and research_get_url(item['url'])),None)
        except Exception:
            result['gate_reason']='search_unavailable';return result
    if not url:
        result['gate_reason']='no_allowed_official_candidate';return result
    try:
        receipt=await asyncio.wait_for(asyncio.to_thread(fetch_page_receipt,url),45)
    except Exception as exc:
        result['gate_reason']='fetch_unavailable';result['fetch_failure_reason']=fetch_failure_reason(exc);return result
    if not isinstance(receipt,FetchedPageReceipt) or receipt.requested_url!=url or not research_get_url(receipt.final_url) or host(receipt.final_url)!=host(url):
        result['gate_reason']='receipt_domain_binding_unproven';return result
    try:
        age=datetime.now(timezone.utc)-datetime.fromisoformat(receipt.fetched_at)
        if not -timedelta(minutes=5)<=age<=timedelta(minutes=5):raise ValueError('stale')
        if receipt.http_status!=200 or receipt.content_sha256!=hashlib.sha256(receipt.raw_bytes).hexdigest():raise ValueError('digest')
    except (ValueError,TypeError):
        result['gate_reason']='receipt_freshness_or_digest_unproven';return result
    result.update(source_url=receipt.final_url,source_receipt_sha256=receipt.content_sha256,source_fetched_at=receipt.fetched_at)
    try:
        parsed=parse_record(dict(row,category_key=service),receipt.final_url,receipt.document,receipt.content_sha256,secret)
    except (ValueError,TypeError,KeyError,RecursionError):
        return held_source_result(result,receipt,'structured_identity_location_service_or_contact_unproven')
    if not legal_name(row['business_name']) or legal_name(parsed['business_name'])!=legal_name(row['business_name']):
        return held_source_result(result,receipt,'exact_legal_name_mismatch')
    if row.get('public_email') and parsed.get('public_email','').lower()!=row['public_email'].lower():
        return held_source_result(result,receipt,'public_email_mismatch')
    if not auto_evidence_valid({**row,**parsed,'category_key':service},secret):
        return held_source_result(result,receipt,'current_native_proof_unproven')
    facts=dict(parsed['evidence']['vps_verification'])
    return dict(result,status='source_proposal_only',gate_reason=None,parsed_facts=facts,
                parsed_record=parsed,native_record_written=False,provider_accepted=False,offer_ready=False)


def install(app,require_admin,secret,hold_required,search):
    from fastapi import Request, Header, HTTPException
    @app.post('/api/admin/research-census-review')
    async def review(request:Request,request_id:str,x_bmc_admin_key:str|None=Header(default=None)):
        require_admin(x_bmc_admin_key)
        # Trusted server callback must enforce owner hold AND all three switches off.
        if hold_required() is not True:raise HTTPException(409,'owner_hold_and_all_outreach_off_required')
        if not re.fullmatch('[A-Za-z0-9][A-Za-z0-9_-]{5,118}',request_id):raise HTTPException(400,'invalid_request_id')
        raw=await request.body()
        if len(raw)>2048:raise HTTPException(413,'request_too_large')
        try:keys,service=validate_body(json.loads(raw))
        except (ValueError,TypeError,UnicodeError):raise HTTPException(422,'invalid_census_review_request')
        async with app.state.pool.acquire() as conn:
            async with conn.transaction(isolation='repeatable_read',readonly=True):
                rows=[dict(row) for row in await conn.fetch(SELECT_SQL,keys)]
        counts={key:sum(row['source_key']==key for row in rows) for key in keys}
        semaphore=asyncio.Semaphore(2)
        async def one(key):
            if counts[key]!=1:return {'status':'source_review_held','raw_source_key':key,'gate_reason':'exact_unheld_census_key_not_unique_or_not_found'}
            async with semaphore:return await review_row(next(row for row in rows if row['source_key']==key),service,search,secret)
        proposals=await asyncio.gather(*(one(key) for key in keys))
        if hold_required() is not True:raise HTTPException(409,'owner_hold_and_all_outreach_off_required')
        payload={'outreach_held':True,'offer_ready':False,'customer_orders_created':False,'provider_accepted':False,'request_id':request_id,'observed_at':datetime.now(timezone.utc).isoformat(),'proposals':proposals,
                 'scope':'Read-only source proposals only; manual census/native/frozen/customer state unchanged; no acceptance, staging, offer or release'}
        if len(json.dumps(payload,default=str).encode())>MAX_CAPSULE_BYTES:raise HTTPException(413,'capsule_size_exceeded')
        sealed=seal_export(payload,request_id)
        if len(json.dumps(sealed).encode())>MAX_CAPSULE_BYTES:raise HTTPException(413,'capsule_size_exceeded')
        return sealed
