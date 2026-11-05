"""Bounded private pilot-to-native buyer importer; insert new rows only.

Run inside ops_api: python - <script> cannot also carry report stdin; install/run
this module as a file and pipe private JSON report to it. No network or API calls.
The private trusted-host report must contain native server HMACs. A model's raw
proposal, receipt claim, UUID or official_site flag is never sufficient authority.
"""
import asyncio,copy,hashlib,json,os,re,sys,uuid
from datetime import datetime,timedelta,timezone
from pathlib import Path
for directory in (Path(__file__).resolve().parent/'api',Path('/app')):
    if directory.is_dir():sys.path.insert(0,str(directory))
from official_research import auto_evidence_valid,allowed_url,host,VERSION
from property_visible_source import VERSION as V3, auto_property_visible_valid

MAX_RECORDS=60
MAX_INPUT_BYTES=8_000_000
MAX_SOURCE_AGE=timedelta(hours=2)
NAME_SQL="regexp_replace(trim(regexp_replace(lower(business_name),'[^a-z0-9]+',' ','g')),'( (llc|inc|incorporated|corp|corporation|ltd|limited))+$','')"
EXISTING_SQL="""select candidate_id from market_inventory_candidates where side='buyer' and market='Phoenix'
 and (source_url=$1 and business_name=$2 or """+NAME_SQL+"""=$3) limit 1"""
from recipient_history import inert_outreach_sql, protected_target_sql
HISTORY_SQL="""select
 exists(select 1 from outreach_suppressions where lower(email)=any($1::text[]))
 or exists(select 1 from growth_prospect_suppressions where lifted_at is null and prospect_key=any($4::text[]))
 or exists(select 1 from growth_outreach_targets g where (lower(g.public_email)=any($1::text[])
   or (g.market='Phoenix' and regexp_replace(lower(g.business_name),'[^a-z0-9]','','g')=$2)) and """+protected_target_sql('g')+""")
 or exists(select 1 from outreach o
   left join buyers b on o.entity_type='buyer' and o.entity_id=b.buyer_id
   left join vendors v on o.entity_type='vendor' and o.entity_id=v.vendor_id
   left join growth_outreach_targets g on o.entity_type='growth_customer' and o.entity_id=g.target_id
   where (lower(b.public_email)=any($1::text[]) or lower(v.public_email)=any($1::text[]) or lower(g.public_email)=any($1::text[])
    or (b.market='Phoenix' and regexp_replace(lower(b.business_name),'[^a-z0-9]','','g')=$2)) and not """+inert_outreach_sql('o',('queued','superseded'))+""")
 or exists(select 1 from events where event_type in ('outreach_sent','outreach_reply','owner_reply_review')
   and (lower(payload->>'email')=any($1::text[]) or lower(payload->>'sender')=any($1::text[])))
 or exists(select 1 from growth_sample_requests where lower(email)=any($1::text[])
   or (market='Phoenix' and regexp_replace(lower(business_name),'[^a-z0-9]','','g')=$2))
 or exists(select 1 from orders where lower(customer_email)=any($1::text[]))
 or exists(select 1 from growth_purchase_offers where lower(email)=any($1::text[]))
 or exists(select 1 from growth_email_verifications where lower(email)=any($1::text[]))
 or exists(select 1 from growth_prospect_exposures where recipient_key=any($3::text[]) or lower(recipient_key)=any($1::text[]))"""
INSERT_SQL="""insert into market_inventory_candidates(side,market,category_key,category_label,business_name,
 source_url,source_domain,snippet,public_email,public_phone,official_site,source_tier,verification_status,
 last_verified_at,status,query_strategy_version,evidence)
 values('buyer','Phoenix','property_management','Property Management',$1,$2,$3,$4,nullif($5,''),nullif($6,''),
 true,'direct','direct_evidence',$7,'discovered',7,$8::jsonb)
 on conflict(side,market,category_key,source_url,business_name) do nothing returning candidate_id"""

class InvalidProposal(ValueError):pass

def canonical(value):return json.dumps(value,sort_keys=True,separators=(',',':'),default=str)
def legal(value):
    tokens=re.findall('[a-z0-9]+',str(value).lower())
    while tokens and tokens[-1] in ('llc','inc','incorporated','corp','corporation','ltd','limited'):tokens.pop()
    return ' '.join(tokens)
def clock(value):
    result=datetime.fromisoformat(value)
    if result.tzinfo is None:raise InvalidProposal('naive_source_time')
    return result.astimezone(timezone.utc)

def report_records(report):
    if not isinstance(report,dict):raise ValueError('invalid_pilot_report')
    values=report.get('verified')
    if (not isinstance(values,list) or not 0<=len(values)<=MAX_RECORDS
        or report.get('verified_count',len(values))!=len(values)):
        raise ValueError('pilot_report_record_limit_or_shape')
    return values



def validate_record(entry,secret,now=None):
    now=now or datetime.now(timezone.utc)
    if not isinstance(entry,dict):raise InvalidProposal('invalid_record')
    nested=[entry[k] for k in ('candidate','record','parsed_record') if k in entry]
    if len(nested)>1:raise InvalidProposal('ambiguous_record')
    row=copy.deepcopy(nested[0] if nested else entry)
    if not isinstance(row,dict):raise InvalidProposal('invalid_record')
    receipt=entry.get('source_receipt') or entry.get('receipt') or row.get('source_receipt') or row.get('receipt')
    if not isinstance(receipt,dict):raise InvalidProposal('source_receipt_required')
    try:
        evidence=row.get('evidence') or {}
        if isinstance(evidence,str):evidence=json.loads(evidence)
        signed=evidence.get('vps_verification') or {}
        if (row.get('side')!='buyer' or row.get('market')!='Phoenix' or row.get('category_key')!='property_management'
            or signed.get('verifier') not in (VERSION,V3) or evidence.get('researched_by')!=signed.get('verifier')
            or evidence.get('qualification_hold') or row.get('closed_at') is not None
            or row.get('status','discovered')!='discovered' or row.get('promoted_entity_id')
            or evidence.get('contact_verification') is not None):raise InvalidProposal('pilot_buyer_scope_required')
        if not auto_evidence_valid(row,secret):raise InvalidProposal('native_hmac_or_row_binding_invalid')
        if any(row.get(key)!=signed.get(key) for key in ('side','business_name','market','category_key','source_url','snippet','public_phone','public_email')):
            raise InvalidProposal('exact_native_field_binding_required')
        # UUID is not MAC-bound by native v1. Never use a supplied UUID for an
        # update or insert identity: the DB generates new IDs under natural key.
        if str(uuid.UUID(str(row.get('candidate_id'))))!=str(uuid.uuid5(uuid.NAMESPACE_URL,receipt.get('requested_url',''))):
            raise InvalidProposal('pilot_source_candidate_binding_invalid')
        is_v3=signed.get('verifier')==V3
        role=row.get('pilot_property_evidence')
        if not is_v3 and (not isinstance(role,dict) or role.get('published_role') not in ('property_management','apartment_community')
            or role.get('confirmed_buying_intent') is not False or role.get('native_verification_performed') is not False
            or role.get('provider_accepted') is not False
            or not isinstance(role.get('identity_excerpt'),str) or not role['identity_excerpt']
            or not isinstance(role.get('role_excerpt'),str) or not role['role_excerpt']):
            raise InvalidProposal('trusted_pilot_role_evidence_required')
        if receipt.get('html_file') is not None and receipt['html_file']!=row['candidate_id']+('-0.html' if is_v3 or entry.get('verification_kind') else '.html'):
            raise InvalidProposal('pilot_html_reference_mismatch')
        if not legal(row['business_name']):raise InvalidProposal('identity_required')
        source=row['source_url'];digest=signed['content_sha256']
        if is_v3:
            if not auto_property_visible_valid(row,secret,now=now):raise InvalidProposal('visible_native_invalid')
            actual=[receipt]+entry.get('contact_receipts',[])
            signed_receipts=signed.get('source_receipts')
            if not 1<=len(actual)<=3:raise InvalidProposal('full_receipt_binding_required')
            for index,bound in enumerate(signed_receipts):
                choices=actual[:1] if index==0 else actual[1:]
                if not any(all(observed.get(k)==v for k,v in bound.items()) for observed in choices):raise InvalidProposal('full_receipt_binding_required')
        if (receipt.get('http_status')!=200 or receipt.get('content_sha256')!=digest
            or receipt.get('final_url')!=source or not allowed_url(receipt.get('requested_url',''))
            or host(receipt['requested_url'])!=host(source)):
            raise InvalidProposal('receipt_proof_binding_invalid')
        hops=receipt.get('redirect_chain',[])
        if not isinstance(hops,(list,tuple)) or any(not allowed_url(x) or host(x)!=host(source) for x in hops):raise InvalidProposal('receipt_redirect_invalid')
        fetched=clock(receipt['fetched_at']);checked=clock(signed['checked_at'])
        if not timedelta(0)<=now-fetched<=MAX_SOURCE_AGE or not timedelta(0)<=now-checked<=MAX_SOURCE_AGE:
            raise InvalidProposal('source_not_fresh')
        if not timedelta(0)<=checked-fetched<=timedelta(minutes=5):raise InvalidProposal('receipt_parse_time_mismatch')
        if receipt.get('content_type') and receipt['content_type'].split(';')[0].strip().lower() not in ('text/html','application/xhtml+xml'):
            raise InvalidProposal('source_not_html')
        document=entry.get('document') or receipt.get('document')
        if document is not None:
            if not isinstance(document,str) or hashlib.sha256(document.encode()).hexdigest()!=digest:raise InvalidProposal('source_bytes_hash_mismatch')
            from api_pilot_property import validate_property_source
            validate_property_source(row,document)
        proof_fields=('business_name','market','category_key','source_url','snippet','public_email','public_phone','side')
        projection={key:row.get(key) for key in proof_fields}
        projection.update(source_domain=host(source),last_verified_at=checked,
            evidence={'researched_by':signed['verifier'],'vps_verification':copy.deepcopy(signed),
                'api_pilot_import':{'pilot_property_evidence':copy.deepcopy(role),'source_receipt':copy.deepcopy({k:v for k,v in receipt.items() if k!='document'}),
                                    'authority':'Native server HMAC; private trusted-host pilot report, not model claims'}})
        projection['official_site']=True
        if not auto_evidence_valid(projection,secret):raise InvalidProposal('native_projection_invalid')
        return projection
    except InvalidProposal:raise
    except (ValueError,TypeError,KeyError,AttributeError):raise InvalidProposal('invalid_native_source_proposal')


async def import_report(conn,report,secret):
    if not secret:raise ValueError('native_signing_key_required')
    entries=report_records(report)
    summary={'ok':True,'records_received':len(entries),'validated':0,'inserted':0,'existing_unchanged':0,
             'held_history':0,'invalid':0,'duplicates':0,'provider_accepted':False,'outreach_sent':0}
    prepared=[];seen=set()
    for entry in entries:
        try:row=validate_record(entry,secret)
        except InvalidProposal:summary['invalid']+=1;continue
        key=legal(row['business_name'])
        if key in seen:summary['duplicates']+=1;continue
        seen.add(key);prepared.append(row)
    summary['validated']=len(prepared)
    if not prepared:return summary
    async with asyncio.timeout(60):
        async with conn.transaction():
            # Same allocator lock as native research and Growth distribution. No
            # network/model calls occur in this short bounded transaction.
            await conn.execute("set local lock_timeout='5s'")
            await conn.execute("set local statement_timeout='10s'")
            await conn.execute('select pg_advisory_xact_lock(20261027, 5182)')
            for row in prepared:
                compact=re.sub('[^a-z0-9]','',row['business_name'].lower());email=str(row.get('public_email') or '').lower()
                emails=[email] if email else [];phone=re.sub(r'\D','',str(row.get('public_phone') or ''))[-10:]
                contacts=['email:'+email] if email else (['phone:'+phone] if phone else [])
                keys=['phoenix:'+compact]+contacts
                if await conn.fetchval(EXISTING_SQL,row['source_url'],row['business_name'],legal(row['business_name'])):
                    summary['existing_unchanged']+=1;continue
                if await conn.fetchval(HISTORY_SQL,emails,compact,contacts,keys) is not False:
                    summary['held_history']+=1;continue
                inserted=await conn.fetchval(INSERT_SQL,row['business_name'],row['source_url'],row['source_domain'],row['snippet'],
                    row.get('public_email') or '',row.get('public_phone') or '',row['last_verified_at'],json.dumps(row['evidence']))
                summary['inserted' if inserted else 'existing_unchanged']+=1
    return summary


async def main():
    try:
        if os.environ.get('BMC_API_PILOT_IMPORT')!='1':raise ValueError('explicit_pilot_import_required')
        if not os.getenv('DATABASE_URL') or not os.getenv('BMC_ADMIN_KEY'):raise ValueError('container_native_config_required')
        raw=sys.stdin.buffer.read(MAX_INPUT_BYTES+1)
        if len(raw)>MAX_INPUT_BYTES:raise ValueError('private_report_too_large')
        report=json.loads(raw)
        # Validate shape before opening any database connection.
        report_records(report)
        import asyncpg
        conn=await asyncpg.connect(os.environ['DATABASE_URL'])
        try:summary=await import_report(conn,report,os.environ['BMC_ADMIN_KEY'])
        finally:await conn.close()
        print(json.dumps(summary,sort_keys=True))
    except Exception:
        print(json.dumps({'ok':False,'error':'pilot_buyer_import_refused','inserted':0,'outreach_sent':0}))
        raise SystemExit(1)

if __name__=='__main__':asyncio.run(main())
