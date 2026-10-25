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
