"""Server-only category capabilities; never accept categories from public requests."""
import hashlib,hmac,json,re
from datetime import datetime,timedelta,timezone
from official_research import auto_evidence_valid,allowed_url,FetchedPageReceipt,host
from scoped_growth import signature as profile_signature,VERSION as PROFILE_VERSION
VERSION='source-pressure-categories-v1'
CONTEXT='bmc-qualification-scope-v1|'
ALLOWED={'insurance_professional','retail','property_management','auto_fleet'}
# Only exact source extracts from affirmative, visible pressure-service blocks.
PROPERTY_EXTERIOR_PATTERN=r'commercial propert(?:y|ies)\b[^.!?;]{0,100}\bexterior (?:cleaning|washing)\b[^.!?;]{0,60}\bmaintenance(?: services)?'
def sector_category(phrase):
    mapping={'storefront':'retail','storefronts':'retail','offices':'insurance_professional','multi-tenant properties':'property_management','multi tenant properties':'property_management',
        'fleet operators':'auto_fleet','fleet washing service':'auto_fleet','fleet washing services':'auto_fleet'}
    phrase=str(phrase).lower()
    return mapping.get(phrase) or ('property_management' if re.fullmatch(PROPERTY_EXTERIOR_PATTERN,phrase) else None)

def business_key(value):return 'business:'+re.sub('[^a-z0-9]+','',str(value).lower())
def mac(value,secret):
    if not secret:raise ValueError('qualification_scope_signing_unavailable')
    return hmac.new(secret.encode(),(CONTEXT+json.dumps(value,sort_keys=True,separators=(',',':'))).encode(),hashlib.sha256).hexdigest()
def categories(scope):
    observed=scope.get('observed_sector_phrases')
    keys=scope.get('category_keys')
    if not isinstance(observed,list) or not observed or not isinstance(keys,list) or not keys or len(keys)!=len(set(keys)):
        raise ValueError('qualification_scope_sectors_missing')
    derived={sector_category(phrase) for phrase in observed}
    if None in derived or set(keys)!=derived or not derived<=ALLOWED:raise ValueError('qualification_scope_sectors_unproven')
    return sorted(derived)
def mint(scope,*,email,business,market,source_url,source_signature,expires_at,secret):
    if not allowed_url(source_url) or scope.get('source_url')!=source_url or not re.fullmatch('[0-9a-f]{64}',str(scope.get('content_sha256',''))) or not source_signature:
        raise ValueError('qualification_scope_source_unproven')
    facts=dict(version=VERSION,service_key='pressure_washing',market=market,email=email.lower(),business_key=business_key(business),
        ideal_customer=scope['ideal_customer'],exclusions=scope.get('exclusions',''),source_url=source_url,
        content_sha256=scope['content_sha256'],source_signature=source_signature,category_keys=categories(scope),expires_at=expires_at)
    return dict(facts,signature=mac(facts,secret))
def from_fresh(recipient,scope,receipt,secret,now=None):
    if recipient.get('category_key')!='pressure_washing':return None
    now=now or datetime.now(timezone.utc)
    if recipient.get('side')!='vendor' or not auto_evidence_valid(recipient,secret):raise ValueError('qualification_scope_native_required')
    signed=recipient['evidence']['vps_verification'];checked=datetime.fromisoformat(signed['checked_at'])
    if not isinstance(receipt,FetchedPageReceipt):raise ValueError('qualification_scope_receipt_required')
    fetched=datetime.fromisoformat(receipt.fetched_at)
    if (not isinstance(receipt.raw_bytes,bytes) or len(receipt.raw_bytes)>1_000_000 or receipt.http_status!=200
        or receipt.requested_url!=recipient['source_url'] or receipt.final_url!=recipient['source_url']
        or receipt.content_type.split(';',1)[0].strip().lower() not in ('text/html','application/xhtml+xml')
        or not -timedelta(minutes=5)<=now-fetched<=timedelta(minutes=5)
        or receipt.content_sha256!=signed['content_sha256'] or hashlib.sha256(receipt.raw_bytes).hexdigest()!=signed['content_sha256']
        or any(not allowed_url(url) or host(url)!=host(recipient['source_url']) for url in receipt.redirect_chain)):
        raise ValueError('qualification_scope_receipt_changed')
    document=receipt.document
    if not -timedelta(minutes=5)<=now-checked<=timedelta(minutes=5):raise ValueError('qualification_scope_fresh_source_required')
    if any(scope.get(k)!=signed.get(k) for k in ('source_url','content_sha256','checked_at')) or scope.get('source_signature')!=signed['signature']:
        raise ValueError('qualification_scope_source_changed')
    # The caller has just fetched and natively parsed this document. Independently
    # derive focus again, never trust a supplied category list or scope annotation.
    from held_packet_api import source_focus
    current=source_focus(document,'pressure_washing')
    if any(scope.get(k)!=current.get(k) for k in ('category_keys','observed_sector_phrases','ideal_customer','exclusions')):
        raise ValueError('qualification_scope_focus_changed')
    return mint(scope,email=recipient['public_email'],business=recipient['business_name'],market=recipient['market'],
        source_url=recipient['source_url'],source_signature=signed['signature'],expires_at=min(now+timedelta(minutes=5),fetched+timedelta(minutes=5)).isoformat(),secret=secret)
def from_profile(profile,secret,*,customer=True,now=None):
    if not profile or profile.get('service_key')!='pressure_washing':return None
    now=now or datetime.now(timezone.utc);facts=dict(profile);signed=facts.pop('signature','')
    if not isinstance(signed,str) or not hmac.compare_digest(signed,profile_signature(facts,secret)):raise ValueError('qualification_scope_profile_changed')
    if facts.get('version')!=PROFILE_VERSION or facts.get('pack_count')!=25 or facts.get('amount_cents')!=14900 or facts.get('state') not in ('draft','approved') or (customer and facts['state']!='approved'):
        raise ValueError('qualification_scope_profile_unapproved')
    if datetime.fromisoformat(facts['expires_at'])<=now:raise ValueError('qualification_scope_expired')
    scope=facts['scope']
    if not scope.get('source_signature'):raise ValueError('qualification_scope_source_unproven')
    return mint(scope,email=facts['email'],business=facts['business_name'],market=facts['market'],source_url=facts['source_url'],
        source_signature=signed,expires_at=facts['expires_at'],secret=secret)
def validate(value,secret,*,service_key,market,email,recipient_business_key,ideal_customer,exclusions,now=None):
    now=now or datetime.now(timezone.utc)
    if not isinstance(value,dict):raise ValueError('qualification_scope_invalid')
    facts=dict(value);signed=facts.pop('signature','')
    if not isinstance(signed,str) or not hmac.compare_digest(signed,mac(facts,secret)):raise ValueError('qualification_scope_changed')
    if (facts.get('version')!=VERSION or service_key!='pressure_washing' or facts.get('service_key')!=service_key or facts.get('market')!=market
        or facts.get('email')!=email.lower() or facts.get('business_key')!=recipient_business_key
        or facts.get('ideal_customer')!=ideal_customer or facts.get('exclusions')!=exclusions
        or not allowed_url(facts.get('source_url','')) or datetime.fromisoformat(facts['expires_at'])<=now):raise ValueError('qualification_scope_binding_changed')
    keys=facts['category_keys']
    if not keys or not set(keys)<=ALLOWED or len(keys)!=len(set(keys)):raise ValueError('qualification_scope_categories_changed')
    return list(keys)
def exterior_notes(market):
    return (f'Published office premises in {market}; exterior surfaces, maintenance responsibility and permission require assessment. Research fit only, not a cleaning request.',
        'Ask who controls exterior maintenance and whether property-owner or manager authorization is required. Offer an exterior facade and entryway assessment before discussing any work.')
