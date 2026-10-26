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
  key="directory_graph"
  if [ "$(is_due "$key" "$DIRECTORY_INTERVAL")" != "yes" ]; then return 0; fi
  echo "[research-refresher] directory refresh starting"
  mark_started "$key"
  if python3 /app/assistant-directory-bootstrap.py /dev/null --max-per-feed 500 --max-pages-per-market 1500 --delay 0.20; then
    mark_success "$key"
    echo "[research-refresher] directory refresh complete"
  else
    mark_failure "$key"
    echo "[research-refresher] directory refresh FAILED"
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
