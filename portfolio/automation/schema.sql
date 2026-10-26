-- BMC Portfolio Core PostgreSQL schema
-- Designed for the deterministic ops API + n8n managed marketplace workflows.

create extension if not exists pgcrypto;

create table if not exists services (
  service_key text primary key,
  display_name text not null,
  category text,
  monetization text,
  live_front text,
  priority text default 'B',
  fulfillment_mode text default 'provider_match',
  is_active boolean default true,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

create table if not exists vendors (
  vendor_id text primary key,
  business_name text not null,
  public_email text,
  public_phone text,
  website text,
  source_url text,
  rating_signal text,
  status text default 'prospect',
  quality_score numeric,
  association_signal text,
  territory_notes text,
  minimum_job text,
  capacity text,
  after_hours text,
  license_notes text,
  insurance_notes text,
  notes text,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

create table if not exists vendor_services (
  vendor_id text references vendors(vendor_id) on delete cascade,
  service_key text references services(service_key) on delete cascade,
  primary key (vendor_id, service_key)
);

create table if not exists vendor_markets (
  vendor_id text references vendors(vendor_id) on delete cascade,
  market text not null,
  primary key (vendor_id, market)
);

create table if not exists buyers (
  buyer_id text primary key,
  business_name text not null,
  market text,
  buyer_type text,
  public_email text,
  public_phone text,
  website text,
  source_url text,
  likely_services text,
  priority text,
  campaign text,
  status text default 'prospect',
  notes text,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

create table if not exists leads (
  lead_id uuid primary key default gen_random_uuid(),
  parent_lead_id uuid references leads(lead_id) on delete cascade,
  submission_id text unique,
  submitted_at timestamptz default now(),
  form_type text not null,
  market text not null,
  service_key text not null,
  service_type text,
  customer_path text,
  customer_name text,
  business_name text,
  email text,
  phone text,
  preferred_contact text,
  scope text,
  urgency text,
  source_page text,
  consent boolean default false,
  lead_score integer default 0,
  status text default 'received',
  revenue_cents integer default 0,
  exception_reason text,
  raw_payload jsonb default '{}'::jsonb,
  updated_at timestamptz default now()
);

create index if not exists idx_leads_market_service_status
on leads (market, service_key, status);

create table if not exists lead_matches (
  match_id uuid primary key default gen_random_uuid(),
  lead_id uuid references leads(lead_id) on delete cascade,
  vendor_id text references vendors(vendor_id) on delete cascade,
  rank integer,
  status text default 'offered',
  response_token text unique,
  offered_at timestamptz default now(),
  expires_at timestamptz,
  responded_at timestamptz,
  contacted_at timestamptz,
  estimate_at timestamptz,
  won_at timestamptz,
  lost_at timestamptz,
  decline_reason text,
  quoted_amount_cents integer,
  bmc_fee_cents integer,
  last_followup_at timestamptz,
  unique (lead_id, vendor_id)
);

create index if not exists idx_lead_matches_offer_expiry
on lead_matches (status, expires_at);

create table if not exists vendor_portal_tokens (
  token_id uuid primary key default gen_random_uuid(),
  vendor_id text not null references vendors(vendor_id) on delete cascade,
  token_hash text not null unique,
  expires_at timestamptz not null,
  last_used_at timestamptz,
  revoked_at timestamptz,
  created_at timestamptz default now()
);

create index if not exists idx_vendor_portal_tokens_vendor
on vendor_portal_tokens(vendor_id,expires_at desc);

create table if not exists outreach (
  outreach_id uuid primary key default gen_random_uuid(),
  entity_type text not null,
  entity_id text not null,
  campaign text not null,
  wave text default 'backlog',
  channel text default 'email',
  sequence_step integer default 1,
  status text default 'queued',
  subject text,
  body text,
  sent_at timestamptz,
  replied_at timestamptz,
  reply_type text,
  next_followup_at timestamptz,
  opt_out boolean default false,
  created_at timestamptz default now()
);

create index if not exists idx_outreach_followup
on outreach (status, next_followup_at);

create table if not exists exceptions (
  exception_id uuid primary key default gen_random_uuid(),
  created_at timestamptz default now(),
  type text not null,
  lead_id uuid references leads(lead_id) on delete set null,
  vendor_id text references vendors(vendor_id) on delete set null,
  severity text default 'normal',
  status text default 'open',
  summary text,
  recommended_action text,
  resolved_at timestamptz,
  resolution text
);

create table if not exists events (
  event_id bigserial primary key,
  occurred_at timestamptz default now(),
  entity_type text not null,
  entity_id text not null,
  event_type text not null,
  actor text,
  payload jsonb default '{}'::jsonb
);

create table if not exists revenue_events (
  revenue_id uuid primary key default gen_random_uuid(),
  occurred_at timestamptz default now(),
  lead_id uuid references leads(lead_id) on delete set null,
  vendor_id text references vendors(vendor_id) on delete set null,
  service_key text,
  market text,
  model text,
  amount_cents integer not null,
  status text default 'earned',
  notes text
);

create table if not exists outreach_suppressions (
  email text primary key,
  reason text,
  source text,
  created_at timestamptz default now()
);

alter table leads add column if not exists parent_lead_id uuid references leads(lead_id) on delete cascade;
alter table leads add column if not exists customer_path text;

alter table buyers add column if not exists source_url text;
alter table buyers add column if not exists likely_services text;
alter table buyers add column if not exists priority text;
alter table buyers add column if not exists campaign text;
alter table buyers add column if not exists source_data jsonb default '{}'::jsonb;
alter table vendors add column if not exists source_data jsonb default '{}'::jsonb;

alter table vendors add column if not exists territory_notes text;
alter table vendors add column if not exists minimum_job text;
alter table vendors add column if not exists capacity text;
alter table vendors add column if not exists after_hours text;
alter table vendors add column if not exists license_notes text;
alter table vendors add column if not exists insurance_notes text;

alter table vendors add column if not exists source_url text;
alter table vendors add column if not exists rating_signal text;

create table if not exists products (
  product_key text primary key,
  service_key text references services(service_key) on delete set null,
  display_name text not null,
  billing_type text not null,
  amount_cents integer,
  currency text default 'usd',
  billing_interval text,
  stripe_product_id text,
  stripe_price_id text,
  stripe_payment_link_id text,
  payment_link_url text,
  active boolean default true,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

create table if not exists payment_events (
  stripe_event_id text primary key,
  event_type text not null,
  stripe_object_id text,
  product_key text references products(product_key) on delete set null,
  customer_email text,
  amount_cents integer,
  currency text,
  status text,
  raw_payload jsonb not null,
  processed_at timestamptz default now()
);

create table if not exists subscriptions (
  stripe_subscription_id text primary key,
  product_key text references products(product_key) on delete set null,
  customer_email text,
  vendor_id text references vendors(vendor_id) on delete set null,
  buyer_id text references buyers(buyer_id) on delete set null,
  status text,
  current_period_end timestamptz,
  cancel_at_period_end boolean default false,
  raw_payload jsonb not null,
  updated_at timestamptz default now()
);

create index if not exists idx_payment_events_product on payment_events(product_key,processed_at);
create index if not exists idx_subscriptions_status on subscriptions(status);

alter table outreach add column if not exists wave text default 'backlog';
alter table outreach add column if not exists target_market text;
alter table outreach add column if not exists target_service_key text;
create index if not exists idx_outreach_wave_status on outreach(entity_type,wave,status,next_followup_at);

alter table services add column if not exists fulfillment_mode text default 'provider_match';

create table if not exists orders (
  order_id uuid primary key default gen_random_uuid(),
  product_key text references products(product_key) on delete set null,
  stripe_checkout_session_id text unique,
  stripe_payment_intent_id text,
  customer_email text,
  amount_cents integer,
  currency text default 'usd',
  payment_status text,
  intake_submission_id text,
  lead_id uuid references leads(lead_id) on delete set null,
  status text default 'paid_needs_intake',
  raw_payload jsonb default '{}'::jsonb,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

create index if not exists idx_orders_status on orders(status,created_at);
create index if not exists idx_orders_email on orders(lower(customer_email));

create table if not exists tasks (
  task_id uuid primary key default gen_random_uuid(),
  lead_id uuid references leads(lead_id) on delete set null,
  order_id uuid references orders(order_id) on delete set null,
  service_key text references services(service_key) on delete set null,
  task_type text not null,
  status text default 'open',
  priority text default 'normal',
  owner text,
  summary text,
  due_at timestamptz,
  payload jsonb default '{}'::jsonb,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

create index if not exists idx_tasks_status_due on tasks(status,due_at);


create table if not exists agent_runs (
  run_id uuid primary key default gen_random_uuid(),
  started_at timestamptz default now(),
  completed_at timestamptz,
  status text default 'running',
  classified_leads integer default 0,
  review_tasks_created integer default 0,
  research_tasks_created integer default 0,
  actions jsonb default '[]'::jsonb,
  error text
);

create index if not exists idx_agent_runs_started
on agent_runs(started_at desc);

create table if not exists research_backlog (
  research_id uuid primary key default gen_random_uuid(),
  market text not null,
  service_key text references services(service_key) on delete cascade,
  side text not null check (side in ('vendor','buyer')),
  market_priority text not null,
  target_gap integer default 0,
  current_count integer default 0,
  goal integer default 0,
  research_priority text default 'MEDIUM',
  research_method text,
  status text default 'queued',
  last_attempt_at timestamptz,
  candidates_found integer default 0,
  notes text,
  created_at timestamptz default now(),
  updated_at timestamptz default now(),
  unique(market,service_key,side)
);

create index if not exists idx_research_backlog_queue
on research_backlog(status,market_priority,research_priority,market,service_key,side);

alter table research_backlog
  add column if not exists research_pass integer default 0;

create table if not exists research_sources (
  source_key text primary key,
  source_name text not null,
  side text not null check (side in ('vendor','buyer','both')),
  source_type text not null,
  market text,
  county text,
  source_domain text,
  source_url text not null,
  query_hint text,
  priority text default 'MEDIUM',
  is_active boolean default true,
  notes text,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

create index if not exists idx_research_sources_active
on research_sources(is_active,side,market,county,priority);

create table if not exists source_native_state (
  source_key text not null,
  market text not null,
  cursor integer default 0,
  last_run_at timestamptz,
  last_success_at timestamptz,
  last_source_date text,
  records_seen integer default 0,
  records_upserted integer default 0,
  metadata jsonb default '{}'::jsonb,
  created_at timestamptz default now(),
  updated_at timestamptz default now(),
  primary key(source_key,market)
);

create index if not exists idx_source_native_state_run
on source_native_state(source_key,last_success_at,market);

-- Normalize legacy research queue status casing so older databases remain compatible.
update research_backlog set status=lower(status)
where status is not null and status<>lower(status);


create table if not exists research_candidates (
  candidate_id uuid primary key default gen_random_uuid(),
  research_id uuid references research_backlog(research_id) on delete cascade,
  task_id uuid references tasks(task_id) on delete set null,
  side text not null check (side in ('vendor','buyer')),
  market text not null,
  service_key text references services(service_key) on delete set null,
  candidate_name text,
  source_title text,
  source_url text not null,
  source_domain text,
  snippet text,
  search_query text,
  source_rank integer,
  status text default 'discovered',
  evidence jsonb default '{}'::jsonb,
  created_at timestamptz default now(),
  updated_at timestamptz default now(),
  unique(research_id,source_url)
);

create index if not exists idx_research_candidates_review
on research_candidates(status,side,market,service_key,created_at);

create table if not exists public_opportunities (
  opportunity_id uuid primary key default gen_random_uuid(),
  source_key text not null,
  source_name text not null,
  market text,
  service_key text references services(service_key) on delete set null,
  title text not null,
  source_url text not null,
  source_domain text,
  snippet text,
  search_query text,
  status text default 'discovered',
  first_seen_at timestamptz default now(),
  last_seen_at timestamptz default now(),
  evidence jsonb default '{}'::jsonb,
  created_at timestamptz default now(),
  updated_at timestamptz default now(),
  unique(source_key,source_url)
);

create index if not exists idx_public_opportunities_review
on public_opportunities(status,market,service_key,last_seen_at desc);

create table if not exists local_demand_signals (
  signal_id uuid primary key default gen_random_uuid(),
  source_key text not null,
  source_name text not null,
  market text not null,
  service_key text references services(service_key) on delete set null,
  title text not null,
  source_url text not null,
  source_domain text,
  snippet text,
  search_query text,
  status text default 'discovered',
  first_seen_at timestamptz default now(),
  last_seen_at timestamptz default now(),
  evidence jsonb default '{}'::jsonb,
  created_at timestamptz default now(),
  updated_at timestamptz default now(),
  unique(source_key,market,source_url)
);

create index if not exists idx_local_demand_signals_review
on local_demand_signals(status,market,service_key,last_seen_at desc);


-- Deep market inventory is separate from the legacy service-gap research queue.
-- A drained worker queue never implies these coverage lanes are complete.
create table if not exists market_inventory_progress (
  side text not null check (side in ('vendor','buyer')),
  market text not null,
  category_key text not null,
  category_label text not null,
  target integer not null default 0,
  pages_scanned integer not null default 0,
  raw_results integer not null default 0,
  official_candidates integer not null default 0,
  promoted_records integer not null default 0,
  status text not null default 'not_started',
  last_run_at timestamptz,
  notes text,
  created_at timestamptz default now(),
  updated_at timestamptz default now(),
  primary key(side,market,category_key)
);

create table if not exists market_inventory_candidates (
  candidate_id uuid primary key default gen_random_uuid(),
  side text not null check (side in ('vendor','buyer')),
  market text not null,
  category_key text not null,
  category_label text not null,
  business_name text,
  source_url text not null,
  source_domain text,
  snippet text,
  search_query text,
  page_no integer,
  public_email text,
  public_phone text,
  official_site boolean default false,
  source_tier text not null default 'discovery',
  verification_status text not null default 'discovery',
  last_verified_at timestamptz,
  promoted_entity_id text,
  status text default 'discovered',
  evidence jsonb default '{}'::jsonb,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

-- Discovery sources such as chambers, registries and directory category pages can
-- legitimately support multiple distinct businesses from the same source URL.
-- Deduplicate the business/source pair, not the source URL alone.
alter table market_inventory_candidates
  drop constraint if exists market_inventory_candidates_side_market_category_key_source_url_key;
create unique index if not exists uq_market_inventory_candidate_business_source
on market_inventory_candidates(side,market,category_key,source_url,business_name);

alter table market_inventory_candidates add column if not exists source_tier text not null default 'discovery';
alter table market_inventory_candidates add column if not exists verification_status text not null default 'discovery';
alter table market_inventory_candidates add column if not exists last_verified_at timestamptz;
update market_inventory_candidates
set source_tier=case when official_site then 'direct' else coalesce(nullif(source_tier,''),'discovery') end,
    verification_status=case when official_site then 'direct_evidence' else coalesce(nullif(verification_status,''),'discovery') end
where source_tier is null or source_tier='' or verification_status is null or verification_status=''
   or (official_site and verification_status='discovery');

create index if not exists idx_market_inventory_progress_status
on market_inventory_progress(status,side,market,category_key);

create index if not exists idx_market_inventory_candidates_lane
on market_inventory_candidates(side,market,category_key,official_site,status);


alter table market_inventory_progress add column if not exists next_page integer default 1;
alter table market_inventory_progress add column if not exists query_variant integer default 0;
alter table market_inventory_progress add column if not exists no_progress_passes integer default 0;

-- Query strategy v2 uses simple human-style searches instead of over-restrictive
-- quoted phrases. Reset old scan counters once so v1 passes are not counted as
-- valid coverage; keep discovered candidates intact.
alter table market_inventory_progress add column if not exists query_strategy_version integer default 1;
update market_inventory_progress
set pages_scanned=0,
    raw_results=0,
    next_page=1,
    query_variant=0,
    no_progress_passes=0,
    status='not_started',
    last_run_at=null,
    notes='Reset for query strategy v2',
    query_strategy_version=2,
    updated_at=now()
where coalesce(query_strategy_version,1)<2;
alter table market_inventory_progress alter column query_strategy_version set default 2;

-- Strategy v3 removes results from an engine that returned unrelated content
-- and re-runs incomplete inventory using lane-level relevance filtering.
delete from market_inventory_candidates
where promoted_entity_id is null
  and lower(coalesce(evidence->>'search_engine',''))='bing';

update market_inventory_progress
set pages_scanned=0,
    raw_results=0,
    next_page=1,
    query_variant=0,
    no_progress_passes=0,
    status='not_started',
    last_run_at=null,
    notes='Reset for query strategy v3 relevance filtering',
    query_strategy_version=3,
    official_candidates=(
      select count(*) from market_inventory_candidates c
      where c.side=market_inventory_progress.side
        and c.market=market_inventory_progress.market
        and c.category_key=market_inventory_progress.category_key
        and c.official_site=true
    ),
    updated_at=now()
where coalesce(query_strategy_version,2)<3;
alter table market_inventory_progress alter column query_strategy_version set default 3;

create table if not exists local_demand_scan_state (
  source_key text not null,
  source_name text not null,
  source_domain text not null,
  market text not null,
  group_key text not null,
  group_label text not null,
  next_page integer default 1,
  scans integer default 0,
  results_seen integer default 0,
  signals_found integer default 0,
  no_progress_scans integer default 0,
  last_run_at timestamptz,
  last_error text,
  created_at timestamptz default now(),
  updated_at timestamptz default now(),
  primary key(source_key,market,group_key)
);

alter table local_demand_scan_state add column if not exists query_strategy_version integer default 1;
update local_demand_scan_state
set next_page=1,
    scans=0,
    results_seen=0,
    signals_found=0,
    no_progress_scans=0,
    last_run_at=null,
    last_error=null,
    query_strategy_version=2,
    updated_at=now()
where coalesce(query_strategy_version,1)<2;
alter table local_demand_scan_state alter column query_strategy_version set default 2;

create index if not exists idx_local_demand_scan_state_run
on local_demand_scan_state(last_run_at nulls first,source_key,market,group_key);


-- Query strategy v4 establishes a clean audited baseline. Historical candidates
-- remain available for review but do not count toward current coverage until they
-- are rediscovered under the current relevance and engine rules.
alter table market_inventory_candidates add column if not exists query_strategy_version integer;
update market_inventory_candidates
set query_strategy_version=3
where query_strategy_version is null;

update market_inventory_candidates
set status='superseded_pre_v4',
    evidence=evidence || jsonb_build_object(
      'superseded_reason','pre_v4_unverified_search_strategy',
      'superseded_at',now()
    ),
    updated_at=now()
where promoted_entity_id is null
  and query_strategy_version<4
  and status<>'superseded_pre_v4';

alter table market_inventory_candidates alter column query_strategy_version set default 4;

update market_inventory_progress
set pages_scanned=0,
    raw_results=0,
    official_candidates=0,
    next_page=1,
    query_variant=0,
    no_progress_passes=0,
    status='not_started',
    last_run_at=null,
    notes='Reset for query strategy v4 clean candidate baseline',
    query_strategy_version=4,
    updated_at=now()
where coalesce(query_strategy_version,3)<4;

alter table market_inventory_progress alter column query_strategy_version set default 4;

-- Demand coverage also restarts under the repaired search backend. Signals remain
-- preserved in local_demand_signals; only coverage counters are reset.
update local_demand_scan_state
set next_page=1,
    scans=0,
    results_seen=0,
    signals_found=0,
    no_progress_scans=0,
    last_run_at=null,
    last_error=null,
    query_strategy_version=4,
    updated_at=now()
where coalesce(query_strategy_version,2)<4;

alter table local_demand_scan_state alter column query_strategy_version set default 4;

-- Query strategy v5 requires explicit target-market evidence before a public
-- indexed result can be counted as a local-demand signal. Preserve historical
-- rows for audit, but quarantine unreviewed pre-v5 discoveries from clean data.
alter table local_demand_signals add column if not exists query_strategy_version integer;
update local_demand_signals
set query_strategy_version=4
where query_strategy_version is null;

update local_demand_signals
set status='superseded_pre_v5',
    evidence=evidence || jsonb_build_object(
      'superseded_reason','pre_v5_missing_market_relevance_verification',
      'superseded_at',now()
    ),
    updated_at=now()
where query_strategy_version<5
  and status='discovered';

alter table local_demand_signals alter column query_strategy_version set default 5;

update local_demand_scan_state
set next_page=1,
    scans=0,
    results_seen=0,
    signals_found=0,
    no_progress_scans=0,
    last_run_at=null,
    last_error=null,
    query_strategy_version=5,
    updated_at=now()
where coalesce(query_strategy_version,4)<5;

alter table local_demand_scan_state alter column query_strategy_version set default 5;

-- Inventory v5 and local-demand v6 require an exact normalized market phrase.
-- This prevents overlapping market names such as Prescott and Prescott Valley
-- from being counted in the wrong lane. Historical rows remain auditable.
update market_inventory_candidates
set status='superseded_pre_v5',
    evidence=evidence || jsonb_build_object(
      'superseded_reason','pre_v5_ambiguous_market_matching',
      'superseded_at',now()
    ),
    updated_at=now()
where promoted_entity_id is null
  and query_strategy_version<5
  and status='discovered';

alter table market_inventory_candidates alter column query_strategy_version set default 5;

update market_inventory_progress
set pages_scanned=0,
    raw_results=0,
    official_candidates=0,
    next_page=1,
    query_variant=0,
    no_progress_passes=0,
    status='not_started',
    last_run_at=null,
    notes='Reset for inventory query strategy v5 exact-market baseline',
    query_strategy_version=5,
    updated_at=now()
where coalesce(query_strategy_version,4)<5;

alter table market_inventory_progress alter column query_strategy_version set default 5;

-- Query strategy v6 uses the same exact-market matcher for public demand.
update local_demand_signals
set status='superseded_pre_v6',
    evidence=evidence || jsonb_build_object(
      'superseded_reason','pre_v6_ambiguous_market_matching',
      'superseded_at',now()
    ),
    updated_at=now()
where query_strategy_version<6
  and status='discovered';

alter table local_demand_signals alter column query_strategy_version set default 6;

update local_demand_scan_state
set next_page=1,
    scans=0,
    results_seen=0,
    signals_found=0,
    no_progress_scans=0,
    last_run_at=null,
    last_error=null,
    query_strategy_version=6,
    updated_at=now()
where coalesce(query_strategy_version,5)<6;

alter table local_demand_scan_state alter column query_strategy_version set default 6;

-- Inventory v6 rejects obvious directory/listicle pages from "official" coverage.
-- Local-demand v7 rejects job postings and provider self-promotion so only
-- genuine public request intent counts toward demand coverage.
update market_inventory_candidates
set status='superseded_pre_v6',
    evidence=evidence || jsonb_build_object(
      'superseded_reason','pre_v6_official_site_quality_filter',
      'superseded_at',now()
    ),
    updated_at=now()
where promoted_entity_id is null
  and query_strategy_version<6
  and status='discovered';

alter table market_inventory_candidates alter column query_strategy_version set default 6;

update market_inventory_progress
set pages_scanned=0,
    raw_results=0,
    official_candidates=0,
    next_page=1,
    query_variant=0,
    no_progress_passes=0,
    status='not_started',
    last_run_at=null,
    notes='Reset for inventory query strategy v6 direct-site quality baseline',
    query_strategy_version=6,
    updated_at=now()
where coalesce(query_strategy_version,5)<6;

alter table market_inventory_progress alter column query_strategy_version set default 6;

update local_demand_signals
set status='superseded_pre_v7',
    evidence=evidence || jsonb_build_object(
      'superseded_reason','pre_v7_job_or_provider_ad_filter',
      'superseded_at',now()
    ),
    updated_at=now()
where query_strategy_version<7
  and status='discovered';

alter table local_demand_signals alter column query_strategy_version set default 7;

update local_demand_scan_state
set next_page=1,
    scans=0,
    results_seen=0,
    signals_found=0,
    no_progress_scans=0,
    last_run_at=null,
    last_error=null,
    query_strategy_version=7,
    updated_at=now()
where coalesce(query_strategy_version,6)<7;

alter table local_demand_scan_state alter column query_strategy_version set default 7;

-- Inventory v7 broadens direct-site exclusions for marketplaces and directories
-- (real-estate portals, provider directories, travel aggregators, job boards).
update market_inventory_candidates
set status='superseded_pre_v7',
    evidence=evidence || jsonb_build_object(
      'superseded_reason','pre_v7_marketplace_directory_filter',
      'superseded_at',now()
    ),
    updated_at=now()
where promoted_entity_id is null
  and query_strategy_version<7
  and status='discovered';

alter table market_inventory_candidates alter column query_strategy_version set default 7;

update market_inventory_progress
set pages_scanned=0,
    raw_results=0,
    official_candidates=0,
    next_page=1,
    query_variant=0,
    no_progress_passes=0,
    status='not_started',
    last_run_at=null,
    notes='Reset for inventory query strategy v7 marketplace-directory baseline',
    query_strategy_version=7,
    updated_at=now()
where coalesce(query_strategy_version,6)<7;

alter table market_inventory_progress alter column query_strategy_version set default 7;




