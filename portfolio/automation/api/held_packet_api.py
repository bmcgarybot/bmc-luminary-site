"""Admin-only, read-only, sealed held packet preparation. No release capability."""
import asyncio
import base64
import json
import re
import uuid
from html.parser import HTMLParser
from urllib.parse import urlsplit

import official_research
from held_packets import compile_held_packet
from owner_research_export import seal_export


class VisibleText(HTMLParser):
    def __init__(self):
        super().__init__(); self.hidden=0; self.parts=[]
    def handle_starttag(self, tag, attrs):
        if tag in ('script','style','noscript','template'): self.hidden+=1
    def handle_endtag(self, tag):
        if tag in ('script','style','noscript','template') and self.hidden: self.hidden-=1
    def handle_data(self, data):
        if not self.hidden: self.parts.append(data)

# Narrow phrases observed on official sources; no substring "all commercial"
# fallback and no inference that a provider is accepted for specialist work.
SECTORS=(
    (r'\b(?:office cleaning|offices and professional suites|corporate campus)\b', ('insurance_professional',), 'office'),
    (r'\b(?:medical facilities|medical facilites|medical and dental clinics|healthcare)\b', ('medical_centers',), 'medical'),
    (r'\b(?:dental & medical facilites|dental and medical facilities|medical and dental clinics|dental cleaning)\b', ('dental',), 'dental'),
    (r'\b(?:manufacturing facility|manufacturing facilities|industrial manufacturing)\b', ('warehouses_industrial',), 'manufacturing'),
    (r'\beducation\b', ('schools','schools_education'), 'education'),
    (r'\bgovernment\b', ('public_facilities',), 'government'),
)


class PressureBlocks(VisibleText):
    """Visible text blocks bound to their immediately preceding service heading."""
    def __init__(self):
        super().__init__();self.context='';self.heading=False;self.heading_parts=[];self.buffer=[];self.blocks=[]
    def flush(self):
        text=' '.join(' '.join(self.buffer).split()).lower();self.buffer=[]
        if text:self.blocks.append((self.context,text))
    def handle_starttag(self,tag,attrs):
        if not self.hidden:
            if re.fullmatch(r'h[1-6]',tag):
                self.flush();self.context='';self.heading=True;self.heading_parts=[]
            elif tag in ('p','li','div','section','article','br'):
                self.flush()
        super().handle_starttag(tag,attrs)
    def handle_endtag(self,tag):
        if not self.hidden:
            if re.fullmatch(r'h[1-6]',tag):
                self.context=' '.join(' '.join(self.heading_parts).split()).lower();self.heading=False
            elif tag in ('p','li','div','section','article'):
                self.flush()
                if tag in ('section','article'):self.context=''
        super().handle_endtag(tag)
    def handle_data(self,data):
        if not self.hidden:
            (self.heading_parts if self.heading else self.buffer).append(data)


def source_focus(document,service_key=None):
    if service_key=='pressure_washing':
        parser=PressureBlocks();parser.feed(document);parser.flush()
        categories=set();terms=[];excerpts=[]
        for heading,text in parser.blocks:
            context=heading+' '+text
            if not re.search(r'\bcommercial\s+(?:soft|pressure)\s+washing\b',context):continue
            # Explicitly withdrawn service or excluded customer scope is held.
            if re.search(r"\b(?:no longer|do not|does not|don['’]t|doesn['’]t|not (?:currently |presently )?(?:available|offered|providing|offering|for|serving)|unavailable|discontinued|withdrawn)\b|\bno commercial\b",context):continue
            for pattern,key,term in (
                (r'\bstorefronts?\b','retail','retail'),
                (r'\boffices?\b','insurance_professional','office'),
                (r'\bmulti[- ]tenant properties\b','property_management','property management')):
                match=re.search(pattern,text)
                if match and key not in categories:
                    categories.add(key);terms.append(term);excerpts.append(match.group())
        if not categories:raise ValueError('unsupported_customer_focus')
        return dict(ideal_customer=', '.join(terms),exclusions='',category_keys=sorted(categories),observed_sector_phrases=excerpts)
    parser=VisibleText(); parser.feed(document)
    text=' '.join(' '.join(parser.parts).split()).lower()
    categories=set(); terms=[]; excerpts=[]
    for pattern, keys, term in SECTORS:
        match=re.search(pattern,text)
        if match:
            categories.update(keys); terms.append(term); excerpts.append(match.group())
    if not categories: raise ValueError('unsupported_customer_focus')
    return dict(ideal_customer=', '.join(terms), exclusions='',
                category_keys=sorted(categories), observed_sector_phrases=excerpts)


HISTORY_SQL="""select exists(select 1 from outreach_suppressions where lower(email)=lower($1))
 or exists(select 1 from outreach o
 left join growth_outreach_targets g on o.entity_type='growth_customer' and o.entity_id=g.target_id
 left join vendors v on o.entity_type='vendor' and o.entity_id=v.vendor_id
 left join buyers b on o.entity_type='buyer' and o.entity_id=b.buyer_id
 where lower(g.public_email)=lower($1) or lower(v.public_email)=lower($1) or lower(b.public_email)=lower($1))
 or exists(select 1 from growth_outreach_targets g where lower(g.public_email)=lower($1)
 and g.target_id::text=any($2::text[]))"""


async def compile_native_packet(conn,candidate,secret,frozen,hold_required,callbacks,pack_count=100):
    raw=await conn.fetchrow("""select candidate_id,side,market,category_key,category_label,
        business_name,source_url,public_email,public_phone,snippet,evidence
        from market_inventory_candidates where candidate_id=$1 and status='discovered'
        and closed_at is null and evidence->>'researched_by'='vps_primary_site_v1'""",candidate)
    if not raw: raise ValueError('recipient_unavailable')
    row=dict(raw)
    if (str(row['candidate_id']) in frozen or row.get('side')!='vendor'
        or row.get('category_key') not in ('commercial_cleaning','pressure_washing')
        or not re.fullmatch(r'[^\s@]+@[^\s@]+\.[^\s@]+',row.get('public_email') or '')
        or not official_research.auto_evidence_valid(row,secret)):
        raise ValueError('recipient_gate_failed')
    history=await conn.fetchval(HISTORY_SQL,row['public_email'],list(frozen))
    if history is not False: raise ValueError('recipient_history_or_suppression')
    final,document,digest=await asyncio.wait_for(
        asyncio.to_thread(official_research.fetch_page,row['source_url']),timeout=25)
    if (final!=row['source_url'] or official_research.host(final)!=official_research.host(row['source_url'])
        or len(document.encode('utf-8'))>1_000_000):
        raise ValueError('source_changed')
    parsed=official_research.parse_record(row,final,document,digest,secret)
    if (parsed['public_email'].lower()!=row['public_email'].lower()
        or not official_research.identity_matches(row['business_name'],parsed['business_name'],row['market'])):
        raise ValueError('recipient_contact_or_identity_changed')
    fresh=dict(row,**parsed)
    if not official_research.auto_evidence_valid(fresh,secret): raise ValueError('fresh_evidence_invalid')
    scope=dict(source_focus(document,fresh['category_key']),source_url=final,content_sha256=digest,checked_at=parsed['checked_at'],
               source_signature=parsed['evidence']['vps_verification']['signature'])
    allowed=set(scope['category_keys'])
    async def qualify(*args,**kwargs):
        values=await callbacks['qualify'](*args,**kwargs)
        return [value for value in values if value.get('category_key') in allowed]
    async def verified(*args): return True
    packet=await compile_held_packet(conn,fresh,scope,verify_recipient=verified,pack_count=pack_count,
        **dict(callbacks,qualify=qualify))
    if not hold_required(): raise ValueError('owner_hold_changed')
    return dict(packet,recipient=fresh)


def install(app, require_admin, secret, original_ids, hold_required, compiler_callbacks):
    """Callbacks are existing read-only qualifiers/renderers; frozen nine stay out."""
    from fastapi import Header, HTTPException
    frozen=frozenset(str(value) for value in original_ids)
    if len(frozen)!=9: raise ValueError('original_nine_ids_required')
    callbacks=dict(compiler_callbacks)
    required={'qualify','select_sample','public_rows','csv_bytes','recipient_business_key'}
    if set(callbacks)!=required: raise ValueError('compiler_callbacks_required')

    @app.post('/api/admin/held-research-packet')
    async def prepare(request_id: str, candidate_id: str, x_bmc_admin_key: str | None=Header(default=None), pack_count: int=100, diagnostics: bool=False):
        require_admin(x_bmc_admin_key)
        if not hold_required(): raise HTTPException(409,'owner_hold_required')
        if not re.fullmatch(r'[A-Za-z0-9][A-Za-z0-9_-]{5,118}',request_id):
            raise HTTPException(400,'invalid_request_id')
        if pack_count not in (25,100): raise HTTPException(400,'unsupported_pack_count')
        try: candidate=uuid.UUID(candidate_id)
        except ValueError: raise HTTPException(400,'invalid_candidate_id')
        try:
            async with app.state.pool.acquire() as conn:
                async with conn.transaction(readonly=True,isolation='repeatable_read'):
                    payload=await compile_native_packet(conn,candidate,secret,frozen,hold_required,callbacks,pack_count)
                    payload['artifacts']={str(count):dict(rows=value['rows'],
                        pdf_base64=base64.b64encode(value['pdf']).decode('ascii'),
                        csv_base64=base64.b64encode(value['csv']).decode('ascii'))
                        for count,value in payload['artifacts'].items()}
                    capsule=seal_export(payload,request_id)
                    if len(json.dumps(capsule,separators=(',',':')).encode())>500_000:
                        raise ValueError('sealed_packet_too_large')
                    return capsule
        except (ValueError,KeyError,TypeError,asyncio.TimeoutError) as exc:
            if diagnostics:
                # Bounded static codes only, inside authenticated owner encryption.
                known={'recipient_unavailable','recipient_gate_failed','recipient_history_or_suppression',
                    'source_changed','recipient_contact_or_identity_changed','fresh_evidence_invalid',
                    'unsupported_customer_focus','owner_hold_changed','sealed_packet_too_large',
                    'structured_identity_location_or_contact_unproven','untrusted_source',
                    'Qualified sample reserve is incomplete','The promised quantity is incomplete',
                    'export_size_exceeded','page_too_large','not_html','redirect_limit'}
                reason=str(exc)
                if isinstance(exc,asyncio.TimeoutError): reason='source_timeout'
                elif reason not in known and not re.fullmatch(r'http_[0-9]{3}',reason):reason='preparation_gate_failed'
                return seal_export(dict(status='held_packet_requires_review',offer_ready=False,
                    outreach_held=True,candidate_id=str(candidate),pack_count=pack_count,gate_reason=reason,
                    customer_order_created=False,customer_delivery_recorded=False),request_id)
            # No contacts, HTML, SQL or compiled rows in error responses.
            raise HTTPException(409,'held_packet_requires_review')
    return prepare
