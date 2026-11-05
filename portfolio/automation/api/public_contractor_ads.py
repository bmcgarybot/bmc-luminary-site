"""Public self-advertised service contacts, distinct from accepted providers.

No website, business registration, email or license prerequisite. Never bypass
login walls; never treat search snippets or employment requests as service ads.
"""
import asyncio,json,re
from datetime import datetime,timezone,timedelta
from html.parser import HTMLParser
from urllib.parse import urlsplit

VERSION='public-contractor-ad-v1'

def allowed_ad_url(url):
    try:
        p=urlsplit(url);h=(p.hostname or '').lower();path=p.path.lower()
        if p.scheme!='https' or p.username or p.password or p.port not in (None,443):return False
        if any(ord(c)<33 for c in url):return False
        if h.endswith('.craigslist.org'):return bool(re.search(r'/d/[^/]+/\d+\.html$',path))
        if h in ('facebook.com','www.facebook.com','m.facebook.com'):
            return '/posts/' in path or path.startswith(('/marketplace/item/','/permalink.php'))
        if h in ('nextdoor.com','www.nextdoor.com'):return path.startswith(('/p/','/pages/'))
        return False
    except ValueError:return False

class AdPage(HTMLParser):
    def __init__(self):
        super().__init__();self.depth=0;self.root=None;self.hidden=0;self.parts=[];self.dates=[]
    def handle_starttag(self,tag,attrs):
        a=dict(attrs)
        if tag in ('script','style','noscript','template'):self.hidden+=1
        if tag not in ('br','hr','img','input','meta','link','source','wbr'):self.depth+=1
        if self.root is None and (a.get('id')=='postingbody' or tag=='article' or a.get('role')=='article'):
            self.root=self.depth
        if tag=='time' and a.get('datetime'):self.dates.append(a['datetime'])
    def handle_endtag(self,tag):
        if tag in ('script','style','noscript','template') and self.hidden:self.hidden-=1
        if self.root==self.depth:self.root=None
        self.depth=max(0,self.depth-1)
    def handle_data(self,data):
        if self.root is not None and not self.hidden:self.parts.append(data)

def extract_ad(receipt,market,service_key,*,now=None):
    from official_research import VENDOR_TERMS
    now=now or datetime.now(timezone.utc)
    if not allowed_ad_url(receipt.final_url):raise ValueError('unsupported_public_ad_url')
    page=AdPage();page.feed(receipt.document)
    text=' '.join(' '.join(page.parts).split())
    if not text:raise ValueError('public_post_body_unavailable')
    if re.search(r'\b(?:posting (?:has been |was )?(?:deleted|expired)|no longer available|now hiring|send resume|seeking employment)\b',text,re.I):
        raise ValueError('inactive_or_employment_post')
    terms=VENDOR_TERMS.get(service_key,())
    service=next((t for t in terms if re.search(r'(?<!\w)'+re.escape(t)+r'(?!\w)',text,re.I)),None)
    if not service:raise ValueError('advertised_service_unproven')
    if not re.search(r'(?<!\w)'+re.escape(market)+r'(?!\w)',text,re.I):raise ValueError('advertised_territory_unproven')
    classified_service_ad=bool(re.search(r'/(?:hss|lbs|fgs)/d/',urlsplit(receipt.final_url).path))
    if not classified_service_ad and not re.search(r'\b(?:I (?:offer|provide|do)|we (?:offer|provide|do)|services offered|call(?:/text| or text| me| us)?|text me|free estimates?|contact me|book now)\b',text,re.I):
        raise ValueError('self_advertised_service_unproven')
    emails=sorted(set(re.findall(r'[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}',text,re.I)))
    phones=[]
    for match in re.findall(r'(?<!\d)(?:\+?1[ .-]?)?\(?[2-9]\d{2}\)?[ .-]?[2-9]\d{2}[ .-]?\d{4}(?!\d)',text):
        digits=re.sub(r'\D','',match)[-10:]
        if digits not in phones:phones.append(digits)
    if not emails and not phones:raise ValueError('public_service_contact_unavailable')
    published=[]
    for raw in page.dates:
        try:
            d=datetime.fromisoformat(raw.replace('Z','+00:00'))
            if d.tzinfo is not None:published.append(d)
        except ValueError:pass
    if published and max(published)<now-timedelta(days=45):raise ValueError('advertisement_stale')
    if published and max(published)>now+timedelta(days=1):raise ValueError('advertisement_date_invalid')
    return dict(version=VERSION,status='advertised_service_contact',market=market,service_key=service_key,
        source_url=receipt.final_url,content_sha256=receipt.content_sha256,checked_at=receipt.fetched_at,
        service_phrase=service,public_emails=emails,public_phones=phones,source_excerpt=text[:6000],
        published_at=max(published).isoformat() if published else None,publication_date_verified=bool(published),
        source_page_verified=True,website_required=False,license_status='not_verified',business_identity_verified=False,
        accepted_provider=False,confirmed_demand=False,offer_ready=False,automatic_contact_allowed=False)

async def process_ads(conn,fetch=None):
    from official_research import fetch_page_receipt
    fetch=fetch or (lambda url:fetch_page_receipt(url,url_policy=allowed_ad_url))
    rows=await conn.fetch("""select observation_id,source_url,market,service_key from local_channel_observations
        where observation_kind='contractor_advertisement' and service_key is not null
        and (evidence->'public_ad_check' is null or coalesce(evidence->'public_ad_check'->>'checked_at','') < $1)
        order by (evidence->'public_ad_check' is not null),last_seen_at desc,observation_id limit 3""",
        (datetime.now(timezone.utc)-timedelta(days=7)).isoformat())
    counts={'checked':0,'advertised_service_contacts':0,'unavailable_or_unproven':0}
    for row in rows:
        check=dict(version=VERSION,checked_at=datetime.now(timezone.utc).isoformat())
        try:
            if not allowed_ad_url(row['source_url']):raise ValueError('unsupported_public_ad_url')
            receipt=await asyncio.to_thread(fetch,row['source_url'])
            check=extract_ad(receipt,row['market'],row['service_key']);counts['advertised_service_contacts']+=1
        except Exception as exc:
            check.update(status='unavailable_or_unproven',reason=str(exc)[:100] if isinstance(exc,ValueError) else type(exc).__name__)
            counts['unavailable_or_unproven']+=1
        await conn.execute("update local_channel_observations set evidence=evidence||jsonb_build_object('public_ad_check',$2::jsonb) where observation_id=$1",row['observation_id'],json.dumps(check))
        counts['checked']+=1
    return counts

def install(app,require_admin):
    from fastapi import Header
    @app.post('/api/process-public-contractor-ads')
    async def process(x_bmc_admin_key:str|None=Header(default=None)):
        require_admin(x_bmc_admin_key)
        async with app.state.pool.acquire() as conn:
            if not await conn.fetchval('select pg_try_advisory_lock(20261105,702)'):return {'status':'busy'}
            try:return await process_ads(conn)
            finally:await conn.fetchval('select pg_advisory_unlock(20261105,702)')
