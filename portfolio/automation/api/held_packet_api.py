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


class PressureBlocks(HTMLParser):
    """A visible service heading's next sibling paragraph or self-contained li supplies scope.

    Heading context never crosses a container boundary or preceding paragraph/list.
    This intentionally holds more complex service layouts for manual review.
    """
    CONTAINERS={'div','section','article','main','footer','header','aside','nav','li'}
    VOID={'area','base','br','col','embed','hr','img','input','link','meta','param','source','track','wbr'}
    def __init__(self):
        super().__init__();self.stack=[];self.context=None;self.blocks=[];self.exclusion_pending=False
    def owner(self):
        return next((node for node in reversed(self.stack) if node['tag'] in self.CONTAINERS),None)
    def handle_starttag(self,tag,attrs):
        attrs=dict(attrs);style=re.sub(r'\s+','',attrs.get('style') or '').lower()
        hidden=(bool(self.stack and self.stack[-1]['hidden']) or tag in ('script','style','noscript','template')
            or 'hidden' in attrs or 'inert' in attrs or str(attrs.get('aria-hidden','')).lower()=='true'
            or bool(re.search(r'(?:^|;)(?:display:none|visibility:(?:hidden|collapse)|content-visibility:hidden|opacity:0)(?:!important)?(?:;|$)',style)))
        if tag in self.CONTAINERS or re.fullmatch(r'h[1-6]',tag) or tag in ('ul','ol','table'):
            self.context=None
        excluded=bool(self.stack and self.stack[-1].get('excluded')) or self.exclusion_pending
        node={'tag':tag,'hidden':hidden,'parts':[],'owner':self.owner(),'excluded':excluded}
        if tag in ('ul','ol'):self.exclusion_pending=False
        if re.fullmatch(r'h[1-6]',tag):self.exclusion_pending=False
        if tag=='p':
            context=self.context;self.context=None  # Even a negative/hidden first paragraph consumes it.
            node['context']=context[0] if context and context[1] is node['owner'] else ''
        if tag not in self.VOID:self.stack.append(node)
        elif tag=='br':self.handle_data(' ')
    def handle_endtag(self,tag):
        index=next((i for i in range(len(self.stack)-1,-1,-1) if self.stack[i]['tag']==tag),None)
        if index is None:return
        node=self.stack[index]
        text=' '.join(' '.join(node['parts']).split()).lower()
        if re.fullmatch(r'h[1-6]',tag):
            self.context=(text,node['owner']) if not node['hidden'] and not node['excluded'] else None
        elif tag=='p' and not node['hidden'] and not node['excluded']:
            if re.search(r"\b(?:exclude[ds]?|excluding|do not serve|does not serve|don['’]t serve|not serving|not offered|not available|no longer)\b",text):
                self.exclusion_pending=True
            if not any(n['tag'] in ('footer','nav','aside','header') for n in self.stack[:index]):
                self.blocks.append((node.get('context',''),text))
        elif tag=='li':
            # Self-contained service-list text only; no inherited heading proof.
            if not node['hidden'] and not node['excluded'] and not any(n['tag'] in ('footer','nav','aside','header') for n in self.stack[:index]):
                self.blocks.append(('',text))
            self.context=None
        elif tag in self.CONTAINERS or tag in ('ul','ol','table'):
            self.context=None
            if tag not in ('ul','ol'):self.exclusion_pending=False
        del self.stack[index:]
    def handle_data(self,data):
        if self.stack and not self.stack[-1]['hidden']:
            target=next((node for node in reversed(self.stack) if node['tag'] in ('p','li') or re.fullmatch(r'h[1-6]',node['tag'])),None)
            if target is not None:target['parts'].append(data)
    def flush(self):
        # Incomplete/unclosed paragraphs are unsupported rather than guessed.
        pass


def source_focus(document,service_key=None):
    if service_key=='pressure_washing':
        parser=PressureBlocks();parser.feed(document);parser.flush()
        categories=set();terms=[];excerpts=[]
        for heading,text in parser.blocks:
            context=heading+' '+text
            if not re.search(r'\bcommercial\s+(?:soft|pressure)\s+washing\b',context):continue
            # Explicitly withdrawn service or excluded customer scope is held.
            if re.search(r"\b(?:no longer|exclude[ds]?|excluding|do not|does not|don['’]t|doesn['’]t|not (?:currently |presently )?(?:available|offered|providing|offering|for|serving)|unavailable|discontinued|withdrawn)\b|\bno commercial\b",context):continue
            for pattern,key,term in (
                (r'\bstorefronts?\b','retail','retail'),
                (r'\boffices\b','insurance_professional','office'),
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


def same_held_recipient_identity(original,current):
    """Exact legal-name tokens, never subset matching or supplier-word removal."""
    def tokens(value):
        words=re.findall(r'[a-z0-9]+',str(value).casefold().replace('&',' and '))
        while words:
            if words[-1] in {'llc','inc','incorporated','corp','corporation'}:words.pop()
            elif len(words)>=3 and words[-3:]==['l','l','c']:del words[-3:]
            else:break
        return words
    left,right=tokens(original),tokens(current)
    return bool(left and left==right)


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
    receipt=await asyncio.wait_for(
        asyncio.to_thread(official_research.fetch_page_receipt,row['source_url']),timeout=25)
    final,document,digest=receipt.final_url,receipt.document,receipt.content_sha256
    if receipt.requested_url!=row['source_url'] or receipt.http_status!=200:raise ValueError('source_changed')
    if (final!=row['source_url'] or official_research.host(final)!=official_research.host(row['source_url'])
        or len(document.encode('utf-8'))>1_000_000):
        raise ValueError('source_changed')
    parsed=official_research.parse_record(row,final,document,digest,secret)
    if (parsed['public_email'].lower()!=row['public_email'].lower()
        or not same_held_recipient_identity(row['business_name'],parsed['business_name'])):
        raise ValueError('recipient_contact_or_identity_changed')
    fresh=dict(row,**parsed)
    if not official_research.auto_evidence_valid(fresh,secret): raise ValueError('fresh_evidence_invalid')
    scope=dict(source_focus(document,fresh['category_key']),source_url=final,content_sha256=digest,checked_at=parsed['checked_at'],
               source_signature=parsed['evidence']['vps_verification']['signature'])
    from qualification_scope import from_fresh
    qualification_scope=from_fresh(fresh,scope,receipt,secret)
    diagnostics=[]
    allowed=set(scope['category_keys'])
    async def qualify(*args,**kwargs):
        if qualification_scope is not None:kwargs=dict(kwargs,_qualification_scope=qualification_scope,_qualification_diagnostics=diagnostics)
        values=await callbacks['qualify'](*args,**kwargs)
        return [value for value in values if value.get('category_key') in allowed]
    async def verified(*args): return True
    try:
        packet=await compile_held_packet(conn,fresh,scope,verify_recipient=verified,pack_count=pack_count,
            **dict(callbacks,qualify=qualify))
    except ValueError as exc:
        exc.qualification_diagnostics=diagnostics
        raise
    packet['qualification_diagnostics']=diagnostics
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
                    customer_order_created=False,customer_delivery_recorded=False,
                    qualification_diagnostics=getattr(exc,'qualification_diagnostics',[])),request_id)
            # No contacts, HTML, SQL or compiled rows in error responses.
            raise HTTPException(409,'held_packet_requires_review')
    return prepare
