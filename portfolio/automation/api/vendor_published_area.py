"""Visible first-party vendor/service-area evidence; never proof of premises.

Native research already trusts a candidate's first-party source for publication,
not legal domain/mailbox ownership. This version retains that boundary, requires
positive visible company/service/territory contexts, and uses a separate MAC.
Buyers never enter this verifier. No fetches, writes, acceptance or demand claims.
"""
import hashlib
import hmac
import html
import json
import re
from datetime import datetime,timedelta,timezone
from html.parser import HTMLParser
from urllib.parse import urlsplit

VERSION='vps_vendor_published_area_v2'
TTL=timedelta(days=7)
EMAIL=re.compile(r'[A-Za-z0-9._%+\-]+@[A-Za-z0-9.\-]+\.[A-Za-z]{2,}')
PHONE=re.compile(r'(?<!\d)(?:\+?1[ .-]?)?\(?\d{3}\)?[ .-]\d{3}[ .-]\d{4}(?!\d)')
NEGATIVE=re.compile(r"\b(?:no longer|not available|not offered|do not|does not|don['’]t|doesn['’]t|not serving|not providing|stopped|discontinued|ceased|withdrawn|unavailable)\b",re.I)
CLOSED=re.compile(r'\b(?:permanently closed|business is closed|location has closed|out of business|ceased operations)\b',re.I)
DESIGNER=re.compile(r'web(?:site)?\s*(?:design|develop)|designed\s+by|powered\s+by|site\s+by',re.I)


def canonical(value):return json.dumps(value,sort_keys=True,separators=(',',':'),ensure_ascii=True)
def seal(value,secret):return hmac.new(secret.encode(),('bmc-vendor-published-area-v2|'+canonical(value)).encode(),hashlib.sha256).hexdigest()
def phone(value):
    value=re.sub(r'\D','',str(value or ''))
    return value[-10:] if len(value)==10 or (len(value)==11 and value.startswith('1')) else ''
def words(value):return re.findall('[a-z0-9]+',html.unescape(str(value)).lower().replace('&',' and '))
def name_words(value):
    result=words(value)
    while result and result[-1] in ('llc','inc','incorporated','corp','corporation','ltd'):result.pop()
    return result

def exact_phrase(value,phrase):
    a,b=words(value),name_words(phrase)
    return bool(b and any(a[i:i+len(b)]==b for i in range(len(a)-len(b)+1)))


def city_in(value,market):
    # Prescott Valley is a distinct city, not evidence of Prescott coverage.
    tokens=words(value);city=words(market)
    return bool(city and any(tokens[i:i+len(city)]==city
        and not (city==['prescott'] and tokens[i+len(city):i+len(city)+1]==['valley'])
        for i in range(len(tokens)-len(city)+1)))


def contains_term(value,terms):
    return any(re.search(r'(?<!\w)'+re.escape(t)+r'(?!\w)',value,re.I) for t in terms)


class VisiblePage(HTMLParser):
    VOID={'area','base','br','col','embed','hr','img','input','link','meta','param','source','track','wbr'}
    EXCLUDED={'script','style','noscript','template','nav','footer','header','aside','blockquote'}
    BLOCK={'p','li','div','section','article','main','address','h1','h2','h3','h4','h5','h6','title','nav','footer','header','aside','blockquote'}
    def __init__(self):
        super().__init__(convert_charrefs=True);self.stack=[];self.blocks=[];self.all_text=[];self.mail=[];self.phones=[]
    def handle_starttag(self,tag,attrs):
        a=dict(attrs);style=re.sub(r'\s+','',a.get('style','')).lower()
        hidden=(bool(self.stack and self.stack[-1]['hidden']) or tag in ('script','style','noscript','template')
            or 'hidden' in a or 'inert' in a or a.get('aria-hidden','').lower()=='true'
            or bool(re.search(r'(?:^|;)(?:display:none|visibility:(?:hidden|collapse)|content-visibility:hidden|opacity:0)(?:!important)?(?:;|$)',style)))
        attributed=bool(re.search(r'testimonial|review|customer.quote|web.desig|powered.by',str(a),re.I))
        excluded=bool(self.stack and self.stack[-1]['excluded']) or tag in self.EXCLUDED or attributed
        node={'tag':tag,'attrs':a,'hidden':hidden,'excluded':excluded,'parts':[]}
        if tag not in self.VOID:self.stack.append(node)
        if hidden:return
        href=a.get('href','')
        if tag=='a' and href.lower().startswith('tel:'):
            value=phone(href[4:])
            if value:self.phones.append(value)
        mailbox=None;kind=None
        if tag=='a' and href.lower().startswith('mailto:'):
            parsed=urlsplit(href);value=parsed.path.lower()
            if parsed.query or parsed.fragment or not EMAIL.fullmatch(value):raise ValueError('ambiguous_mailbox')
            mailbox=value;kind='explicit_mailto'
        if 'data-cfemail' in a:
            value=a['data-cfemail']
            if tag not in ('a','span') or not re.fullmatch('[0-9a-fA-F]{6,512}',value) or len(value)%2:raise ValueError('invalid_cfemail')
            try:
                raw=bytes.fromhex(value);decoded=bytes(c^raw[0] for c in raw[1:]).decode('ascii').lower()
            except (ValueError,UnicodeError):raise ValueError('invalid_cfemail')
            if not EMAIL.fullmatch(decoded) or (mailbox and mailbox!=decoded):raise ValueError('invalid_cfemail')
            mailbox=decoded;kind='cloudflare_data_cfemail'
        if mailbox:
            context=next((x for x in reversed(self.stack) if x['tag'] in ('p','footer','section','header','address','article','div')),node)
            self.mail.append((mailbox,kind,context))
    def handle_endtag(self,tag):
        i=next((i for i in range(len(self.stack)-1,-1,-1) if self.stack[i]['tag']==tag),None)
        if i is None:return
        node=self.stack[i]
        if tag in self.BLOCK and not node['hidden']:
            text=' '.join(' '.join(node['parts']).split())
            if text:self.blocks.append((tag,text,node['excluded']))
        del self.stack[i:]
    def handle_data(self,data):
        if self.stack and self.stack[-1]['hidden']:return
        self.all_text.append(data)
        # Direct text only for large containers prevents unrelated sibling
        # negative/nav/testimonial text becoming one positive proof block.
        for node in reversed(self.stack):
            node['parts'].append(data)
            if node['tag'] in self.BLOCK:break


def _geography(document,page,candidate,url):
    from official_research import Page,entities,host,az_postal_code_valid,place,VENDOR_TERMS
    parsed=Page();parsed.feed(document)
    az_context=False
    for obj in entities(parsed.ld):
        linked=obj.get('url') or obj.get('@id')
        matching=exact_phrase(obj.get('name',''),candidate['business_name'])
        if not matching and not (isinstance(linked,str) and host(linked)==host(url)):continue
        for entity in entities(obj):
            description=str(entity.get('description') or '')
            if CLOSED.search(description):raise ValueError('source_closed')
            if NEGATIVE.search(description) and (city_in(description,candidate['market']) or contains_term(description,VENDOR_TERMS.get(candidate['category_key'],()))):
                raise ValueError('structured_service_withdrawn')
            direct_country=entity.get('addressCountry')
            if isinstance(direct_country,dict):direct_country=direct_country.get('name')
            if direct_country and place(direct_country) not in ('us','usa','united states','united states of america'):raise ValueError('contradictory_country')
            direct_region=entity.get('addressRegion')
            if direct_region and place(direct_region) not in ('az','arizona'):raise ValueError('contradictory_state')
            direct_postal=entity.get('postalCode')
            if direct_postal and not az_postal_code_valid(str(direct_postal)):raise ValueError('contradictory_az_postal')
            address=entity.get('address')
            if isinstance(address,dict):
                region=place(address.get('addressRegion'));postal=address.get('postalCode');country=address.get('addressCountry')
                if isinstance(country,dict):country=country.get('name') or country.get('@id')
                if country and place(country) not in ('us','usa','united states','united states of america'):raise ValueError('contradictory_country')
                if region and region not in ('az','arizona'):raise ValueError('contradictory_state')
                if postal is not None and str(postal).strip() and not az_postal_code_valid(str(postal)):raise ValueError('contradictory_az_postal')
                if region in ('az','arizona'):az_context=True
            for field in ('areaServed','serviceArea'):
                value=entity.get(field,[]);values=value if isinstance(value,list) else [value]
                for area in values:
                    if isinstance(area,str):
                        if city_in(area,candidate['market']) and re.search(r',\s*(?!AZ\b|Arizona\b)[A-Z]{2}\b',area):raise ValueError('contradictory_service_state')
                    elif isinstance(area,dict):
                        # Region/country on the actual named area cannot hide
                        # behind a different AZ headquarters object.
                        region=area.get('addressRegion');country=area.get('addressCountry')
                        if region and place(region) not in ('az','arizona'):raise ValueError('contradictory_service_state')
                        if country and place(country) not in ('us','usa','united states','united states of america'):raise ValueError('contradictory_country')
    text='\n'.join(page.all_text)
    # Explicit postal statements include footer business contact details. No ZIP
    # is required, and same-AZ-city differing street addresses are not premises proof.
    for m in re.finditer(r'\b(AZ|Arizona)[ \t]+(\d[\w-]*)\b',text,re.I):
        if not az_postal_code_valid(m.group(2)):raise ValueError('contradictory_az_postal')
    if re.search(r'\b[A-Z][A-Za-z .-]+,\s*(?:AL|AK|AR|CA|CO|CT|DE|FL|GA|HI|ID|IL|IN|IA|KS|KY|LA|ME|MD|MA|MI|MN|MS|MO|MT|NE|NV|NH|NJ|NM|NY|NC|ND|OH|OK|OR|PA|RI|SC|SD|TN|TX|UT|VT|VA|WA|WV|WI|WY|DC|California|Nevada|Wisconsin)\s+\d{5}\b',text):raise ValueError('contradictory_state')
    requested_city=r'(?<!\w)'+re.escape(candidate['market'])+r'(?!\w)'
    if re.search(requested_city+r',\s*(?:WI|CA|NV|UT|NM|CO|TX|NY|FL|WA|Washington|Wisconsin|California|Nevada|Utah|New Mexico|Colorado|Texas|New York|Florida)\b',text,re.I):raise ValueError('contradictory_service_state')
    if re.search(r'\b(?:Canada|Mexico|United Kingdom|Australia)\b',text,re.I):raise ValueError('contradictory_country')
    return az_context


def parse_vendor_published_area(candidate,url,document,digest,secret):
    from official_research import allowed_url,host,VENDOR_TERMS
    from research_policy import ownership_evidence
    if candidate.get('side')!='vendor':raise ValueError('vendor_only')
    terms=VENDOR_TERMS.get(candidate.get('category_key'))
    if not secret or not terms or not allowed_url(url) or not re.fullmatch('[0-9a-f]{64}',digest):raise ValueError('untrusted_vendor_source')
    if not candidate.get('business_name') or not candidate.get('market'):raise ValueError('exact_vendor_identity_required')
    page=VisiblePage();page.feed(document)
    positive=[(tag,text) for tag,text,excluded in page.blocks if not excluded]
    all_text=' '.join(page.all_text)
    if CLOSED.search(all_text):raise ValueError('source_closed')
    if re.search(r'\b(?:equipment|supplier|supplies|rental|rentals)\b',candidate['business_name'],re.I):raise ValueError('supplier_identity_requires_review')
    identity=[]
    for tag,text in positive:
        if not exact_phrase(text,candidate['business_name']):continue
        identity_pattern=r'\b'+r'\s+'.join(re.escape(x) for x in name_words(candidate['business_name']))+r'\s+(?:equipment|supplier|supplies|rental|rentals)\b'
        if re.search(identity_pattern,' '.join(words(text)),re.I):continue
        if tag=='title':
            if not any(name_words(part)==name_words(candidate['business_name']) for part in re.split(r'[|•]|\s[-–—]\s',text)):continue
        elif not re.search(r'\b(?:we|our|provides?|offers?|is|are|company|services|at)\b',text,re.I) and name_words(text)!=name_words(candidate['business_name']):continue
        identity.append(text)
    if not identity:raise ValueError('exact_visible_company_identity_unproven')
    service=[];area=[]
    az_structured=_geography(document,page,candidate,url)
    az_visible=any(re.search(r'\b(?:AZ|Arizona)\b',text) for _,text in positive)
    for tag,text in positive:
        city=city_in(text,candidate['market'])
        if NEGATIVE.search(text):
            if city:raise ValueError('service_city_withdrawn')
            if contains_term(text,terms):raise ValueError('service_withdrawn')
            continue
        supplier_claim=bool(re.search(r'\b(?:sell|sells|selling|supplier|supplies|rent|rents|rental|rentals)\b',text,re.I)
            or any(re.search(re.escape(term)+r'\s+(?:equipment|machines|supplies|training|courses)\b',text,re.I) for term in terms))
        if contains_term(text,terms) and not supplier_claim and (tag in ('h1','h2','h3','h4','h5','h6') or re.search(r'\b(?:we|our|provides?|offers?|specializ|services|professional|commercial|mobile)\b',text,re.I)):
            service.append(text)
        if city and (re.search(r'\b(?:serve|serves|serving|cover|covers|covering|service areas?)\b',text,re.I)
                     or (contains_term(text,terms) and re.search(r'\b(?:in|across|throughout|for)\b',text,re.I))):
            area.append(text)
    if not service:raise ValueError('positive_main_service_unproven')
    if not area or not (az_structured or az_visible):raise ValueError('explicit_city_arizona_service_area_unproven')
    # Negative city claims in excluded navigation/footer also cannot be overridden.
    for _,text,_ in page.blocks:
        if city_in(text,candidate['market']) and NEGATIVE.search(text):raise ValueError('service_city_withdrawn')
    phones={phone(m.group()) for m in PHONE.finditer(all_text)}|set(page.phones)
    phones.discard('')
    if len(phones)!=1:raise ValueError('single_public_business_phone_required')
    public_phone=next(iter(phones));seed_phone=phone(candidate.get('public_phone'))
    if candidate.get('public_phone') and (not seed_phone or seed_phone!=public_phone):raise ValueError('seed_phone_conflict')
    emails={value for value,_,_ in page.mail}
    if len(emails)!=1:raise ValueError('single_explicit_business_mailbox_required')
    public_email=next(iter(emails))
    if {m.group().lower() for m in EMAIL.finditer(all_text)}-{public_email}:raise ValueError('ambiguous_visible_mailboxes')
    if candidate.get('public_email') and candidate['public_email'].lower()!=public_email:raise ValueError('seed_email_conflict')
    if any(DESIGNER.search(' '.join(context['parts'])) or DESIGNER.search(str(context['attrs'])) for _,_,context in page.mail):raise ValueError('designer_mailbox_ambiguous')
    facts=dict(verifier=VERSION,side='vendor',business_name=candidate['business_name'],market=candidate['market'],
        category_key=candidate['category_key'],source_url=url,content_sha256=digest,checked_at=datetime.now(timezone.utc).isoformat(),http_status=200,
        location_type='published_service_area',physical_address_verified=False,accepted_provider=False,confirmed_demand=False,
        public_phone=public_phone,public_email=public_email,service_area={'city':candidate['market'],'region':'AZ','country':'US'},
        identity_evidence=identity[0][:350],service_evidence=service[0][:500],service_area_evidence=area[0][:500],
        email_provenance=sorted({kind for _,kind,_ in page.mail}),ownership_evidence=ownership_evidence(document))
    facts['snippet']=('Official company publication lists '+candidate['market']+', AZ service area. '+service[0])[:700]
    signed=dict(facts,signature=seal(facts,secret))
    return dict(facts,source_domain=host(url),evidence={'researched_by':VERSION,'vps_verification':signed})


def auto_vendor_area_valid(row,secret):
    from official_research import allowed_url,VENDOR_TERMS
    try:
        evidence=row.get('evidence') or {}
        if isinstance(evidence,str):evidence=json.loads(evidence)
        if evidence.get('contact_verification') is not None:return False
        signed=dict(evidence.get('vps_verification') or {});signature=signed.pop('signature','')
        if not secret or not isinstance(signature,str) or not hmac.compare_digest(signature,seal(signed,secret)):return False
        if signed.get('verifier')!=VERSION or signed.get('side')!='vendor' or row.get('side')!='vendor':return False
        if signed.get('category_key') not in VENDOR_TERMS or signed.get('http_status')!=200:return False
        age=datetime.now(timezone.utc)-datetime.fromisoformat(signed['checked_at'])
        if not timedelta(0)<=age<=TTL or not re.fullmatch('[0-9a-f]{64}',signed.get('content_sha256','')):return False
        if not allowed_url(signed['source_url']):return False
        for key in ('business_name','market','category_key','source_url','public_phone','public_email','snippet'):
            if row.get(key)!=signed.get(key):return False
        if (signed.get('location_type')!='published_service_area' or signed.get('physical_address_verified') is not False
            or signed.get('accepted_provider') is not False or signed.get('confirmed_demand') is not False
            or 'physical_address' in signed):return False
        if signed.get('service_area')!={'city':signed['market'],'region':'AZ','country':'US'}:return False
        return bool(signed.get('identity_evidence') and signed.get('service_evidence') and signed.get('service_area_evidence')
                    and phone(signed.get('public_phone')) and EMAIL.fullmatch(signed.get('public_email','')))
    except (ValueError,TypeError,KeyError,AttributeError):return False
