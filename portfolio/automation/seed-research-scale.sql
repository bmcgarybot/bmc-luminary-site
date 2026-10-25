-- Scale research depth for the Arizona operating footprint without resetting reviewed data.
-- Metro markets should build large prospect pools; regional markets remain broad enough for redundancy.

update research_backlog
set goal = greatest(goal,
  case
    when market in ('Phoenix','Scottsdale','Tucson') and side='vendor' then 25
    when market in ('Phoenix','Scottsdale','Tucson') and side='buyer' then 50
    when market in ('Prescott','Prescott Valley','Flagstaff','Sedona') and side='vendor' then 12
    when market in ('Prescott','Prescott Valley','Flagstaff','Sedona') and side='buyer' then 25
    when side='vendor' then 8
    else 15
  end),
  research_priority = case
    when market in ('Phoenix','Scottsdale','Tucson') then 'HIGH'
    else research_priority
  end,
  research_pass = case
    when coalesce(research_pass,0)=0 and last_attempt_at is not null then 1
    else coalesce(research_pass,0)
  end,
  updated_at=now();

update research_backlog
set target_gap=greatest(0,goal-current_count),
    status=case
      when coalesce(candidates_found,0) < goal
       and coalesce(research_pass,0) < 4
       and status in ('review','searched_no_results','completed')
      then 'queued'
      else status
    end,
    updated_at=now();


-- Recovered 2026-10-25 Arizona expansion: add smaller/regional markets as research coverage,
-- not as thin public SEO pages. Targets are deliberately below the large metros.
with market_targets(market,market_priority,vendor_goal,buyer_goal,research_priority) as (
  values
    ('Dewey-Humboldt','TIER2',6,12,'MEDIUM'),
    ('Mayer','TIER2',5,10,'MEDIUM'),
    ('Cordes Lakes','TIER2',4,8,'MEDIUM'),
    ('Williamson Valley','TIER2',4,8,'MEDIUM'),
    ('Ash Fork','TIER2',4,8,'MEDIUM'),
    ('Seligman','TIER2',4,8,'MEDIUM'),
    ('Skull Valley','TIER2',4,8,'MEDIUM'),
    ('Golden Valley','TIER2',5,10,'MEDIUM'),
    ('Bullhead City','TIER1',10,20,'HIGH')
),
vendor_services(service_key) as (
  values
    ('tree_service'),('landscaping'),('rural_property'),('junk_hauling'),
    ('handyman_repairs'),('residential_cleaning'),('towing_roadside'),
    ('auto_repair_shop'),('hvac_heat'),('electrical_service'),
    ('garage_door'),('pest_control')
)
insert into research_backlog(
  market,service_key,side,market_priority,target_gap,current_count,goal,
  research_priority,research_method,status,notes
)
select m.market,v.service_key,'vendor',m.market_priority,m.vendor_goal,0,m.vendor_goal,
       m.research_priority,'public business discovery','queued',
       'Arizona expansion market added from recovered owner research direction.'
from market_targets m cross join vendor_services v
join services s on s.service_key=v.service_key and s.is_active=true
on conflict(market,service_key,side) do update set
  market_priority=excluded.market_priority,
  goal=greatest(research_backlog.goal,excluded.goal),
  target_gap=greatest(0,greatest(research_backlog.goal,excluded.goal)-research_backlog.current_count),
  research_priority=excluded.research_priority,
  updated_at=now();

with market_targets(market,market_priority,vendor_goal,buyer_goal,research_priority) as (
  values
    ('Dewey-Humboldt','TIER2',6,12,'MEDIUM'),
    ('Mayer','TIER2',5,10,'MEDIUM'),
    ('Cordes Lakes','TIER2',4,8,'MEDIUM'),
    ('Williamson Valley','TIER2',4,8,'MEDIUM'),
    ('Ash Fork','TIER2',4,8,'MEDIUM'),
    ('Seligman','TIER2',4,8,'MEDIUM'),
    ('Skull Valley','TIER2',4,8,'MEDIUM'),
    ('Golden Valley','TIER2',5,10,'MEDIUM'),
    ('Bullhead City','TIER1',10,20,'HIGH')
),
buyer_services(service_key) as (
  values
    ('commercial_cleaning'),('facility_maintenance'),('hvac_heat'),
    ('electrical_service'),('locksmith_access'),('landscaping'),
    ('tree_service'),('pest_control'),('parking_lot'),('restaurant_equipment')
)
insert into research_backlog(
  market,service_key,side,market_priority,target_gap,current_count,goal,
  research_priority,research_method,status,notes
)
select m.market,b.service_key,'buyer',m.market_priority,m.buyer_goal,0,m.buyer_goal,
       m.research_priority,'B2B buyer discovery','queued',
       'Arizona expansion market added from recovered owner research direction.'
from market_targets m cross join buyer_services b
join services s on s.service_key=b.service_key and s.is_active=true
on conflict(market,service_key,side) do update set
  market_priority=excluded.market_priority,
  goal=greatest(research_backlog.goal,excluded.goal),
  target_gap=greatest(0,greatest(research_backlog.goal,excluded.goal)-research_backlog.current_count),
  research_priority=excluded.research_priority,
  updated_at=now();
