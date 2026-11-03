#!/bin/sh
set -u

: "${DATABASE_URL:?DATABASE_URL is required}"

POLL_SECONDS="${RESEARCH_REFRESH_POLL_SECONDS:-900}"
DIRECTORY_INTERVAL="${DIRECTORY_REFRESH_INTERVAL_SECONDS:-86400}"
LICENSED_INTERVAL="${LICENSED_REFRESH_INTERVAL_SECONDS:-604800}"

dbq(){
  psql "$DATABASE_URL" -v ON_ERROR_STOP=1 -Atc "$1"
}

outbound_safe(){
  [ "${OUTREACH_ENABLED:-false}" = "false" ] &&
  [ "${BUYER_OUTREACH_ENABLED:-false}" = "false" ] &&
  [ "${GROWTH_OUTREACH_ENABLED:-false}" = "false" ]
}

is_due(){
  key="$1"
  interval="$2"
  dbq "select case when coalesce((select last_success_at from research_refresh_state where source_key='${key}'),'epoch'::timestamptz) < now()-make_interval(secs=>${interval}) then 'yes' else 'no' end;"
}

mark_started(){
  key="$1"
  dbq "insert into research_refresh_state(source_key,last_started_at,last_status,updated_at)
       values('${key}',now(),'running',now())
       on conflict(source_key) do update set last_started_at=now(),last_status='running',last_error=null,updated_at=now();" >/dev/null
}

mark_success(){
  key="$1"
  dbq "insert into research_refresh_state(source_key,last_started_at,last_success_at,last_status,updated_at)
       values('${key}',now(),now(),'success',now())
       on conflict(source_key) do update set last_success_at=now(),last_status='success',last_error=null,updated_at=now();" >/dev/null
}

mark_failure(){
  key="$1"
  dbq "insert into research_refresh_state(source_key,last_failure_at,last_status,last_error,updated_at)
       values('${key}',now(),'failed','refresh command failed',now())
       on conflict(source_key) do update set last_failure_at=now(),last_status='failed',last_error='refresh command failed',updated_at=now();" >/dev/null
}

run_directory(){
  # One resumable city batch, not a statewide all-in-memory crawl.
  dbq "update research_refresh_state set last_status='partitioned',last_error=null,updated_at=now() where source_key='directory_graph' and last_status<>'partitioned';" >/dev/null
  market="$(dbq "select market from (select p.market,max(s.last_started_at) started,max(s.last_status) status from market_inventory_progress p left join research_refresh_state s on s.source_key='directory_graph:'||p.market group by p.market) m where started is null or started<now()-make_interval(secs=>case when status='success' then ${DIRECTORY_INTERVAL} when status='failed' then 7200 else 900 end) order by started nulls first,case when market='Phoenix' then 0 when market in ('Prescott','Cottonwood','Camp Verde','Sedona') then 1 else 2 end,market limit 1;")"
  [ -n "$market" ] || return 0
  safe_market="$(printf '%s' "$market" | sed "s/'/''/g")"
  key="directory_graph:${safe_market}"
  mark_started "$key"
  echo "[research-refresher] bounded directory batch starting: $market"
  if python3 /app/assistant-directory-bootstrap.py /dev/null --markets "$market" --max-per-feed 100 --max-pages-per-market 12 --max-errors 4 --checkpoint-dir /var/lib/bmc-research/directory --stats-file /var/lib/bmc-research/directory-last.json --delay 0.35; then
    remaining="$(python3 -c 'import json; d=json.load(open("/var/lib/bmc-research/directory-last.json")); print(sum(v.get("pages_remaining_at_safety_ceiling",0) for v in d["by_market"].values()))')"
    if [ "$remaining" -eq 0 ]; then
      mark_success "$key"
    else
      dbq "update research_refresh_state set last_status='partial',last_error=null,updated_at=now() where source_key='${key}';" >/dev/null
    fi
    echo "[research-refresher] directory batch saved; pending pages: $remaining"
  else
    mark_failure "$key"
    echo "[research-refresher] source unavailable; saved cursor retained, city backs off for two hours"
  fi
}

run_licensed(){
  key="licensed_trades"
  if [ "$(is_due "$key" "$LICENSED_INTERVAL")" != "yes" ]; then return 0; fi
  echo "[research-refresher] licensed-trade refresh starting"
  mark_started "$key"
  if python3 /app/assistant-homversa-bootstrap.py /dev/null --delay 0.30; then
    mark_success "$key"
    echo "[research-refresher] licensed-trade refresh complete"
  else
    mark_failure "$key"
    echo "[research-refresher] licensed-trade refresh FAILED"
  fi
}

echo "[research-refresher] continuous public-source refresh service started"
while true; do
  if outbound_safe; then
    run_directory
    run_licensed
  else
    echo "[research-refresher] outbound switches are not all OFF; refusing research mutation"
  fi
  sleep "$POLL_SECONDS"
done
