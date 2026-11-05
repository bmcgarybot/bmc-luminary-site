"""Pilot-only visible physical property evidence. No fetch, writes or demand inference.

receipt_is_trusted must test identity against receipts fetched by the server, not
accept caller-supplied objects. The MAC authenticates this server's observation,
not legal ownership of a domain. Extraction/model output is always untrusted.
"""
import hashlib
import hmac
import json
import re
from datetime import datetime, timezone, timedelta
from html import unescape
from html.parser import HTMLParser
from urllib.parse import urlsplit, unquote
from official_research import FetchedPageReceipt, allowed_url, host, az_postal_code_valid
from api_pilot_property import validate_property_source, legal
try:
    from api_pilot_property import Source, countries, country_values
except ImportError:
    from api.api_pilot_property import Source, countries, country_values
VERSION='vps_property_visible_evidence_v3'
FIELDS={'business_name','source_url','physical_address','public_phone','public_email','identity_quote','role_quote','address_quote','contact_quote'}
BLOCKED={'apartments.com','zillow.com','trulia.com','rent.com','forrent.com','realtor.com','yelp.com','yellowpages.com','facebook.com','linkedin.com','loopnet.com','homes.com','apartmentguide.com'}
EMAIL=re.compile(r'[^\s@<>]+@[^\s@<>]+\.[a-z]{2,}',re.I)
ROLE=re.compile(r'property management|apartment (?:community|communities|homes)|residential communit|multifamily communit',re.I)
def norm(x):return ' '.join(unescape(str(x)).casefold().split())
def dense(x):return re.sub('[^a-z0-9]','',norm(x))
def phone(x):
    n=re.sub(r'\D','',x or '');return n[1:] if len(n)==11 and n.startswith('1') else n

def dt(x):return datetime.fromisoformat(x.replace('Z','+00:00')).astimezone(timezone.utc)
def canonical(x):return json.dumps(x,sort_keys=True,separators=(',',':'),ensure_ascii=False).encode()
def mac(x,secret):return hmac.new(secret.encode() if isinstance(secret,str) else secret,b'bmc-property-visible-evidence-v3|'+canonical(x),hashlib.sha256).hexdigest()
def safe(url):
    if not isinstance(url,str) or not allowed_url(url) or urlsplit(url).scheme!='https' or urlsplit(url).fragment:return False
    return not any(host(url)==x or host(url).endswith('.'+x) for x in BLOCKED)

class Visible(HTMLParser):
    BLOCK={'title','h1','h2','h3','h4','h5','h6','p','li','div','section','article','main','address','footer','header','nav','td','dd','dt'}
    VOID={'br','hr','img','input','meta','link','wbr','source','area','base','embed','param','track','col'}
    def __init__(self):super().__init__(convert_charrefs=True);self.stack=[];self.blocks=[];self.links=[]
    def handle_starttag(self,t,a):
        a=dict(a);prior=self.stack[-1] if self.stack else {};style=re.sub(r'\s+','',a.get('style','')).lower()
        hidden=prior.get('hidden',False) or t in {'script','style','noscript','template'} or 'hidden' in a or 'inert' in a or a.get('aria-hidden')=='true' or bool(re.search(r'display:none|visibility:hidden|opacity:0(?:;|$)',style))
        excluded=prior.get('excluded',False) or t in {'aside','blockquote','q','form','nav'} or bool(re.search(r'testimonial|review|webdesign|directory|listing.card',str(a),re.I))
        main=prior.get('main',True) and t not in {'footer','header','nav'}
        n={'tag':t,'hidden':hidden,'excluded':excluded,'main':main,'text':[],'href':a.get('href','')}
        if t not in self.VOID:self.stack.append(n)
    def handle_data(self,s):
        if not self.stack or self.stack[-1]['hidden']:return
        for n in reversed(self.stack):
            n['text'].append(s)
            if n['tag'] in self.BLOCK:break
    def handle_endtag(self,t):
        i=next((i for i in range(len(self.stack)-1,-1,-1) if self.stack[i]['tag']==t),None)
        if i is None:return
        n=self.stack[i];text=' '.join(' '.join(n['text']).split())
        if not n['hidden'] and not n['excluded']:
            if t in self.BLOCK and text:self.blocks.append({'tag':t,'text':text,'main':n['main']})
            if t=='a' and n['href'].startswith(('mailto:','tel:')) and not any(re.search('design|powered by', ' '.join(x['text']),re.I) for x in self.stack[:i]):self.links.append({'href':n['href'],'text':text})
        del self.stack[i:]

def visible_property_blocks(document):
    p=Visible();p.feed(document)
    out={'main_blocks':[{'tag':b['tag'],'text':b['text']} for b in p.blocks if b['main']], 'contact_blocks':[{'tag':b['tag'],'text':b['text']} for b in p.blocks], 'phones':[], 'emails':[]}
    for l in p.links:
        typ='emails' if l['href'].startswith('mailto:') else 'phones';value=unquote(l['href'].split(':',1)[1])
        if '?' in value or '#' in value:continue
        if typ=='emails' and not EMAIL.fullmatch(value):continue
        out[typ].append({'value':value,'text':l['text']})
    return out

def receipt(r,trust,now):
    if not isinstance(r,FetchedPageReceipt) or trust(r) is not True:raise ValueError('untrusted_receipt')
    urls=[r.requested_url,*r.redirect_chain,r.final_url]
    if not all(safe(u) and host(u)==host(r.final_url) for u in urls):raise ValueError('source_domain_invalid')
    if r.http_status!=200 or 'html' not in r.content_type.lower() or not 0<len(r.raw_bytes)<=1_000_000 or hashlib.sha256(r.raw_bytes).hexdigest()!=r.content_sha256:raise ValueError('receipt_invalid')
    if not 0<=(now-dt(r.fetched_at)).total_seconds()<=900:raise ValueError('receipt_stale')
    return {k:(list(getattr(r,k)) if k=='redirect_chain' else getattr(r,k)) for k in ('requested_url','final_url','content_sha256','fetched_at','http_status','content_type','redirect_chain')}

def address_ok(s):
    if not isinstance(s,str) or not re.match(r'^\s*\d+[A-Za-z]?\s+\S+',s) or re.search(r'\bP\.?\s*O\.?\s*(?:Box|Drawer)\b',s,re.I):return False
    m=re.search(r'\bPhoenix\s*,?\s+(?:AZ|Arizona)\s+(\d{5}(?:-\d{4})?)\s*(?:USA|US|United States)?\s*$',s,re.I)
    return bool(m and az_postal_code_valid(m.group(1)))

def findquote(pages,text,main=False):
    if not text.strip():raise ValueError('quote_empty')
    for i,p in enumerate(pages):
        for b in p['main_blocks' if main else 'contact_blocks']:
            if norm(text) in norm(b['text']):return i,b['text']
    raise ValueError('quote_not_visible')

def verify_property_visible_source(candidate,primary_receipt,extracted,secret,*,contact_receipt=None,receipt_is_trusted,now=None):
    now=now or datetime.now(timezone.utc)
    if candidate.get('side')!='buyer' or candidate.get('market')!='Phoenix' or candidate.get('category_key')!='property_management':raise ValueError('scope_invalid')
    if not isinstance(extracted,dict) or set(extracted)!=FIELDS or any(not isinstance(v,str) or len(v)>1500 for v in extracted.values()):raise ValueError('extraction_shape_invalid')
    x=extracted
    if not legal(x['business_name']) or legal(x['business_name'])!=legal(candidate.get('business_name')):raise ValueError('identity_mismatch')
    rs=[primary_receipt]+([contact_receipt] if contact_receipt is not None and contact_receipt is not primary_receipt else [])
    metas=[receipt(r,receipt_is_trusted,now) for r in rs]
    if x['source_url']!=primary_receipt.final_url or any(host(r.final_url)!=host(x['source_url']) for r in rs):raise ValueError('source_mismatch')
    if candidate.get('source_url') and host(candidate['source_url'])!=host(x['source_url']):raise ValueError('candidate_source_mismatch')
    role=validate_property_source(candidate,primary_receipt.document)
    # Country policy applies to every actual page, including contact-only pages.
    for r in rs:
        p=Source();p.feed(r.document)
        for v in countries(p.schemas):
            if any(norm(c).rstrip('/').rsplit('/',1)[-1] not in {'us','usa','united states','united states of america'} for c in country_values(v)):raise ValueError('foreign_country')
    pages=[visible_property_blocks(r.document) for r in rs]
    iq,ib=findquote(pages[:1],x['identity_quote'],True);rq,rb=findquote(pages[:1],x['role_quote'],True)
    if dense(x['business_name']) not in dense(x['identity_quote']) or not ROLE.search(x['role_quote']) or norm(x['role_quote']) not in norm(role['role_excerpt']):raise ValueError('identity_or_role_unbound')
    ai,ab=findquote(pages,x['address_quote']);ci,cb=findquote(pages,x['contact_quote'])
    if not address_ok(x['physical_address']) or dense(x['physical_address']) not in dense(x['address_quote']) or dense(x['physical_address']) not in dense(ab):raise ValueError('physical_address_unproven')
    if ai and not any(dense(x['business_name']) in dense(b['text']) for b in pages[ai]['contact_blocks']):raise ValueError('contact_identity_unproven')
    # Ambiguous multiple physical premises are held rather than selecting a model's favourite.
    addresses=set()
    for page in pages:
        for block in page['contact_blocks']:
            for match in re.finditer(r'\b\d+[A-Za-z]?\s+[^.!?;<>]{2,100}?\bPhoenix\s*,?\s+(?:AZ|Arizona)\s+\d{5}(?:-\d{4})?',block['text'],re.I):
                addresses.add(dense(match.group()))
    if len(addresses)>1:raise ValueError('multiple_physical_addresses')
    if re.search(r'powered by|designed by|web\s*design',cb,re.I):raise ValueError('publisher_contact_ambiguous')
    ph=phone(x['public_phone']);em=x['public_email'].lower()
    if (ph and len(ph)!=10) or (em and not EMAIL.fullmatch(em)) or not(ph or em):raise ValueError('contact_invalid')
    if candidate.get('public_phone') and phone(candidate['public_phone'])!=ph:raise ValueError('phone_mismatch')
    if candidate.get('public_email') and candidate['public_email'].lower()!=em:raise ValueError('email_mismatch')
    visible=' '.join(b['text'] for b in pages[ci]['contact_blocks'])
    if ph and not any(ph in phone(b['text']) for b in pages[ci]['contact_blocks']) and not any(phone(l['value'])==ph for l in pages[ci]['phones']):raise ValueError('phone_unproven')
    if em and em not in visible.lower() and not any(l['value'].lower()==em for l in pages[ci]['emails']):raise ValueError('email_unproven')
    if not ((ph and ph in phone(x['contact_quote'])) or (em and em in x['contact_quote'].lower()) or any(l['text'] and norm(l['text']) in norm(x['contact_quote']) and ((em and l['value'].lower()==em) or (ph and phone(l['value'])==ph)) for typ in ('phones','emails') for l in pages[ci][typ])):raise ValueError('contact_quote_unbound')
    facts={**x,'public_phone':ph,'public_email':em,'verifier':VERSION,'side':'buyer','market':'Phoenix','category_key':'property_management','source_domain':host(x['source_url']),'physical_address_verified':True,'location_type':'published_physical_address','http_status':200,'content_sha256':primary_receipt.content_sha256,'checked_at':now.isoformat(),'expires_at':(now+timedelta(days=7)).isoformat(),'source_receipts':metas,'quote_sources':{'identity':0,'role':0,'address':ai,'contact':ci},'published_role':role['published_role'],'confirmed_demand':False,'provider_accepted':False,'snippet':x['role_quote'][:500]}
    return {**facts,'official_site':True,'evidence':{'researched_by':VERSION,'vps_verification':{**facts,'signature':mac(facts,secret)}}}

def auto_property_visible_valid(row,secret,*,now=None):
    try:
        now=now or datetime.now(timezone.utc);e=row['evidence'];p=dict(e['vps_verification']);sig=p.pop('signature')
        if not isinstance(sig,str) or not hmac.compare_digest(sig,mac(p,secret)):return False
        required=FIELDS|{'verifier','side','market','category_key','source_domain','physical_address_verified','location_type','http_status','content_sha256','checked_at','expires_at','source_receipts','quote_sources','published_role','confirmed_demand','provider_accepted','snippet'}
        if set(p)!=required or e['researched_by']!=VERSION or p['verifier']!=VERSION:return False
        if (p['side'],p['market'],p['category_key'],p['location_type'])!=('buyer','Phoenix','property_management','published_physical_address') or p['physical_address_verified'] is not True or p['confirmed_demand'] is not False or p['provider_accepted'] is not False:return False
        if not dt(p['checked_at'])<=now<dt(p['expires_at']) or dt(p['expires_at'])-dt(p['checked_at'])!=timedelta(days=7):return False
        if not safe(p['source_url']) or p['source_domain']!=host(p['source_url']) or not address_ok(p['physical_address']):return False
        for k in ('business_name','source_url','side','market','category_key','public_phone','public_email','snippet'):
            if row.get(k)!=p[k]:return False
        if 'physical_address' in row and row['physical_address']!=p['physical_address']:return False
        if not row.get('official_site') or p['http_status']!=200 or not re.fullmatch('[0-9a-f]{64}',p['content_sha256']):return False
        if not(p['public_phone'] or p['public_email']) or (p['public_phone'] and not re.fullmatch('[0-9]{10}',p['public_phone'])) or (p['public_email'] and not EMAIL.fullmatch(p['public_email'])):return False
        rs=p['source_receipts']
        if not isinstance(rs,list) or not 1<=len(rs)<=2:return False
        for r in rs:
            if set(r)!={'requested_url','final_url','content_sha256','fetched_at','http_status','content_type','redirect_chain'} or r['http_status']!=200 or 'html' not in r['content_type'].lower() or not isinstance(r['redirect_chain'],list) or not re.fullmatch('[0-9a-f]{64}',r['content_sha256']):return False
            if not all(safe(u) and host(u)==p['source_domain'] for u in [r['requested_url'],*r['redirect_chain'],r['final_url']]) or not 0<=(dt(p['checked_at'])-dt(r['fetched_at'])).total_seconds()<=900:return False
        if rs[0]['final_url']!=p['source_url'] or rs[0]['content_sha256']!=p['content_sha256']:return False
        qs=p['quote_sources']
        if set(qs)!={'identity','role','address','contact'} or any(type(v)!=int or not 0<=v<len(rs) for v in qs.values()) or qs['identity']!=0 or qs['role']!=0:return False
        if any(not isinstance(p[k],str) or not 0<len(p[k])<=1500 for k in ('identity_quote','role_quote','address_quote','contact_quote')):return False
        if dense(p['business_name']) not in dense(p['identity_quote']):return False
        return bool(ROLE.search(p['role_quote']) and dense(p['physical_address']) in dense(p['address_quote']) and p['published_role'] in {'property_management','apartment_community'})
    except (KeyError,ValueError,TypeError,AttributeError,OverflowError):return False
