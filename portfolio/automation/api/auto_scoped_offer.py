"""Opt-in delegated approval of customer-requested fixed25 offers; no delivery/payment IO."""
import hashlib,hmac,json,uuid
from datetime import datetime,timezone
from urllib.parse import urlsplit
import growth_offers
from scoped_growth import profile_for_target
from scoped_dispatch import dispatch_for_target
REQUEST_EVENT='customer_requested_scoped25'
ACTOR='owner_delegated_fixed25_policy'

def request_signature(value,secret):
    if not secret:raise ValueError('request_signing_unavailable')
    return hmac.new(secret.encode(),('bmc-customer-request25|'+json.dumps(value,sort_keys=True,separators=(',',':'))).encode(),hashlib.sha256).hexdigest()

def request_marker(offer_id,sample_id,email,profile_signature,secret):
    value=dict(version='customer-request25-v1',offer_id=str(uuid.UUID(str(offer_id))),sample_id=str(uuid.UUID(str(sample_id))),
        email=email.lower(),profile_signature=profile_signature,product_key='growth_pack_25',amount_cents=14900,currency='usd',confirmed=True)
    return dict(value,signature=request_signature(value,secret))

def obj(value):return json.loads(value) if isinstance(value,str) else dict(value or {})
def dt(value):
    value=datetime.fromisoformat(value) if isinstance(value,str) else value
    return value.replace(tzinfo=timezone.utc) if value.tzinfo is None else value

def check(offer,sample,target,product,marker,secret,dispatch_scopes,now):
    marker=obj(marker);signature=marker.pop('signature','')
    if not isinstance(signature,str) or not hmac.compare_digest(signature,request_signature(marker,secret)):raise ValueError('request_marker_invalid')
    profile=profile_for_target(target,secret,customer=True)
    if not profile or profile.get('nonexclusive') is not True or profile.get('includes_free_five') is not True:raise ValueError('approved_fixed25_required')
    expected=request_marker(offer['offer_id'],offer['sample_id'],offer['email'],profile['signature'],secret);expected.pop('signature')
    if marker!=expected:raise ValueError('request_scope_changed')
    wave=dispatch_scopes.get(str(target['target_id']))
    if not wave or dispatch_for_target(target,secret,{profile['service_key']:wave})!=wave:raise ValueError('scoped_dispatch_required')
    if (offer['product_key']!='growth_pack_25' or offer.get('parent_order_id') or offer.get('paid_order_id') or offer.get('approved_at')
        or offer['status']!='draft' or sample['status']!='delivered' or sample.get('converted_at') or sample.get('order_id')
        or str(sample['sample_id'])!=str(offer['sample_id']) or str(sample.get('source_target_id'))!=str(target['target_id'])
        or any(str(email).lower()!=profile['email'] for email in (offer['email'],sample['email'],target['public_email']))):raise ValueError('recipient_or_purchase_state_changed')
    selected=sample.get('selected_markets') or [sample.get('market')]
    if (selected!=[profile['market']] or sample['business_name']!=profile['business_name'] or sample['provider_service_key']!=profile['service_key']
        or sample.get('ideal_customer','')!=profile['scope']['ideal_customer'] or sample.get('exclusions','')!=profile['scope'].get('exclusions','')):raise ValueError('sample_scope_changed')
    url=urlsplit(str(product.get('payment_link_url') or ''))
    if (product.get('product_key')!='growth_pack_25' or product.get('active') is not True or product.get('amount_cents')!=14900
        or product.get('currency')!='usd' or url.scheme!='https' or url.hostname!='buy.stripe.com' or url.username or url.password or url.port not in (None,443)
        or not url.path.strip('/') or url.query or url.fragment):raise ValueError('fixed149_product_unavailable')
    expires=min(dt(offer['expires_at']),dt(profile['expires_at']))
    if expires<=now:raise ValueError('offer_expired')
    return profile,expires

async def auto_approve_requested_scoped_offers(conn,secret,dispatch_scopes,current_payload,enabled=False):
    if enabled is not True:return dict(enabled=False,approved=0,needs_review=0)
    approved=0;needs_review=0
    # An unchanged failed request is surfaced once, avoiding repeated empty retries.
    rows=await conn.fetch("""select f.offer_id from growth_purchase_offers f where f.status='draft'
      and exists(select 1 from events e where e.entity_type='growth_offer' and e.entity_id=f.offer_id::text and e.event_type='customer_requested_scoped25')
      and not exists(select 1 from events e where e.entity_type='growth_offer' and e.entity_id=f.offer_id::text
        and e.event_type='auto_scoped_offer_review_needed' and e.payload->>'payload_sha256'=f.payload_sha256)
      order by f.created_at,f.offer_id limit 5""")
    for item in rows[:5]:
      async with conn.transaction():
        await conn.execute('select pg_advisory_xact_lock(20261027, 5182)')
        raw=await conn.fetchrow('select * from growth_purchase_offers where offer_id=$1 for update',item['offer_id'])
        if not raw or raw['status']!='draft':continue
        offer=dict(raw)
        already_blocked=await conn.fetchval("select 1 from events where entity_type='growth_offer' and entity_id=$1 and event_type='auto_scoped_offer_review_needed' and payload->>'payload_sha256'=$2 limit 1",str(offer['offer_id']),offer['payload_sha256'])
        if already_blocked:continue
        marker=await conn.fetchval("select payload from events where entity_type='growth_offer' and entity_id=$1 and event_type='customer_requested_scoped25' order by event_id limit 1",str(offer['offer_id']))
        if not marker:continue
        try:
            sample=dict(await conn.fetchrow('select * from growth_sample_requests where sample_id=$1 for update',offer['sample_id']) or {})
            target=dict(await conn.fetchrow('select * from growth_outreach_targets where target_id=$1 for update',sample.get('source_target_id')) or {})
            product=dict(await conn.fetchrow("select * from products where product_key='growth_pack_25' for share") or {})
            profile,expires=check(offer,sample,target,product,marker,secret,dispatch_scopes,datetime.now(timezone.utc))
            if await conn.fetchval('select 1 from outreach_suppressions where lower(email)=lower($1)',offer['email']):raise ValueError('recipient_suppressed')
            saved=obj(offer['payload'])
            if growth_offers.offer_digest(saved)!=offer['payload_sha256']:raise ValueError('payload_changed')
            payload=await current_payload(conn,offer)
            if payload!=saved or payload.get('scoped_profile_signature')!=profile['signature']:raise ValueError('current_payload_changed')
            ids=[str(r['candidate_id']) for r in payload.get('rows',[])]
            if (ids!=profile['candidate_ids'] or len(ids)!=25 or len(set(ids))!=25 or payload.get('territory')!=[profile['market']]
                or payload.get('service_key')!=profile['service_key'] or payload.get('business')!=profile['business_name']
                or payload.get('ideal_customer')!=profile['scope']['ideal_customer'] or payload.get('exclusions','')!=profile['scope'].get('exclusions','')):raise ValueError('fixed25_payload_changed')
            originals=[dict(row) for row in await conn.fetch('select * from growth_sample_prospects where sample_id=$1',offer['sample_id'])]
            if len(originals)!=5 or {str(r['candidate_id']) for r in originals}!=set(profile['sample_ids']):raise ValueError('frozen_five_changed')
            growth_offers.validate_rows('growth_pack_25',payload['rows'],originals,payload['territory'])
            if expires<=datetime.now(timezone.utc):raise ValueError('offer_expired_during_qualification')
            changed=await conn.fetchval("""update growth_purchase_offers set status='approved',approved_at=now(),expires_at=$2,updated_at=now()
              where offer_id=$1 and status='draft' and payload_sha256=$3 and expires_at>now() returning offer_id""",offer['offer_id'],expires,offer['payload_sha256'])
            if not changed:raise ValueError('approval_state_changed')
            await conn.execute('update growth_sample_requests set next_nurture_at=null,updated_at=now() where sample_id=$1',offer['sample_id'])
            await conn.execute("""insert into events(entity_type,entity_id,event_type,actor,payload)
              values('growth_offer',$1,'owner_approved',$2,$3::jsonb)""",str(offer['offer_id']),ACTOR,json.dumps(dict(policy='requested-fixed25-v1',payload_sha256=offer['payload_sha256'],profile_signature=profile['signature'],amount_cents=14900,currency='usd',expires_at=expires.isoformat())))
            approved+=1
        except (ValueError,TypeError,KeyError,AttributeError,OverflowError):
            needs_review+=1
            # No customer text, email, token, SQL or exception details in operational summaries.
            await conn.execute("""insert into events(entity_type,entity_id,event_type,actor,payload)
              values('growth_offer',$1,'auto_scoped_offer_review_needed',$2,$3::jsonb)""",str(offer['offer_id']),ACTOR,json.dumps({'payload_sha256':offer['payload_sha256'],'reason':'requested_fixed25_requires_review'}))
            await conn.execute("""insert into exceptions(type,severity,summary,recommended_action)
              select 'requested_scoped_offer_requires_review','high',$1,'A customer requested the fixed25 pack but current qualification failed. Inspect the private offer/profile/inventory before providing checkout. No approval, order, charge or message was created.'
              where not exists(select 1 from exceptions where type='requested_scoped_offer_requires_review' and summary=$1 and status='open')""",'Requested fixed25 offer needs help: '+str(offer['offer_id']))
    return dict(enabled=True,approved=approved,needs_review=needs_review)
