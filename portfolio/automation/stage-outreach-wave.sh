#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

ENV_FILE="${1:-.env}"
SIDE="${2:-}"
WAVE="${3:-}"
LIMIT="${4:-25}"
MARKET="${5:-}"
FILTER="${6:-}"
MODE="${7:-preview}"

usage(){
  cat <<'EOF'
Usage:
  ./stage-outreach-wave.sh .env vendor launch1 25 "Prescott" commercial_cleaning preview
  ./stage-outreach-wave.sh .env buyer  launch1 25 "Prescott" facilities preview
  ./stage-outreach-wave.sh .env vendor launch1 25 "Prescott" commercial_cleaning --apply

This script stages researched prospects only. It NEVER sends email and it refuses to
run if any outbound switch is enabled. Existing unsent queued bootstrap rows may be
restaged into the named wave; sent/replied/completed history is never recycled.

Arguments:
  1 env file
  2 side: vendor | buyer
  3 wave name, e.g. launch1
  4 max records (1-100)
  5 optional market
  6 optional vendor service_key OR buyer campaign/service token
  7 preview (default) | --apply
EOF
}

[ -f "$ENV_FILE" ] || { echo "Missing $ENV_FILE"; exit 1; }
[ "$SIDE" = "vendor" ] || [ "$SIDE" = "buyer" ] || { usage; exit 2; }
[[ "$WAVE" =~ ^[A-Za-z0-9_-]+$ ]] || { echo "Wave must contain only letters, numbers, _ or -."; exit 2; }
[[ "$LIMIT" =~ ^[0-9]+$ ]] && [ "$LIMIT" -ge 1 ] && [ "$LIMIT" -le 100 ] || { echo "Limit must be 1-100."; exit 2; }
[[ "$FILTER" =~ ^[A-Za-z0-9_-]*$ ]] || { echo "Filter must be a service/campaign token."; exit 2; }
[ "$MODE" = "preview" ] || [ "$MODE" = "--apply" ] || { echo "Mode must be preview or --apply."; exit 2; }

env_value(){
  awk -F= -v key="$1" '$1==key {sub(/^[^=]*=/,""); print; exit}' "$ENV_FILE"
}

for key in OUTREACH_ENABLED BUYER_OUTREACH_ENABLED GROWTH_OUTREACH_ENABLED; do
  value="$(env_value "$key")"
  value="${value:-false}"
  if [ "$value" = "true" ]; then
    echo "Refusing to stage while $key=true. Turn all outbound sending OFF first."
    exit 3
  fi
done

DBUSER="$(env_value POSTGRES_USER)"
DBNAME="$(env_value POSTGRES_DB)"
[ -n "$DBUSER" ] && [ -n "$DBNAME" ] || { echo "POSTGRES_USER / POSTGRES_DB missing."; exit 1; }

psql_stdin(){
  docker compose --env-file "$ENV_FILE" exec -T postgres \
    psql -v ON_ERROR_STOP=1 -U "$DBUSER" -d "$DBNAME" \
    -v wave="$WAVE" -v lim="$LIMIT" -v market="$MARKET" -v filter="$FILTER" "$@"
}

if [ "$SIDE" = "vendor" ]; then
  SQL_CTE="$(cat <<'SQL'
with candidates as (
  select distinct on (lower(v.public_email))
    v.vendor_id entity_id,
    v.business_name,
    lower(v.public_email) public_email,
    coalesce(vm.market,'') market,
    coalesce(vs.service_key,'') service_or_campaign,
    coalesce(v.association_signal,'') signal,
    coalesce(v.quality_score,0) quality_score,
    oq.outreach_id existing_outreach_id,
    coalesce(oq.wave,'') existing_wave
  from vendors v
  left join lateral (
    select market from vendor_markets
    where vendor_id=v.vendor_id
      and (:'market'='' or market=:'market')
    order by market limit 1
  ) vm on true
  left join lateral (
    select service_key from vendor_services
    where vendor_id=v.vendor_id
      and (:'filter'='' or service_key=:'filter')
    order by service_key limit 1
  ) vs on true
  left join lateral (
    select outreach_id,wave
    from outreach
    where entity_type='vendor'
      and entity_id=v.vendor_id
      and campaign='vendor_recruitment'
      and status='queued'
      and sent_at is null
      and replied_at is null
      and opt_out=false
    order by created_at
    limit 1
  ) oq on true
  where v.status='prospect'
    and coalesce(v.public_email,'')<>''
    and (:'market'='' or vm.market is not null)
    and (:'filter'='' or vs.service_key is not null)
    and not exists(select 1 from outreach_suppressions s where lower(s.email)=lower(v.public_email))
    and not exists(
      select 1 from outreach o
      where o.entity_type='vendor'
        and o.entity_id=v.vendor_id
        and o.campaign='vendor_recruitment'
        and (
          o.sent_at is not null
          or o.replied_at is not null
          or o.opt_out=true
          or o.status not in ('queued')
        )
    )
  order by lower(v.public_email),
    case when coalesce(v.association_signal,'')<>'' then 0 else 1 end,
    v.quality_score desc nulls last,
    v.business_name
),
selected as (
  select * from candidates
  order by case when signal<>'' then 0 else 1 end,quality_score desc,business_name
  limit :lim
)
SQL
)"
else
  SQL_CTE="$(cat <<'SQL'
with candidates as (
  select distinct on (lower(b.public_email))
    b.buyer_id entity_id,
    b.business_name,
    lower(b.public_email) public_email,
    coalesce(b.market,'') market,
    coalesce(nullif(b.campaign,''),'buyer_general') service_or_campaign,
    coalesce(b.priority,'') signal,
    case when b.priority='A' then 100 when b.priority='B' then 50 else 0 end quality_score,
    oq.outreach_id existing_outreach_id,
    coalesce(oq.wave,'') existing_wave
  from buyers b
  left join lateral (
    select outreach_id,wave
    from outreach
    where entity_type='buyer'
      and entity_id=b.buyer_id
      and status='queued'
      and sent_at is null
      and replied_at is null
      and opt_out=false
    order by created_at
    limit 1
  ) oq on true
  where b.status in ('new','prospect')
    and coalesce(b.public_email,'')<>''
    and (:'market'='' or b.market=:'market')
    and (
      :'filter'=''
      or coalesce(b.campaign,'')=:'filter'
      or :'filter'=any(string_to_array(coalesce(b.likely_services,''),'|'))
    )
    and not exists(select 1 from outreach_suppressions s where lower(s.email)=lower(b.public_email))
    and not exists(
      select 1 from outreach o
      where o.entity_type='buyer'
        and o.entity_id=b.buyer_id
        and (
          o.sent_at is not null
          or o.replied_at is not null
          or o.opt_out=true
          or o.status not in ('queued')
        )
    )
  order by lower(b.public_email),
    case when b.priority='A' then 0 when b.priority='B' then 1 else 2 end,
    b.business_name
),
selected as (
  select * from candidates
  order by quality_score desc,business_name
  limit :lim
)
SQL
)"
fi

echo "BMC researched outreach wave staging"
echo "===================================="
echo "side=$SIDE wave=$WAVE limit=$LIMIT market=${MARKET:-ALL} filter=${FILTER:-ALL}"
echo "All outbound switches verified OFF."
echo

echo "Preview:"
printf '%s\n' "$SQL_CTE
select entity_id,business_name,public_email,market,service_or_campaign,
       case when existing_outreach_id is null then 'new' else 'restage:'||existing_wave end as staging_action
from selected order by quality_score desc,business_name;" | psql_stdin

COUNT="$(printf '%s\n' "$SQL_CTE
select count(*) from selected;" | psql_stdin -At)"
echo
echo "Eligible selected records: $COUNT"

if [ "$MODE" != "--apply" ]; then
  echo "Preview only. Nothing was staged."
  echo "Rerun with --apply as the final argument only after reviewing the preview."
  exit 0
fi

if [ "$COUNT" -eq 0 ]; then
  echo "Nothing eligible to stage."
  exit 0
fi

if [ "$SIDE" = "vendor" ]; then
  printf '%s\n' "$SQL_CTE
update outreach o
set wave=:'wave',
    sequence_step=0,
    status='queued',
    subject=null,
    body=null,
    next_followup_at=now(),
    opt_out=false,
    target_market=s.market,
    target_service_key=s.service_or_campaign
from selected s
where s.existing_outreach_id is not null
  and o.outreach_id=s.existing_outreach_id;

$SQL_CTE
insert into outreach(entity_type,entity_id,campaign,wave,channel,sequence_step,status,next_followup_at,opt_out,target_market,target_service_key)
select 'vendor',entity_id,'vendor_recruitment',:'wave','email',0,'queued',now(),false,market,service_or_campaign
from selected
where existing_outreach_id is null;" | psql_stdin
else
  printf '%s\n' "$SQL_CTE
update outreach o
set wave=:'wave',
    sequence_step=0,
    status='queued',
    subject=null,
    body=null,
    next_followup_at=now(),
    opt_out=false
from selected s
where s.existing_outreach_id is not null
  and o.outreach_id=s.existing_outreach_id;

$SQL_CTE
insert into outreach(entity_type,entity_id,campaign,wave,channel,sequence_step,status,next_followup_at,opt_out)
select 'buyer',entity_id,
       case when service_or_campaign='' then 'buyer_general' else service_or_campaign end,
       :'wave','email',0,'queued',now(),false
from selected
where existing_outreach_id is null;" | psql_stdin
fi

echo
echo "Prepared $COUNT records in wave '$WAVE' (new rows plus safe restaging of unsent queued rows)."
echo "No email was sent. Outbound switches remain OFF."
