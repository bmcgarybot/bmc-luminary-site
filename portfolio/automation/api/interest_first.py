"""Demand-first Growth outreach. Existing public business research -> interest -> free five.
No API calls, charges, provider acceptance, or advance prospect commitments.
"""
import re
from html import escape

CAMPAIGN="growth_interest_first"
WAVE="interest-first-v1"
EMAIL_RE=re.compile(r"^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}$",re.I)
BLOCKED_LOCAL={"noreply","no-reply","donotreply","do-not-reply","postmaster","abuse","mailer-daemon","privacy"}
# Select existing, publicly recorded business mailboxes; no licence/website prerequisite.
# A business with no verified public email can be researched, but not emailed.
CANDIDATE_SQL="""
with candidates as (
 select 'vendor:'||v.vendor_id||':'||vs.service_key||':'||vm.market as source_id,
   v.business_name,v.public_email,vm.market,vs.service_key,s.display_name as service_name,
   coalesce(v.source_url,v.website,'') as source_url,'vendor' as source_kind,
   2 as evidence_priority
 from vendors v join vendor_services vs on vs.vendor_id=v.vendor_id
 join vendor_markets vm on vm.vendor_id=v.vendor_id
 join services s on s.service_key=vs.service_key and s.is_active=true
 where v.status='prospect' and coalesce(v.public_email,'')<>''
 union all
 select 'inventory:'||i.candidate_id::text as source_id,
   i.business_name,i.public_email,i.market,i.category_key as service_key,
   s.display_name as service_name,i.source_url,'inventory' as source_kind,
   case when i.verification_status='direct_evidence' then 3 else 1 end as evidence_priority
 from market_inventory_candidates i
 join services s on s.service_key=i.category_key and s.is_active=true
 where i.side='vendor' and i.status='discovered' and i.closed_at is null
   and coalesce(i.public_email,'')<>'' and
   (i.verification_status in ('direct_evidence','government_record','credential_corroborated')
    or i.source_tier='direct')
)
select distinct on (lower(c.public_email))
 c.source_id,c.business_name,lower(c.public_email) as public_email,c.market,
 c.service_key,c.service_name,c.source_url,c.source_kind,c.evidence_priority
from candidates c
where c.business_name is not null and length(trim(c.business_name))>=3
 and c.market is not null and length(trim(c.market))>=2
 and c.public_email ~* '^[^[:space:]@]+@[^[:space:]@]+\.[^[:space:]@]+$'
 and not exists(select 1 from outreach_suppressions z
                where lower(z.email)=lower(c.public_email))
 and not exists(
   select 1 from outreach o
   left join growth_outreach_targets g on o.entity_type='growth_customer' and g.target_id=o.entity_id
   left join vendors v on o.entity_type='vendor' and v.vendor_id=o.entity_id
   left join buyers b on o.entity_type='buyer' and b.buyer_id=o.entity_id
   where (o.sent_at is not null or o.opt_out=true)
   and lower(coalesce(g.public_email,v.public_email,b.public_email,''))=lower(c.public_email))
 and not exists(
   select 1 from outreach o join growth_outreach_targets g
     on o.entity_type='growth_customer' and o.entity_id=g.target_id
   where o.campaign='growth_interest_first'
     and lower(g.public_email)=lower(c.public_email))
order by lower(c.public_email),c.evidence_priority desc,c.business_name,c.market,c.service_key
limit $1
"""

def email_valid(value):
    if not isinstance(value,str) or len(value)>254 or not EMAIL_RE.fullmatch(value.strip()):
        return False
    local=value.strip().split('@',1)[0].lower().replace('_','-')
    return local not in BLOCKED_LOCAL and not local.startswith(('noreply+','no-reply+'))

def candidate_eligible(row):
    return (bool(str(row.get('business_name') or '').strip()) and
            bool(str(row.get('market') or '').strip()) and
            bool(str(row.get('service_key') or '').strip()) and
            bool(str(row.get('service_name') or '').strip()) and
            email_valid(row.get('public_email')))

def invitation(row,postal_address):
    """One free-five invitation, not an assertion that five were already researched."""
    if not candidate_eligible(row):raise ValueError("incomplete_recipient")
    postal=str(postal_address or '').strip()
    if not postal or 'CHANGE_ME' in postal:raise ValueError("sender_postal_address_required")
    name=str(row['business_name']).strip()
    market=str(row['market']).strip()
    service=str(row['service_name']).strip()
    if any('\n' in str(row[k]) or '\r' in str(row[k]) for k in ('business_name','market','service_name')):
        raise ValueError('unsafe_copy_fields')
    if max(map(len,(name,market,service)))>140:raise ValueError('copy_field_too_long')
    subject="Five potential customers for "+name
    paragraphs=[
       "Hey, this is Brett with BMC Service Network.",
       f"I saw {name} listed for {service.lower()} in {market}. We help service businesses find companies that might be worth approaching.",
       f"If you want, reply FIVE. I'll ask what kinds of jobs and areas you want, then research five possible customer businesses for you at no cost.",
       "These would be researched prospects, not people who asked for quotes or promised work. You can keep the five with no obligation.",
       "If they're useful, we can discuss a larger custom research pack. I'll confirm the scope, price and delivery time before any purchase.",
       "If this isn't relevant, reply NO and we won't contact you again.",
    ]
    body="\n\n".join(paragraphs)+"\n\nBrett\nBMC Service Network\nBMC Luminary Ventures LLC\n"+postal
    html="<div style='font-family:Arial,sans-serif;line-height:1.55;max-width:620px'>"
    html+="".join("<p>"+escape(p)+"</p>" for p in paragraphs)
    html+="<p>Brett<br>BMC Service Network<br>BMC Luminary Ventures LLC<br>"+escape(postal).replace("\n","<br>")+"</p></div>"
    return subject,body,html
