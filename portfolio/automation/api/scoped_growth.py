"""Signed company-specific offer scope. Draft preparation never releases a customer."""
import hashlib,hmac,json,uuid
from datetime import datetime,timedelta,timezone

VERSION='scoped-growth-25-v1'

def canonical(value):return json.dumps(value,sort_keys=True,separators=(',',':'),default=str)
def signature(value,secret):
    if not secret:raise ValueError('Scoped offer signing unavailable')
    return hmac.new(secret.encode(),('bmc-scoped-offer|'+canonical(value)).encode(),hashlib.sha256).hexdigest()

def prepare_profile(packet,target_id,secret):
    from official_research import auto_evidence_valid
    recipient=packet['recipient'];scope=packet['binding']['scope'];ids=packet['binding']['candidate_ids']
    if (packet.get('status')!='held_packet_compiled' or packet.get('pack_count')!=25
        or packet.get('outreach_held') is not True or packet.get('offer_ready') is not False
        or not auto_evidence_valid(recipient,secret)):
        raise ValueError('A current native held25 packet is required')
    if len(ids)!=25 or len(set(ids))!=25 or not scope.get('category_keys') or not scope.get('observed_sector_phrases'):
        raise ValueError('Distinct source-scoped research is incomplete')
    for value in ids:uuid.UUID(str(value))
    if scope['source_url']!=recipient['source_url']:raise ValueError('Scoped source changed')
    artifacts=packet['artifacts'];small=artifacts[25]['rows'];free=artifacts[5]['rows']
    if len(small)!=25 or len(free)!=5 or free!=small[:5]:raise ValueError('Reviewed five must be preserved')
    now=datetime.now(timezone.utc)
    payload=dict(version=VERSION,target_id=target_id,candidate_id=str(recipient['candidate_id']),
        business_name=recipient['business_name'],email=recipient['public_email'].lower(),market=recipient['market'],
        service_key=recipient['category_key'],source_url=recipient['source_url'],scope=scope,
        candidate_ids=[str(x) for x in ids],sample_ids=[str(x) for x in ids[:5]],
        pack_count=25,amount_cents=14900,includes_free_five=True,
        publication_scope='Published service sectors; prospective business fit, not confirmed demand',
        state='draft',nonexclusive=True,created_at=now.isoformat(),expires_at=(now+timedelta(days=7)).isoformat())
    return dict(payload,signature=signature(payload,secret))

def profile_for_target(target,secret,*,customer=False,now=None):
    data=target.get('source_data') or {}
    if isinstance(data,str):data=json.loads(data)
    profile=data.get('scoped_offer')
    if profile is None:return None
    if not isinstance(profile,dict):raise ValueError('Scoped offer requires review')
    value=dict(profile);signed=value.pop('signature','')
    if not isinstance(signed,str) or not hmac.compare_digest(signed,signature(value,secret)):
        raise ValueError('Scoped offer signature changed')
    if value.get('version')!=VERSION or value.get('pack_count')!=25 or value.get('amount_cents')!=14900:
        raise ValueError('Scoped quantity or price changed')
    for field,key in (('target_id','target_id'),('business_name','business_name'),('public_email','email'),('market','market'),('service_key','service_key'),('source_url','source_url')):
        if str(target.get(field) or '').lower()!=str(value.get(key) or '').lower():
            raise ValueError('Scoped recipient or territory changed')
    if datetime.fromisoformat(value['expires_at'])<=(now or datetime.now(timezone.utc)):
        raise ValueError('Scoped evidence needs renewal')
    if customer and value.get('state')!='approved':raise ValueError('This scoped offer has not been released')
    if value.get('state') not in ('draft','approved'):raise ValueError('Scoped offer is unavailable')
    if len(value.get('candidate_ids',[]))!=25 or len(set(value['candidate_ids']))!=25 or value.get('sample_ids')!=value['candidate_ids'][:5]:
        raise ValueError('Scoped research identities changed')
    if not value.get('scope',{}).get('category_keys'):raise ValueError('Scoped customer sectors are missing')
    return value

def public_offer_fields(profile):
    if not profile:return dict(offer_count=100,offer_amount_cents=49900)
    return dict(offer_count=25,offer_amount_cents=14900,upgrade_available=False,
        research_scope='Your site lists '+', '.join(profile['scope']['observed_sector_phrases'])+'. This shortlist stays within those sectors and '+profile['market']+'.')
