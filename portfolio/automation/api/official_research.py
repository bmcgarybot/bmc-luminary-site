"""Bounded primary-site research. Publishes evidence, never outreach or provider acceptance."""
import asyncio, hashlib, hmac, html, http.client, ipaddress, json, re, socket, ssl
from datetime import datetime, timedelta, timezone
from html.parser import HTMLParser
from urllib.parse import urlsplit, urlunsplit, urljoin

from research_policy import ownership_evidence

VERSION='vps_primary_site_v1'
BUYER_TYPES={
 'auto_dealers':('AutoDealer',),'auto_fleet':('MovingCompany','AutomotiveBusiness'),
 'churches':('Church','PlaceOfWorship'),'dental':('Dentist',),'grocery':('GroceryStore',),
 'gyms_fitness':('ExerciseGym','HealthClub','SportsActivityLocation'),
 'hotels_motels':('Hotel','Motel','Resort','LodgingBusiness'),
 'insurance_professional':('InsuranceAgency','AccountingService','Attorney','LegalService','FinancialService','ProfessionalService'),
 'medical_centers':('Hospital','MedicalClinic','Physician','MedicalBusiness'),
 'pharmacies':('Pharmacy',),'pharmacy':('Pharmacy',),'property_management':('RealEstateAgent',),
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
BLOCKED={'yahoo.com','powerwashmaps.com','homeadvisor.com','fandango.com','rehab.com','landscapeatlas.com','industrialspaces.net','corkd.com','whereorg.com','homversa.com','yelp.com','facebook.com','linkedin.com','loc8nearme.com','angi.com','thumbtack.com','bbb.org','yellowpages.com','mapquest.com','tripadvisor.com','booking.com','hotels.com','expedia.com','google.com','bing.com','nextdoor.com'}

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

def fetch_page(url):
    for _ in range(4):
        if not allowed_url(url):raise ValueError('unsupported_source_url')
        p=urlsplit(url);addresses=public_addresses(p.hostname)
        conn=PinnedHTTPS(p.hostname,addresses[0])
        try:
            conn.request('GET',urlunsplit(('', '',p.path or '/',p.query,'')),headers={'User-Agent':'BMC-Service-Network-Research/1.0 (+https://bmcservicenetwork.com)','Accept':'text/html,application/xhtml+xml','Accept-Encoding':'identity'})
            response=conn.getresponse()
            if response.status in (301,302,303,307,308):url=urljoin(url,response.getheader('Location',''));continue
            if response.status!=200:raise ValueError('http_'+str(response.status))
            if not any(x in response.getheader('Content-Type','').lower() for x in ('text/html','application/xhtml+xml')):raise ValueError('not_html')
            raw=response.read(1_000_001)
            if len(raw)>1_000_000:raise ValueError('page_too_large')
            return url,raw.decode('utf-8','replace'),hashlib.sha256(raw).hexdigest()
        finally:conn.close()
    raise ValueError('redirect_limit')

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

def parse_record(candidate,url,document,digest,secret):
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
        if not re.search(r'\d+\s+\S+',street) or re.search(r'\bp\.?\s*o\.?\s*box\b',street,re.I) or not re.fullmatch(r'\d{5}(?:-\d{4})?',zip_code):continue
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

def auto_evidence_valid(row,secret):
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
        return bool(signed.get('physical_address') and allowed_url(signed['source_url']))
    except (ValueError,TypeError,KeyError):return False


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
        async with app.state.pool.acquire() as conn:
          async with conn.transaction():
            # Raw discoveries stay intact; previously reviewed packets are never rewritten.
            rows=await conn.fetch("""with activity as (select market,max(last_attempt_at) touched from official_research_jobs group by market), ranked as (
              select c.*,a.touched,row_number() over(partition by c.market,c.side order by
                case when c.evidence->'vps_verification'->'ownership_evidence'->>'classification'='owner_operated' then 0 else 1 end,c.official_site desc,
                case when c.category_key in ('commercial_cleaning','pressure_washing','junk_hauling','tree_service','handyman_repairs') then 0 else 1 end,c.updated_at desc,c.candidate_id) pos
              from market_inventory_candidates c left join official_research_jobs j using(candidate_id) left join activity a on a.market=c.market
              where c.market=any($1::text[]) and c.status='discovered' and c.closed_at is null
                and coalesce(c.evidence->>'researched_by','')<>'assistant_manual_census'
                and (coalesce(c.evidence->>'researched_by','')<>'vps_primary_site_v1'
                     or c.last_verified_at is null or c.last_verified_at<now()-interval '30 days')
                and (not(c.evidence ? 'qualification_hold') or c.evidence->'qualification_hold' in ('false'::jsonb,'null'::jsonb))
                and (j.candidate_id is null or j.next_attempt_at<now()))
              select * from ranked where (market='Phoenix' and pos<=2) or (market<>'Phoenix' and pos=1)
              order by case when market='Phoenix' then 0 else 1 end,touched nulls first,market,side limit 6""",list(markets))
            for r in rows:
                row=dict(r)
                claim=await conn.fetchval("""insert into official_research_jobs(candidate_id,market,status,attempts,last_attempt_at,next_attempt_at)
                  values($1,$2,'running',1,now(),now()+interval '30 minutes') on conflict(candidate_id) do update
                  set status='running',attempts=official_research_jobs.attempts+1,last_attempt_at=now(),next_attempt_at=now()+interval '30 minutes'
                  where official_research_jobs.next_attempt_at<now() returning candidate_id""",r['candidate_id'],r['market'])
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
                await conn.execute("update official_research_jobs set status=$2,error_code=null,verified_candidate_id=$3,next_attempt_at=now()+interval '30 days' where candidate_id=$1",row['candidate_id'],status,native)
            else:
                held+=1
                await conn.execute("update official_research_jobs set status='needs_review',error_code=$2,next_attempt_at=now()+interval '24 hours' where candidate_id=$1",row['candidate_id'],error[:120])
        return {'ok':True,'worker':VERSION,'inspected':len(claimed),'verified':verified,'needs_review':held,'outreach_sent':0,'providers_accepted':0,'customer_orders_created':0}

    @app.post('/api/admin/preparation-status')
    async def preparation_status(x_bmc_admin_key:str|None=Header(default=None)):
        require_admin(x_bmc_admin_key)
        async with app.state.pool.acquire() as conn:
            jobs=await conn.fetch('select market,status,count(*) records from official_research_jobs group by market,status order by market,status')
            inventory_rows=await conn.fetch("select * from market_inventory_candidates where evidence->>'researched_by'=$1 and status='discovered' and closed_at is null",VERSION)
            from collections import Counter
            valid_counts=Counter((r['market'],r['side'],r['category_key']) for r in inventory_rows if auto_evidence_valid(dict(r),secret))
            inventory=[dict(market=k[0],side=k[1],category_key=k[2],records=n) for k,n in sorted(valid_counts.items())]
            rejected_native=len(inventory_rows)-sum(valid_counts.values())
            errors=await conn.fetch("select error_code,count(*) records from official_research_jobs where status='needs_review' group by error_code order by count(*) desc limit 12")
        from pathlib import Path
        image_catalog=json.loads(Path(__file__).with_name('service_images.json').read_text())
        imagery={'assigned':len(image_catalog['services']),'needs_review':[k for k,v in image_catalog['services'].items() if v['review_status']=='needs_review']}
        return {'ok':True,'worker':VERSION,'imagery':imagery,'jobs':[dict(x) for x in jobs],'primary_site_verified':[dict(x) for x in inventory],'native_records_requiring_revalidation':rejected_native,'review_reasons':[dict(x) for x in errors],'outreach_sent':0}
