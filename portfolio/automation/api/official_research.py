"""Bounded primary-site research. Publishes evidence, never outreach or provider acceptance."""
import asyncio, hashlib, hmac, html, http.client, ipaddress, json, re, socket, ssl
from dataclasses import dataclass
from datetime import datetime, timedelta, timezone
from html.parser import HTMLParser
from urllib.parse import urlsplit, urlunsplit, urljoin

from research_policy import ownership_evidence

VERSION='vps_primary_site_v1'
NATIVE_VERSIONS=(VERSION,'vps_vendor_published_area_v2','vps_property_visible_evidence_v3')
BUYER_TYPES={
 'auto_dealers':('AutoDealer',),'auto_fleet':('MovingCompany','AutomotiveBusiness'),
 'churches':('Church','PlaceOfWorship'),'dental':('Dentist',),'grocery':('GroceryStore',),
 'gyms_fitness':('ExerciseGym','HealthClub','SportsActivityLocation'),
 'hotels_motels':('Hotel','Motel','Resort','LodgingBusiness'),
 'insurance_professional':('InsuranceAgency','AccountingService','Attorney','LegalService','FinancialService','ProfessionalService'),
 'medical_centers':('Hospital','MedicalClinic','Physician','MedicalBusiness'),
 'pharmacies':('Pharmacy',),'pharmacy':('Pharmacy',),'property_management':('RealEstateAgent','ApartmentComplex'),
 'public_facilities':('GovernmentOffice','CivicStructure','Library'),
 'restaurants':('Restaurant','CafeOrCoffeeShop','FoodEstablishment'),
 'retail':('Store','FurnitureStore','ClothingStore','JewelryStore','BookStore','ShoppingCenter'),
 'schools':('School','EducationalOrganization','Preschool'),'schools_education':('School','EducationalOrganization','Preschool'),
 'senior_daycare':('ChildCare','MedicalBusiness'),'theaters_entertainment':('MovieTheater','PerformingArtsTheater','EntertainmentBusiness'),
 'therapy_behavioral':('MedicalClinic','MedicalBusiness','Physician'),'warehouses_industrial':('LocalBusiness','Organization')}
VENDOR_TERMS={
 'commercial_cleaning':('commercial cleaning','janitorial','office cleaning'),
 'pressure_washing':('pressure washing','power washing','pressure cleaning'),
 'junk_hauling':('junk removal','junk hauling','cleanout'),
 'tree_service':('tree service','tree removal','arborist'),
 'handyman_repairs':('handyman','handy man'),
 'landscaping':('landscaping','landscape maintenance','landscape design'),
 'rural_property':('land clearing','brush clearing','acreage maintenance'),
 'residential_cleaning':('house cleaning','residential cleaning','maid service'),
 'window_cleaning':('window cleaning','window washing'),
 'floor_carpet':('carpet cleaning','floor cleaning','floor care'),
 'turnover_cleaning':('turnover cleaning','move out cleaning','rental cleaning'),
 'hvac_heat':('air conditioning','hvac','heating and cooling'),
 'pest_control':('pest control','exterminator'),
 'electrical_service':('electrical contractor','electrician'),
 'pool_desert_property':('pool service','pool cleaning','pool maintenance')}
VENDOR_TERMS.update({
 'restaurant_repair':('restaurant equipment repair','commercial kitchen repair'),
 'restaurant_equipment':('restaurant equipment','commercial kitchen equipment'),
 'used_equipment':('used restaurant equipment','used commercial equipment'),
 'equipment_quotes':('restaurant equipment supplier','commercial equipment supplier'),
 'restaurant_maintenance':('restaurant maintenance','commercial kitchen maintenance'),
 'snow_service':('snow removal','snow plowing','ice management'),
 'towing_roadside':('towing','roadside assistance'),
 'vehicle_services':('auto repair','vehicle service'),
 'auto_repair_shop':('auto repair','automotive repair','car repair'),
 'pet_waste':('pet waste removal','pooper scooper','dog waste removal'),
 'str_property_care':('vacation rental management','short term rental management','vacation rental cleaning'),
 'ice_machine':('ice machine repair','ice machine service'),
 'hood_exhaust':('hood cleaning','kitchen exhaust cleaning','hood exhaust'),
 'grease_drain':('grease trap','drain cleaning','grease interceptor'),
 'linen_laundry':('commercial laundry','linen service','linen rental'),
 'fire_safety':('fire extinguisher service','fire suppression','fire protection service'),
 'backflow_plumbing':('backflow testing','backflow prevention','plumbing'),
 'sign_lighting':('sign repair','sign installation','sign lighting'),
 'locksmith_access':('locksmith','access control installation'),
 'duct_vent':('air duct cleaning','dryer vent cleaning'),
 'fleet_washing':('fleet washing','truck washing','fleet cleaning'),
 'mobile_tire_battery':('mobile tire','mobile battery','roadside tire'),
 'coffee_water':('coffee equipment','water filtration','commercial water systems'),
 'waste_audit':('waste audit','waste management consulting'),
 'parking_lot':('parking lot maintenance','parking lot sweeping','parking lot striping'),
 'epoxy_flooring':('epoxy flooring','concrete coating'),
 'mobile_detailing':('mobile detailing','auto detailing','car detailing'),
 'auto_glass':('auto glass','windshield replacement','windshield repair'),
 'pet_sitting':('pet sitting','dog walking','pet sitter'),
 'mobile_pet_grooming':('mobile pet grooming','mobile grooming'),
 'garage_door':('garage door repair','garage door installation','garage door service'),
 'facility_maintenance':('facility maintenance','facilities maintenance','building maintenance'),
 'home_staging':('home staging','property staging'),
 'realtor_listing_prep':('listing preparation','listing prep','real estate staging')})
BLOCKED={'hotelscombined.com','solvhealth.com','sobernation.com','yahoo.com','powerwashmaps.com','homeadvisor.com','fandango.com','rehab.com','landscapeatlas.com','industrialspaces.net','corkd.com','whereorg.com','homversa.com','yelp.com','facebook.com','linkedin.com','loc8nearme.com','angi.com','thumbtack.com','bbb.org','yellowpages.com','mapquest.com','tripadvisor.com','booking.com','hotels.com','expedia.com','google.com','bing.com','nextdoor.com'}

def compact(s):return re.sub('[^a-z0-9]','',str(s).lower())
def place(s):return re.sub(r'[-\s]+',' ',str(s or '').strip()).casefold()
def host(url):return (urlsplit(url).hostname or '').lower().removeprefix('www.')
def allowed_url(url):
    try:
        p=urlsplit(url);h=host(url)
        return bool(p.scheme=='https' and h and h not in ('localhost','local','internal') and not p.username and not p.password and p.port in (None,443)
          and not any(ord(c)<33 for c in url) and not any(h==d or h.endswith('.'+d) for d in BLOCKED)
          and not h.endswith(('.local','.localhost','.internal')))
    except ValueError:return False

def public_addresses(name):
    answers=socket.getaddrinfo(name,443,type=socket.SOCK_STREAM)
    ips=list(dict.fromkeys(a[4][0] for a in answers))
    if not ips or any(not ipaddress.ip_address(ip).is_global for ip in ips):raise ValueError('non_public_address')
    return ips

class PinnedHTTPS(http.client.HTTPSConnection):
    def __init__(self,name,address):super().__init__(name,timeout=10,context=ssl.create_default_context());self.address=address
    def connect(self):
        sock=socket.create_connection((self.address,443),self.timeout)
        self.sock=self._context.wrap_socket(sock,server_hostname=self.host)

@dataclass(frozen=True, slots=True)
class FetchedPageReceipt:
    """Transport facts only, not business ownership or vendor qualification.

    Created after a successful bounded pinned HTTPS response. Bytes and redirect
    chain are immutable; fetched_at is transport completion, never parser time.
    A caller-created receipt is not authenticated provenance by itself.
    """
    requested_url: str
    final_url: str
    raw_bytes: bytes
    content_sha256: str
    fetched_at: str
    http_status: int
    content_type: str
    redirect_chain: tuple[str, ...]

    @property
    def document(self):
        return self.raw_bytes.decode('utf-8', 'replace')


def fetch_page_receipt(url):
    """Fetch once (up to four HTTPS hops); return immutable successful facts.

    Uses existing ten-second transport timeouts, public DNS pinning, URL policy
    and one-megabyte bound at every hop. Failure never returns a partial receipt.
    This does not establish an independent candidate-to-official-domain binding.
    """
    requested_url=url
    redirects=[]
    for _ in range(4):
        if not allowed_url(url):raise ValueError('unsupported_source_url')
        p=urlsplit(url);addresses=public_addresses(p.hostname)
        conn=PinnedHTTPS(p.hostname,addresses[0])
        try:
            conn.request('GET',urlunsplit(('', '',p.path or '/',p.query,'')),headers={'User-Agent':'BMC-Service-Network-Research/1.0 (+https://bmcservicenetwork.com)','Accept':'text/html,application/xhtml+xml','Accept-Encoding':'identity'})
            response=conn.getresponse()
            if response.status in (301,302,303,307,308):
                location=response.getheader('Location','')
                if not location:raise ValueError('redirect_without_location')
                url=urljoin(url,location);redirects.append(url);continue
            if response.status!=200:raise ValueError('http_'+str(response.status))
            content_type=response.getheader('Content-Type','')
            if content_type.split(';',1)[0].strip().lower() not in ('text/html','application/xhtml+xml'):raise ValueError('not_html')
            raw=response.read(1_000_001)
            if len(raw)>1_000_000:raise ValueError('page_too_large')
            return FetchedPageReceipt(requested_url=requested_url,final_url=url,raw_bytes=raw,
                content_sha256=hashlib.sha256(raw).hexdigest(),fetched_at=datetime.now(timezone.utc).isoformat(),
                http_status=200,content_type=content_type,redirect_chain=tuple(redirects))
        finally:conn.close()
    raise ValueError('redirect_limit')


def fetch_page(url):
    """Backward-compatible three-tuple interface; never performs a second fetch."""
    receipt=fetch_page_receipt(url)
    return receipt.final_url,receipt.document,receipt.content_sha256

class Page(HTMLParser):
    def __init__(self):super().__init__();self.ld=[];self.active=False;self.buffer=[];self.title=False;self.title_text=[];self.links=[]
    def handle_starttag(self,tag,attrs):
        a=dict(attrs)
        if tag=='script' and a.get('type','').lower()=='application/ld+json':self.active=True;self.buffer=[]
        if tag=='title':self.title=True
        if tag=='a' and a.get('href'):self.links.append(a['href'])
    def handle_endtag(self,tag):
        if tag=='script' and self.active:
            try:self.ld.append(json.loads(''.join(self.buffer)))
            except (ValueError,TypeError):pass
            self.active=False
        if tag=='title':self.title=False
    def handle_data(self,data):
        if self.active:self.buffer.append(data)
        if self.title:self.title_text.append(data)

def entities(value):
    if isinstance(value,dict):
        yield value
        for v in value.values():yield from entities(v)
    elif isinstance(value,list):
        for v in value:yield from entities(v)

def identity_matches(candidate,actual,market):
    def words(s):return {w for w in re.findall(r'[a-z0-9]+',str(s).lower()) if w not in {'llc','inc','the','home','welcome','contact','us','az','arizona','com','www',*re.findall(r'[a-z]+',market.lower())}}
    a,b=words(candidate),words(actual)
    return bool(a and b and ((a==b and len(''.join(a))>=3) or (len(a&b)>=2 and len(a&b)/min(len(a),len(b))>=.75)))

def canonical(value):return json.dumps(value,sort_keys=True,separators=(',',':'),ensure_ascii=True)
def seal(evidence,secret):return hmac.new(secret.encode(),('bmc-official-evidence|'+canonical(evidence)).encode(),hashlib.sha256).hexdigest()

def az_postal_code_valid(value):
    """AZ ZIP-prefix sanity only; does not verify city/street or USPS assignment."""
    return isinstance(value,str) and re.fullmatch(r'(?:85|86)\d{3}(?:-\d{4})?',value) is not None


def az_physical_address_postal_valid(value):
    # parse_record always emits ', AZ <ZIP>'; recheck persisted signed evidence
    # so a previously valid HMAC never overrides tightened geography policy.
    if not isinstance(value,str):return False
    match=re.search(r',\s*AZ\s+([^,\s]+)\s*$',value,re.I)
    return bool(match and az_postal_code_valid(match.group(1)))


def _parse_physical_record(candidate,url,document,digest,secret):
    if not secret or not allowed_url(url):raise ValueError('untrusted_source')
    page=Page();page.feed(document)
    matches=[]
    for obj in entities(page.ld):
        address=obj.get('address');name=obj.get('name');types=obj.get('@type',[])
        if isinstance(types,str):types=[types]
        if not isinstance(address,dict) or not isinstance(name,str):continue
        if place(address.get('addressLocality'))!=place(candidate['market']):continue
        if place(address.get('addressRegion')) not in ('az','arizona'):continue
        street=str(address.get('streetAddress') or '').strip();zip_code=str(address.get('postalCode') or '')
        if not re.search(r'\d+\s+\S+',street) or re.search(r'\bp\.?\s*o\.?\s*box\b',street,re.I) or not az_postal_code_valid(zip_code):continue
        if not identity_matches(candidate['business_name'],name,candidate['market']):continue
        own_url=obj.get('url') or obj.get('@id')
        if not isinstance(own_url,str) or not own_url.startswith('https://') or host(own_url)!=host(url):continue
        description=re.sub('<[^>]+>',' ',str(obj.get('description') or ''));category_text=' '.join([name,description,' '.join(page.title_text)]).lower()
        key=candidate['category_key'];side=candidate['side']
        if side=='buyer':
            if key not in BUYER_TYPES or not set(types)&set(BUYER_TYPES[key]):continue
            if key=='warehouses_industrial' and not any(t in category_text for t in ('warehouse','manufactur','industrial','distribution','printing')):continue
        else:
            if set(types)&{'GovernmentOrganization','School','Hospital','Dentist','Restaurant','Hotel','Motel'}:continue
            terms=VENDOR_TERMS.get(key)
            if not terms or not any(t in category_text for t in terms):continue
        phones=[str(obj.get('telephone') or '')];emails=[str(obj.get('email') or '').removeprefix('mailto:')]
        cp=obj.get('contactPoint',[]);cp=cp if isinstance(cp,list) else [cp]
        for c in cp:
            if isinstance(c,dict):phones.append(str(c.get('telephone') or ''));emails.append(str(c.get('email') or '').removeprefix('mailto:'))
        phones=[re.sub(r'\D','',p) for p in phones];phones=[p[-10:] for p in phones if len(p)==10 or (len(p)==11 and p[0]=='1')]
        emails=[x.lower() for x in emails if re.fullmatch(r'[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}',x)]
        if not emails:
            # A visible business mailbox on the same official domain can
            # supplement the already-proven structured entity, never replace it.
            observed=set()
            for link in page.links:
                parsed=urlsplit(link)
                address=parsed.path.lower()
                if parsed.scheme!='mailto' or not re.fullmatch(r'[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}',address):continue
                local,domain=address.rsplit('@',1)
                if domain==host(url) and local in ('info','contact','office','hello','admin','sales','service','services','support','inquiries','enquiries'):
                    observed.add(address)
            if len(observed)==1:emails=list(observed)
        if not phones and not emails:continue
        old_phone=re.sub(r'\D','',str(candidate.get('public_phone') or ''))[-10:]
        if len(old_phone)==10 and phones and old_phone not in phones:continue
        if re.search(r'permanently closed|business is closed|location has closed',document,re.I):continue
        facts=dict(verifier=VERSION,source_url=url,content_sha256=digest,checked_at=datetime.now(timezone.utc).isoformat(),
          http_status=200,business_name=html.unescape(name).strip(),market=candidate['market'],category_key=key,side=side,
          physical_address=f"{street}, {candidate['market']}, AZ {zip_code}",category_evidence=types,
          public_phone=phones[0] if phones else '',public_email=emails[0] if emails else '',description=html.unescape(description).strip()[:240])
        matches.append(facts)
    unique={ (x['business_name'],x['physical_address']):x for x in matches }
    if len(unique)!=1:raise ValueError('structured_identity_location_or_contact_unproven')
    facts=next(iter(unique.values()))
    detail=facts['description'] or 'The official page identifies this business as '+candidate['category_label']+'.'
    facts['snippet']=('Official business page confirms '+facts['physical_address']+'. '+detail)[:700]
    facts['ownership_evidence']=ownership_evidence(document)
    signed=dict(facts,signature=seal(facts,secret))
    return dict(facts,source_domain=host(url),evidence={'researched_by':VERSION,'vps_verification':signed})

def parse_record(candidate,url,document,digest,secret):
    """Legacy physical verifier first; mobile recipient vendor fallback only."""
    legacy=None;error=None
    try:legacy=_parse_physical_record(candidate,url,document,digest,secret)
    except ValueError as exc:error=exc
    if candidate.get('side')=='vendor' and (legacy is None or not legacy.get('public_email')):
        try:
            from vendor_published_area import parse_vendor_published_area
            return parse_vendor_published_area(candidate,url,document,digest,secret)
        except ValueError:pass
    if legacy is not None:return legacy
    raise error


def _primary_auto_evidence_valid(row,secret):
    try:
        evidence=row.get('evidence') or {};evidence=json.loads(evidence) if isinstance(evidence,str) else evidence
        signed=dict(evidence.get('vps_verification') or {});signature=signed.pop('signature','')
        if not secret or not signature or not hmac.compare_digest(signature,seal(signed,secret)):return False
        if signed.get('verifier')!=VERSION or signed.get('http_status')!=200 or not re.fullmatch('[0-9a-f]{64}',signed.get('content_sha256','')):return False
        when=datetime.fromisoformat(signed['checked_at']);age=datetime.now(timezone.utc)-when
        if not -timedelta(minutes=5)<=age<=timedelta(days=90):return False
        for key in ('business_name','market','category_key','source_url','snippet'):
            if str(row.get(key) or '')!=str(signed.get(key) or ''):return False
        for key in ('public_email','public_phone'):
            if compact(row.get(key) or '')!=compact(signed.get(key) or ''):return False
        if row.get('side') and row['side']!=signed.get('side'):return False
        return bool(az_physical_address_postal_valid(signed.get('physical_address')) and allowed_url(signed['source_url']))
    except (ValueError,TypeError,KeyError):return False


CONTACT_VERSION='vps_primary_contact_v1'
CONTACT_TTL=timedelta(days=7)

def contact_seal(facts,secret):
    return hmac.new(secret.encode(),('bmc-official-contact-evidence-v1|'+canonical(facts)).encode(),hashlib.sha256).hexdigest()


def _contact_receipt_valid(meta,domain,issued):
    if not isinstance(meta,dict) or set(meta)!={'requested_url','final_url','content_sha256','fetched_at','http_status'}:return False
    if meta['http_status']!=200 or not re.fullmatch('[0-9a-f]{64}',meta['content_sha256']):return False
    if any(not allowed_url(meta[k]) or host(meta[k])!=domain for k in ('requested_url','final_url')):return False
    fetched=datetime.fromisoformat(meta['fetched_at'])
    return fetched.tzinfo is not None and timedelta(0)<=issued-fetched<=timedelta(minutes=15)


def auto_evidence_valid(row,secret):
    """Original native proof remains intact; optional contact proof has its own MAC.

    Contact authorization covers evidence only. Enrollment/persistence callers must
    separately enforce transactionally that the candidate has never been targeted,
    sampled, ordered or contacted. No outreach permission is granted here.
    """
    try:
        evidence=row.get('evidence') or {}
        if isinstance(evidence,str):evidence=json.loads(evidence)
        if (evidence.get('vps_verification') or {}).get('verifier')=='vps_vendor_published_area_v2':
            from vendor_published_area import auto_vendor_area_valid
            return auto_vendor_area_valid(row,secret)
        if (evidence.get('vps_verification') or {}).get('verifier')=='vps_property_visible_evidence_v3':
            from property_visible_source import auto_property_visible_valid
            # asyncpg returns JSONB as text by default; normalize only the
            # representation, preserving every signed value and the caller row.
            return auto_property_visible_valid(dict(row,evidence=evidence),secret)
        token=evidence.get('contact_verification')
        if token is None:return _primary_auto_evidence_valid(row,secret)
        if not isinstance(token,dict):return False
        token=dict(token);signature=token.pop('signature','')
        if not secret or not isinstance(signature,str) or not hmac.compare_digest(signature,contact_seal(token,secret)):return False
        required={'verifier','candidate_id','source_url','primary_proof_signature','primary_proof_sha256',
            'business_name','market','category_key','side','physical_address','public_phone','public_email',
            'primary_receipt','contact_receipt','email_provenance','checked_at','expires_at'}
        if set(token)!=required or token['verifier']!=CONTACT_VERSION:return False
        from uuid import UUID
        if str(UUID(str(row['candidate_id'])))!=token['candidate_id']:return False
        issued=datetime.fromisoformat(token['checked_at']);expires=datetime.fromisoformat(token['expires_at'])
        if issued.tzinfo is None or expires.tzinfo is None:return False
        if not issued<=datetime.now(timezone.utc)<=expires or expires-issued!=CONTACT_TTL:return False
        primary=evidence.get('vps_verification') or {}
        if token['primary_proof_signature']!=primary.get('signature'):return False
        if token['primary_proof_sha256']!=hashlib.sha256(canonical(primary).encode()).hexdigest():return False
        for key in ('source_url','business_name','market','category_key','side','physical_address','public_phone'):
            if token[key]!=primary.get(key):return False
        if token['side']!='vendor' or token['category_key'] not in VENDOR_TERMS:return False
        if not re.fullmatch(r'[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}',token['public_email']):return False
        if row.get('public_email')!=token['public_email']:return False
        if (not isinstance(token['email_provenance'],list) or not token['email_provenance']
            or set(token['email_provenance'])-{'explicit_mailto','cloudflare_data_cfemail'}):return False
        if not all(_contact_receipt_valid(token[k],host(primary['source_url']),issued) for k in ('primary_receipt','contact_receipt')):return False
        # Preserve the signed original email (often empty) when validating native
        # row equality. Every other legacy MAC/source/postal/age check still runs.
        original_row=dict(row,public_email=primary.get('public_email') or '')
        return _primary_auto_evidence_valid(original_row,secret)
    except (ValueError,TypeError,KeyError,AttributeError,OverflowError):return False


def contact_links(url,document):
    """Only observed same-site public contact/location pages; no form actions."""
    page=Page();page.feed(document)
    found=[]
    for href in page.links:
        link=urljoin(url,href);parts=urlsplit(link)
        if (not allowed_url(link) or host(link)!=host(url) or parts.query or parts.fragment
            or re.search(r'/(?:admin|api|account|login|logout|unsubscribe|checkout|payment|delete|remove|confirm|activate|subscribe|reset)[^/]*(?:/|$)',parts.path,re.I)):
            continue
        if re.search(r'(?:^|/)(?:contact(?:-us)?|locations?|about(?:-us)?)(?:/|[.-]|$)',parts.path,re.I) and link!=url and link not in found:
            found.append(link)
    return found[:2]

async def inspect_source_pages(row,urls,secret):
    queue=list(dict.fromkeys(urls))[:2];seen=set();errors=[]
    while queue and len(seen)<3:
        url=queue.pop(0)
        if url in seen:continue
        seen.add(url)
        try:
            final,document,digest=await asyncio.wait_for(asyncio.to_thread(fetch_page,url),timeout=20)
        except Exception as exc:
            errors.append((str(exc) or type(exc).__name__)[:100]);continue
        try:
            return parse_record(row,final,document,digest,secret),''
        except ValueError as exc:
            errors.append(str(exc)[:100])
            if str(exc)=='structured_identity_location_or_contact_unproven':
                queue.extend(x for x in contact_links(final,document) if x not in seen and x not in queue)
    return None,errors[-1] if errors else 'no_official_source'


def install(app,require_admin,search,markets,secret,enabled=True):
    from fastapi import Header
    @app.post('/api/process-official-research')
    async def process_official_research(x_bmc_admin_key:str|None=Header(default=None)):
        require_admin(x_bmc_admin_key)
        if not enabled:return {'ok':True,'enabled':False,'inspected':0,'outreach_sent':0}
        claimed=[]
        source_policy_version='blocked-domains-v1:'+hashlib.sha256(json.dumps(sorted(BLOCKED),separators=(',',':')).encode()).hexdigest()
        async with app.state.pool.acquire() as conn:
          async with conn.transaction():
            # IDs originate only in bounded persisted native research, never a request.
            native_sources=await conn.fetch("""select candidate_id,source_url,source_domain from market_inventory_candidates
              where market=any($1::text[]) and status='discovered' and closed_at is null
                and evidence->>'researched_by'=any($2::text[])
              order by last_verified_at nulls first,candidate_id limit 1000""",list(markets),list(NATIVE_VERSIONS))
            blocked_ids=[]
            for source in native_sources:
                actual=host(source['source_url'])
                stored=str(source['source_domain'] or '').lower().removeprefix('www.')
                # Never trust a stored directory label when the actual URL differs.
                if actual and stored==actual and any(actual==d or actual.endswith('.'+d) for d in BLOCKED):
                    blocked_ids.append(source['candidate_id'])
            # Raw discoveries stay intact; previously reviewed packets are never rewritten.
            rows=await conn.fetch("""with activity as (select market,max(last_attempt_at) touched from official_research_jobs group by market), ranked as (
              select c.*,a.touched,
                (c.candidate_id=any($2::uuid[]) and coalesce(j.source_policy_version,'')<>$3
                 and coalesce(j.status,'') not in ('running','needs_review')) source_policy_urgent,
                (c.evidence->>'researched_by'='vps_vendor_published_area_v2'
                 and (c.last_verified_at is null or c.last_verified_at<now()-interval '6 days')
                 and coalesce(j.status,'') not in ('running','needs_review')
                 and (j.last_attempt_at is null or j.last_attempt_at<now()-interval '6 days')) native_refresh_urgent,
                row_number() over(partition by c.market,c.side order by
                case when c.candidate_id=any($2::uuid[]) then 0 else 1 end,
                case when c.evidence->>'researched_by'='vps_vendor_published_area_v2'
                  and (c.last_verified_at is null or c.last_verified_at<now()-interval '6 days') then 0 else 1 end,
                case when c.evidence->'vps_verification'->'ownership_evidence'->>'classification'='owner_operated' then 0 else 1 end,c.official_site desc,
                case when c.category_key in ('commercial_cleaning','pressure_washing','junk_hauling','tree_service','handyman_repairs') then 0 else 1 end,c.updated_at desc,c.candidate_id) pos
              from market_inventory_candidates c left join official_research_jobs j using(candidate_id) left join activity a on a.market=c.market
              where c.market=any($1::text[]) and c.status='discovered' and c.closed_at is null
                and coalesce(c.evidence->>'researched_by','')<>'assistant_manual_census'
                and (coalesce(c.evidence->>'researched_by','') not in ('vps_primary_site_v1','vps_vendor_published_area_v2')
                     or c.last_verified_at is null
                     or (c.evidence->>'researched_by'='vps_primary_site_v1' and c.last_verified_at<now()-interval '30 days')
                     or (c.evidence->>'researched_by'='vps_vendor_published_area_v2' and c.last_verified_at<now()-interval '6 days')
                     or c.candidate_id=any($2::uuid[]))
                and (not(c.evidence ? 'qualification_hold') or c.evidence->'qualification_hold' in ('false'::jsonb,'null'::jsonb))
                and (j.candidate_id is null or j.next_attempt_at<now()
                     or (c.candidate_id=any($2::uuid[]) and coalesce(j.source_policy_version,'')<>$3
                         and coalesce(j.status,'') not in ('running','needs_review'))
                     or (c.evidence->>'researched_by'='vps_vendor_published_area_v2'
                         and (c.last_verified_at is null or c.last_verified_at<now()-interval '6 days')
                         and coalesce(j.status,'') not in ('running','needs_review')
                         and (j.last_attempt_at is null or j.last_attempt_at<now()-interval '6 days'))))
              select * from ranked where (market='Phoenix' and pos<=2) or (market<>'Phoenix' and pos=1)
              order by source_policy_urgent desc,native_refresh_urgent desc,case when market='Phoenix' then 0 else 1 end,touched nulls first,market,side limit 6""",list(markets),blocked_ids,source_policy_version)
            for r in rows:
                row=dict(r)
                claim=await conn.fetchval("""insert into official_research_jobs(candidate_id,market,status,attempts,last_attempt_at,next_attempt_at,source_policy_version)
                  values($1,$2,'running',1,now(),now()+interval '30 minutes',$3) on conflict(candidate_id) do update
                  set status='running',attempts=official_research_jobs.attempts+1,last_attempt_at=now(),next_attempt_at=now()+interval '30 minutes',source_policy_version=$3
                  where official_research_jobs.next_attempt_at<now()
                    or ($4::boolean and coalesce(official_research_jobs.source_policy_version,'')<>$3
                        and official_research_jobs.status not in ('running','needs_review'))
                    or ($5::boolean and official_research_jobs.status not in ('running','needs_review')
                        and (official_research_jobs.last_attempt_at is null or official_research_jobs.last_attempt_at<now()-interval '6 days')
                        and exists(select 1 from market_inventory_candidates refreshed
                          where refreshed.candidate_id=$1 and refreshed.evidence->>'researched_by'='vps_vendor_published_area_v2'
                          and (refreshed.last_verified_at is null or refreshed.last_verified_at<now()-interval '6 days')))
                  returning candidate_id""",r['candidate_id'],r['market'],source_policy_version,bool(r['source_policy_urgent']),bool(r.get('native_refresh_urgent',False)))
                if claim:claimed.append(row)
        semaphore=asyncio.Semaphore(2)
        async def inspect(row):
          async with semaphore:
            urls=[row['source_url']] if allowed_url(row['source_url']) else []
            if not urls:
                try:
                    found=await asyncio.wait_for(search('"'+row['business_name'][:140]+'" "'+row['market']+'" official website',1,5),timeout=20)
                    urls=[r['url'] for r in found if allowed_url(r['url'])][:2]
                except Exception:return row,None,'search_unavailable'
            try:
                result,error=await asyncio.wait_for(inspect_source_pages(row,urls,secret),timeout=55)
                return row,result,error
            except asyncio.TimeoutError:return row,None,'candidate_research_timeout'
        inspected=await asyncio.gather(*(inspect(r) for r in claimed));verified=0;held=0
        async with app.state.pool.acquire() as conn:
          for row,result,error in inspected:
           async with conn.transaction():
            if result:
                await conn.execute("select pg_advisory_xact_lock(20261027, 5182)")
                native=await conn.fetchval("""insert into market_inventory_candidates(side,market,category_key,category_label,business_name,source_url,source_domain,snippet,search_query,page_no,public_email,public_phone,official_site,source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence)
                  values($1,$2,$3,$4,$5,$6,$7,$8,'vps official-site verification',1,nullif($9,''),nullif($10,''),true,'direct','direct_evidence',now(),'discovered',7,$11::jsonb)
                  on conflict(side,market,category_key,source_url,business_name) do update set snippet=excluded.snippet,public_email=excluded.public_email,public_phone=excluded.public_phone,official_site=true,source_tier='direct',verification_status='direct_evidence',last_verified_at=now(),evidence=market_inventory_candidates.evidence||excluded.evidence,updated_at=now()
                  where coalesce(market_inventory_candidates.evidence->>'researched_by','')<>'assistant_manual_census' returning candidate_id""",
                  row['side'],row['market'],row['category_key'],row['category_label'],result['business_name'],result['source_url'],result['source_domain'],result['snippet'],result['public_email'],result['public_phone'],json.dumps(result['evidence']))
                status='verified' if native else 'existing_reviewed_record';verified+=1
                if result.get('verifier')=='vps_vendor_published_area_v2':
                    await conn.execute("update official_research_jobs set status=$2,error_code=null,verified_candidate_id=$3,next_attempt_at=now()+interval '6 days' where candidate_id=$1",row['candidate_id'],status,native)
                else:
                    await conn.execute("update official_research_jobs set status=$2,error_code=null,verified_candidate_id=$3,next_attempt_at=now()+interval '30 days' where candidate_id=$1",row['candidate_id'],status,native)
            else:
                held+=1
                await conn.execute("update official_research_jobs set status='needs_review',error_code=$2,next_attempt_at=now()+interval '24 hours' where candidate_id=$1",row['candidate_id'],error[:120])
        return {'ok':True,'worker':VERSION,'inspected':len(claimed),'verified':verified,'needs_review':held,'outreach_sent':0,'providers_accepted':0,'customer_orders_created':0,'source_policy_version':source_policy_version,
                'blocked_native_sources_considered':len(blocked_ids),'native_source_scan_limit_reached':len(native_sources)==1000}

    @app.post('/api/admin/preparation-status')
    async def preparation_status(x_bmc_admin_key:str|None=Header(default=None)):
        require_admin(x_bmc_admin_key)
        async with app.state.pool.acquire() as conn:
            jobs=await conn.fetch('select market,status,count(*) records from official_research_jobs group by market,status order by market,status')
            inventory_rows=await conn.fetch("select * from market_inventory_candidates where evidence->>'researched_by'=any($1::text[]) and status='discovered' and closed_at is null",list(NATIVE_VERSIONS))
            rechecks=await conn.fetch("""select c.market,j.source_policy_version,j.status,count(*) records,
              max(j.last_attempt_at) last_attempt_at from official_research_jobs j
              join market_inventory_candidates c using(candidate_id)
              where c.evidence->>'researched_by'=any($1::text[]) and j.source_policy_version<>''
              group by c.market,j.source_policy_version,j.status order by c.market,j.source_policy_version,j.status""",list(NATIVE_VERSIONS))
            from collections import Counter
            valid_counts=Counter((r['market'],r['side'],r['category_key']) for r in inventory_rows if auto_evidence_valid(dict(r),secret))
            inventory=[dict(market=k[0],side=k[1],category_key=k[2],records=n) for k,n in sorted(valid_counts.items())]
            rejected_native=len(inventory_rows)-sum(valid_counts.values())
            errors=await conn.fetch("select error_code,count(*) records from official_research_jobs where status='needs_review' group by error_code order by count(*) desc limit 12")
        from pathlib import Path
        image_catalog=json.loads(Path(__file__).with_name('service_images.json').read_text())
        imagery={'assigned':len(image_catalog['services']),'needs_review':[k for k,v in image_catalog['services'].items() if v['review_status']=='needs_review']}
        return {'ok':True,'worker':VERSION,'imagery':imagery,'jobs':[dict(x) for x in jobs],'native_revalidation_jobs':[dict(x) for x in rechecks],'primary_site_verified':[dict(x) for x in inventory],'native_records_requiring_revalidation':rejected_native,'review_reasons':[dict(x) for x in errors],'outreach_sent':0}
