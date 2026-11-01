-- Nevada pilot is a separate namespace. No writes to AZ tables or shared revenue.
create schema if not exists nevada;
create table if not exists nevada.requests (
 request_id uuid primary key,
 state_code text not null default 'NV' check(state_code='NV'),
 market text not null check(market in ('Las Vegas','Henderson')),
 audience text not null check(audience in ('household','business')),
 service_key text not null,
 email text not null,
 business_name text not null default '',
 scope text not null default '',
 consent_at timestamptz not null default now(),
 consent_version text not null default 'nv-request-v1',
 status text not null default 'needs_review' check(status in ('needs_review','research_ready','awaiting_payment','paid','fulfilled','cancelled')),
 created_at timestamptz not null default now()
);
create index if not exists nv_request_email_time on nevada.requests(lower(email),created_at);
create table if not exists nevada.orders (
 order_id uuid primary key,
 request_id uuid not null references nevada.requests(request_id),
 state_code text not null default 'NV' check(state_code='NV'),
 product_key text not null check(product_key in ('nv_growth_pack_starter','nv_household_research')),
 stripe_session_id text unique not null,
 amount_cents integer not null check(amount_cents>0),
 currency text not null check(currency='usd'),
 status text not null default 'paid_needs_review',
 created_at timestamptz not null default now()
);
create table if not exists nevada.payment_events (
 stripe_event_id text primary key,
 stripe_session_id text not null,
 event_type text not null,
 status text not null,
 created_at timestamptz not null default now()
);
comment on schema nevada is 'NV pilot only. Employee placement held. No cross-state exports, cold household outreach or automatic provider approval.';
