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

alter table buyers add column if not exists source_url text;
alter table buyers add column if not exists likely_services text;
alter table buyers add column if not exists priority text;
alter table buyers add column if not exists campaign text;

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
