"""Pure proposal verifier; no fetch, persistence, HMAC replacement or qualification.

Only trusted server collectors may call this helper. receipt_is_trusted must bind
receipt object identity to successful transports owned by that collection (never
an HTTP caller boolean or a registry populated from caller-supplied receipts).
Type/digest checks cannot authenticate a caller-constructed FetchedPageReceipt.
The current native HMAC pins the official host; this does not independently
prove business ownership of that domain or of a published off-domain mailbox.
"""
import hashlib
import re
from datetime import datetime, timedelta, timezone
from html.parser import HTMLParser
from urllib.parse import unquote, urlsplit
from uuid import UUID

from official_research import (FetchedPageReceipt, Page, allowed_url,
    auto_evidence_valid, compact, entities, host, parse_record, VENDOR_TERMS,
    canonical, CONTACT_VERSION, CONTACT_TTL, contact_seal)

EMAIL = re.compile(r'[A-Za-z0-9._%+\-]+@[A-Za-z0-9.\-]+\.[A-Za-z]{2,}')
PHONE = re.compile(r'(?<!\d)(?:\+?1[ .-]?)?\(?\d{3}\)?[ .-]\d{3}[ .-]\d{4}(?!\d)')
# Deliberately conservative: explicit Arizona postal addresses, not city mentions.
ADDRESS = re.compile(r'(?<![\d-])\b\d{1,6}[ \t]+[^\n<>;]{2,110}?,\s*[A-Za-z .-]+,\s*(?:[A-Z]{2}|Arizona)\s+\d{5}(?:-\d{4})?\b', re.I)
DESIGNER = re.compile(r'web(?:site)?\s*(?:design|develop)|designed\s+by|powered\s+by|site\s+by', re.I)


def _phone(value):
    digits=re.sub(r'\D','',str(value or ''))
    return digits[-10:] if len(digits)==10 or (len(digits)==11 and digits.startswith('1')) else ''


def _address(value):
    return compact(value)


def _time(value):
    result=datetime.fromisoformat(value)
    if result.tzinfo is None:raise ValueError('receipt_time_invalid')
    return result.astimezone(timezone.utc)


def _receipt(receipt, domain, now, trusted):
    if not isinstance(receipt,FetchedPageReceipt):raise ValueError('receipt_invalid')
    if trusted(receipt) is not True:raise ValueError('transport_provenance_unverified')
    urls=(receipt.requested_url,*receipt.redirect_chain,receipt.final_url)
    if any(not allowed_url(url) or host(url)!=domain or urlsplit(url).fragment for url in urls):
        raise ValueError('receipt_domain_mismatch')
    if receipt.http_status!=200 or receipt.content_type.split(';')[0].strip().lower() not in ('text/html','application/xhtml+xml'):
        raise ValueError('receipt_response_invalid')
    if not isinstance(receipt.raw_bytes,bytes) or not 0<len(receipt.raw_bytes)<=1_000_000:
        raise ValueError('receipt_size_invalid')
    if hashlib.sha256(receipt.raw_bytes).hexdigest()!=receipt.content_sha256:
        raise ValueError('receipt_digest_mismatch')
    if not timedelta(0)<=now-_time(receipt.fetched_at)<=timedelta(minutes=15):
        raise ValueError('receipt_stale_or_future')
    return {'requested_url':receipt.requested_url,'final_url':receipt.final_url,
            'content_sha256':receipt.content_sha256,'fetched_at':receipt.fetched_at,
            'http_status':200}


class _ContactPage(HTMLParser):
    def __init__(self):
        super().__init__(convert_charrefs=True)
        self.stack=[];self.text=[];self.mail=[];self.phones=[];self.skip=0

    def handle_starttag(self,tag,attrs):
        a=dict(attrs); frame={'tag':tag,'attrs':a,'text':[]}
        if tag not in {'br','hr','img','input','meta','link','source','wbr','area','base','embed','param','track','col'}:
            self.stack.append(frame)
        if tag in ('script','style','noscript'):self.skip+=1
        href=a.get('href','')
        if tag=='a' and href.lower().startswith('tel:'):self.phones.append(_phone(href[4:]))
        email=None;kind=None
        if tag=='a' and href.lower().startswith('mailto:'):
            # Multiple recipients/query headers are not an exact public single mailbox.
            parsed=urlsplit(href)
            value=unquote(parsed.path).lower()
            if not parsed.query and not parsed.fragment and EMAIL.fullmatch(value):email=value;kind='explicit_mailto'
            else:raise ValueError('ambiguous_mailto')
        if 'data-cfemail' in a:
            encoded=a['data-cfemail']
            if tag not in ('a','span') or not re.fullmatch(r'[0-9a-fA-F]{6,512}',encoded) or len(encoded)%2:
                raise ValueError('invalid_cfemail')
            try:
                raw=bytes.fromhex(encoded);value=bytes(c^raw[0] for c in raw[1:]).decode('ascii').lower()
            except (ValueError,UnicodeError):raise ValueError('invalid_cfemail')
            if not EMAIL.fullmatch(value):raise ValueError('invalid_cfemail')
            if email and email!=value:raise ValueError('conflicting_email_provenance')
            email=value;kind='cloudflare_data_cfemail'
        if email:
            # Preserve nearest broad contact/footer context; designer attribution holds.
            contexts=[x for x in self.stack if x['tag'] in ('footer','header','section','address','article','main')]
            self.mail.append((email,kind,contexts[-1] if contexts else next((x for x in reversed(self.stack) if x['tag']=='div'),frame)))

    def handle_endtag(self,tag):
        if tag in ('script','style','noscript') and self.skip:self.skip-=1
        for i in range(len(self.stack)-1,-1,-1):
            if self.stack[i]['tag']==tag:
                del self.stack[i:];break
        if tag in ('div','p','section','address','footer','header','br'):self.text.append('\n')

    def handle_data(self,data):
        if self.skip:return
        self.text.append(data)
        for frame in self.stack:frame['text'].append(data)


def contact_enrichment_proposal(candidate, primary_receipt, contact_receipt,
                                expected_email, secret, *, receipt_is_trusted,
                                now=None):
    """Return source-bound research proposal or raise a static ValueError.

    No candidate update is performed. Future persistence must separately lock and
    recheck current HMAC plus absence of ALL outreach/sample/target history before
    considering an update. This proposal is not native evidence and deliberately
    carries no vps_verification signature accepted by auto_evidence_valid.
    """
    now=now or datetime.now(timezone.utc)
    if now.tzinfo is None:raise ValueError('clock_invalid')
    if not callable(receipt_is_trusted):raise ValueError('transport_provenance_unverified')
    if not auto_evidence_valid(candidate,secret):raise ValueError('current_native_proof_required')
    if candidate.get('side')!='vendor' or candidate.get('category_key') not in VENDOR_TERMS:
        raise ValueError('vendor_scope_required')
    try:candidate_id=str(UUID(str(candidate['candidate_id'])))
    except (KeyError,ValueError,TypeError):raise ValueError('candidate_id_invalid')
    old=candidate['evidence']
    if isinstance(old,str):
        import json
        old=json.loads(old)
    old=old['vps_verification']
    domain=host(old['source_url'])
    primary_meta=_receipt(primary_receipt,domain,now,receipt_is_trusted)
    contact_meta=_receipt(contact_receipt,domain,now,receipt_is_trusted)
    if not isinstance(expected_email,str) or not EMAIL.fullmatch(expected_email):raise ValueError('expected_email_invalid')
    expected_email=expected_email.lower()
    fresh=parse_record(candidate,primary_receipt.final_url,primary_receipt.document,primary_receipt.content_sha256,secret)
    for key in ('business_name','market','category_key','side','physical_address','public_phone'):
        if compact(fresh.get(key))!=compact(old.get(key)):raise ValueError('fresh_primary_identity_or_location_conflict')
    if not fresh.get('public_phone'):raise ValueError('primary_phone_required')
    primary_visible=_ContactPage();primary_visible.feed(primary_receipt.document)
    if {_address(m.group()) for m in ADDRESS.finditer(' '.join(primary_visible.text))}-{_address(fresh['physical_address'])}:
        raise ValueError('fresh_primary_visible_address_conflict')
    if fresh.get('public_email') and fresh['public_email'].lower()!=expected_email:raise ValueError('primary_email_conflict')
    page=_ContactPage();page.feed(contact_receipt.document);visible=' '.join(page.text)
    if compact(fresh['business_name']) not in compact(visible):raise ValueError('contact_identity_unproven')
    visible_emails={x.group().lower() for x in EMAIL.finditer(visible)}
    if visible_emails-{expected_email}:raise ValueError('contact_email_conflict')
    phones={p for p in page.phones if p}|{_phone(x.group()) for x in PHONE.finditer(visible)}
    if phones!={_phone(fresh['public_phone'])}:raise ValueError('contact_phone_mismatch_or_ambiguous')
    # Examine every published structured/visible postal address, not just parser winner.
    addresses={_address(m.group()) for m in ADDRESS.finditer(visible)}
    structured=Page();structured.feed(contact_receipt.document)
    for obj in entities(structured.ld):
        address=obj.get('address')
        if isinstance(address,dict) and address.get('streetAddress'):
            addresses.add(_address(', '.join(str(address.get(k) or '') for k in
                ('streetAddress','addressLocality','addressRegion'))+' '+str(address.get('postalCode') or '')))
        email=str(obj.get('email') or '').removeprefix('mailto:').lower()
        if email and EMAIL.fullmatch(email) and email!=expected_email:raise ValueError('contact_email_conflict')
    if addresses!={_address(fresh['physical_address'])}:raise ValueError('contact_address_conflict_or_unproven')
    if re.search(r'permanently closed|business is closed|location has closed|no longer (?:use|using|operat)|do not (?:email|contact)',visible,re.I):
        raise ValueError('contact_withdrawn_or_closed')
    emails={item[0] for item in page.mail}
    if emails!={expected_email}:raise ValueError('exact_single_published_mailbox_required')
    if any(DESIGNER.search(' '.join(frame['text'])) or DESIGNER.search(str(frame['attrs'])) for _,_,frame in page.mail):
        raise ValueError('designer_contact_ambiguous')
    payload={'status':'contact_enrichment_proposal','candidate_id':candidate_id,
        'accepted_provider':False,'confirmed_demand':False,'native_update_performed':False,
        'current_native_signature':old['signature'],
        'primary_facts':{k:fresh[k] for k in ('business_name','market','category_key','side','physical_address','public_phone')},
        'primary_receipt':primary_meta,'contact_receipt':contact_meta,
        'public_email':expected_email,'email_provenance':sorted({kind for _,kind,_ in page.mail}),
        'verified_at':now.isoformat()}

    return _VerifiedContactProposal(payload, primary_receipt, contact_receipt, _ISSUANCE_KEY)


_ISSUANCE_KEY=object()

class _VerifiedContactProposal(dict):
    """In-process verifier result, not an HTTP input or serialized capability."""
    def __init__(self,payload,primary,contact,key):
        if key is not _ISSUANCE_KEY:raise ValueError('verified_proposal_required')
        super().__init__(payload)
        self._primary=primary;self._contact=contact


def verify_contact_enrichment(*args,**kwargs):
    return contact_enrichment_proposal(*args,**kwargs)


def create_contact_verification(candidate,proposal,secret,*,receipt_is_trusted,now=None):
    """Issue separate MAC only from an actual verifier result and trusted receipts.

    Re-runs full verification; serialized dictionaries cannot be used as issuance
    requests. No legacy proof fields are mutated or resealed. A trusted collector
    must lock/recheck absence of every outreach/sample/target/order reference.
    """
    if type(proposal) is not _VerifiedContactProposal:raise ValueError('verified_proposal_required')
    now=now or datetime.now(timezone.utc)
    checked=verify_contact_enrichment(candidate,proposal._primary,proposal._contact,
        proposal['public_email'],secret,receipt_is_trusted=receipt_is_trusted,now=now)
    if canonical({k:v for k,v in proposal.items() if k!='verified_at'})!=canonical({k:v for k,v in checked.items() if k!='verified_at'}):raise ValueError('proposal_changed_or_expired')
    import json
    evidence=candidate['evidence']
    if isinstance(evidence,str):evidence=json.loads(evidence)
    primary=evidence['vps_verification']
    facts={'verifier':CONTACT_VERSION,'candidate_id':checked['candidate_id'],
        'source_url':primary['source_url'],'primary_proof_signature':primary['signature'],
        'primary_proof_sha256':hashlib.sha256(canonical(primary).encode()).hexdigest(),
        **{k:primary[k] for k in ('business_name','market','category_key','side','physical_address','public_phone')},
        'public_email':checked['public_email'],'primary_receipt':checked['primary_receipt'],
        'contact_receipt':checked['contact_receipt'],'email_provenance':checked['email_provenance'],
        'checked_at':now.isoformat(),'expires_at':(now+CONTACT_TTL).isoformat()}
    return dict(facts,signature=contact_seal(facts,secret))
