"""In-memory held research compiler; no database, tokens, payment or mail writes.

The caller MUST use a read-only transaction and current native recipient/source
verification. Qualification is injected from growth_qualified_territory_candidates;
this module deliberately does not substitute local fixtures for live inventory.
"""
import hashlib
import json
from datetime import datetime, timezone

import growth_offers
from growth_pdf import render_sample_pdf


async def compile_held_packet(conn, recipient, scope, *, verify_recipient,
                              qualify, select_sample, public_rows, csv_bytes,
                              recipient_business_key, minimum_reserve=125):
    """Compile 5/25/100 from current source-scoped rows, retaining each prefix.

    verify_recipient(conn, recipient, scope) is async, fails closed, and must
    revalidate native HMAC/source policy, source-backed scope, contact, opt-out,
    original-cohort exclusion and duplicate/history gates. No callback may write.
    Scope carries source_url/content_sha256/checked_at plus ideal_customer and
    exclusions; its current source digest must match the verified recipient.
    """
    if not all(recipient.get(k) for k in
               ('candidate_id', 'business_name', 'market', 'category_key', 'public_email', 'source_url')):
        raise ValueError('Recipient identity and public email are required')
    if not all(scope.get(k) for k in ('source_url', 'content_sha256', 'checked_at', 'ideal_customer')):
        raise ValueError('Source-backed customer focus is required')
    if scope['source_url'] != recipient['source_url']:
        raise ValueError('Recipient scope source mismatch')
    if await verify_recipient(conn, recipient, scope) is not True:
        raise ValueError('Current recipient/source/history gates have not cleared')
    territory = [recipient['market']]
    common = dict(ideal_customer=scope['ideal_customer'], exclusions=scope.get('exclusions', ''),
                  recipient_key=recipient['public_email'],
                  recipient_business_key=recipient_business_key(recipient['business_name']))
    free = list(await qualify(conn, recipient['category_key'], territory,
                             limit=1000, delivery_kind='free', **common))
    if len(free) < minimum_reserve:
        raise ValueError('Qualified sample reserve is incomplete')
    originals = list(select_sample(free, recipient['public_email']))
    if len(originals) != 5:
        raise ValueError('Exactly five sample rows are required')
    # A selector must only return the current qualified rows, unchanged.
    by_id = {str(r['candidate_id']): dict(r) for r in free}
    if any(dict(r) != by_id.get(str(r.get('candidate_id'))) for r in originals):
        raise ValueError('Sample selector changed current qualified evidence')
    paid = await qualify(conn, recipient['category_key'], territory, limit=minimum_reserve+100,
                         delivery_kind='paid', exclude_ids={str(r['candidate_id']) for r in originals},
                         exclude_names={r['business_name'].strip().lower() for r in originals}, **common)
    final = originals + list(paid[:95])
    growth_offers.validate_rows('growth_pack_25', final[:25], originals, territory)
    growth_offers.validate_rows('growth_upgrade_75', final, final[:25], territory)
    prepared = datetime.now(timezone.utc)
    binding = dict(candidate_id=str(recipient['candidate_id']), scope=scope,
                   candidate_ids=[str(r['candidate_id']) for r in final])
    digest = hashlib.sha256(json.dumps(binding, sort_keys=True, default=str).encode()).hexdigest()
    artifacts = {}
    for count in (5, 25, 100):
        rows = final[:count]
        public = public_rows(rows)
        artifacts[count] = dict(rows=public, csv=csv_bytes(rows), pdf=render_sample_pdf(
            public, recipient['business_name'], 'Commercial cleaning' if recipient['category_key']=='commercial_cleaning'
            else recipient['category_key'].replace('_', ' ').title(), territory,
            'held-'+digest, prepared_at=prepared, preview=True, paid=count!=5,
            **({'paid_count': count} if count!=5 else {})))
    return dict(status='held_packet_compiled', outreach_held=True, offer_ready=False,
                checkout_url='', customer_order_created=False, customer_delivery_recorded=False,
                prepared_at=prepared.isoformat(), binding=binding, digest=digest, artifacts=artifacts,
                missing=['Live purchase/fulfillment/reply review', 'Owner release approval'])
