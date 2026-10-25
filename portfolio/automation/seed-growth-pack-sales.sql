-- Build a controlled Growth Pack sales wave from already-researched service businesses.
-- Safety:
--   * Uses only public business email already stored in BMC research data.
--   * Excludes Prescott / Prescott Valley so it does not conflict with the local provider launch cell.
--   * Does not send anything; GROWTH_OUTREACH_ENABLED remains false by default.

with candidates as (
  select
    v.vendor_id,
    v.business_name,
    v.website,
    v.public_email,
    v.public_phone,
    v.source_url,
    vm.market,
    vs.services
  from vendors v
  join lateral (
    select market
    from vendor_markets
    where vendor_id=v.vendor_id
      and market not in ('Prescott','Prescott Valley')
    order by market
    limit 1
  ) vm on true
  join lateral (
    select string_agg(service_key,'|' order by service_key) services
    from vendor_services
    where vendor_id=v.vendor_id
  ) vs on true
  where v.status='prospect'
    and v.public_email is not null
    and v.public_email<>''
    and v.website is not null
    and v.website<>''
    and not exists (
      select 1 from outreach o
      where o.entity_type='vendor'
        and o.entity_id=v.vendor_id
        and o.wave='pilot1'
    )
  order by v.business_name
  limit 40
)
insert into buyers(
  buyer_id,business_name,market,buyer_type,website,public_email,public_phone,
  source_url,likely_services,priority,status,notes,campaign
)
select
  'gp_'||vendor_id,
  business_name,
  market,
  'local_service_business',
  website,
  public_email,
  public_phone,
  source_url,
  services,
  'A',
  'new',
  'Growth Pack sales prospect derived from researched public service-business data',
  'growth_pack_sales'
from candidates
on conflict(buyer_id) do update set
  business_name=excluded.business_name,
  market=excluded.market,
  buyer_type=excluded.buyer_type,
  website=excluded.website,
  public_email=excluded.public_email,
  public_phone=excluded.public_phone,
  source_url=excluded.source_url,
  likely_services=excluded.likely_services,
  priority=excluded.priority,
  status=case when buyers.status in ('suppressed','customer') then buyers.status else excluded.status end,
  notes=excluded.notes,
  campaign=excluded.campaign,
  updated_at=now();

insert into outreach(entity_type,entity_id,campaign,wave,channel,sequence_step,status,next_followup_at,opt_out)
select 'buyer',b.buyer_id,'growth_pack_sales','growth1','email',0,'queued',now(),false
from buyers b
where b.campaign='growth_pack_sales'
  and b.public_email is not null
  and b.public_email<>''
  and not exists (
    select 1 from outreach o
    where o.entity_type='buyer'
      and o.entity_id=b.buyer_id
      and o.campaign='growth_pack_sales'
  );

update outreach o
set campaign='growth_pack_sales',wave='growth1'
from buyers b
where o.entity_type='buyer'
  and o.entity_id=b.buyer_id
  and b.campaign='growth_pack_sales'
  and o.sent_at is null;
