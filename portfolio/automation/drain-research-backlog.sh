#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

ENV_FILE="${1:-.env}"
MAX_ROUNDS="${2:-1000}"
SLEEP_SECONDS="${3:-1}"
SOURCE_NATIVE_MAX_ROUNDS="${SOURCE_NATIVE_MAX_ROUNDS:-250}"

if [ ! -f "$ENV_FILE" ]; then
  echo "Missing $ENV_FILE"
  exit 1
fi

env_value(){
  # Return an empty string, not a failing exit status, when an optional key
  # is absent. This script runs with set -euo pipefail.
  awk -F= -v key="$1" '$1==key {sub(/^[^=]*=/,""); print; exit}' "$ENV_FILE"
}

ADMIN_KEY="$(env_value BMC_ADMIN_KEY)"
DBUSER="$(env_value POSTGRES_USER)"
DBNAME="$(env_value POSTGRES_DB)"
ORIGINAL_BATCH="$(env_value RESEARCH_WORKER_BATCH)"
ORIGINAL_BATCH="${ORIGINAL_BATCH:-1}"
ORIGINAL_SOURCE_BATCH="$(env_value SOURCE_NATIVE_CHECK_BATCH)"
ORIGINAL_SOURCE_BATCH="${ORIGINAL_SOURCE_BATCH:-10}"

if [ -z "$ADMIN_KEY" ] || [ -z "$DBUSER" ] || [ -z "$DBNAME" ]; then
  echo "BMC_ADMIN_KEY, POSTGRES_USER, and POSTGRES_DB must be configured."
  exit 1
fi

for key in OUTREACH_ENABLED BUYER_OUTREACH_ENABLED GROWTH_OUTREACH_ENABLED; do
  value="$(env_value "$key")"
  value="${value:-false}"
  if [ "$value" = "true" ]; then
    echo "Refusing research drain while $key=true. Outreach must remain OFF."
    exit 1
  fi
done

dbq(){
  docker compose --env-file "$ENV_FILE" exec -T postgres     psql -v ON_ERROR_STOP=1 -U "$DBUSER" -d "$DBNAME" -Atc "$1"
}

set_env_key(){
  local key="$1"
  local value="$2"
  python3 - "$ENV_FILE" "$key" "$value" <<'PY'
from pathlib import Path
import sys
path=Path(sys.argv[1])
key=sys.argv[2]
value=sys.argv[3]
lines=path.read_text().splitlines()
out=[]
found=False
for line in lines:
    if line.startswith(key+"="):
        out.append(f"{key}={value}")
        found=True
    else:
        out.append(line)
if not found:
    out.append(f"{key}={value}")
path.write_text("\n".join(out)+"\n")
PY
  chmod 600 "$ENV_FILE"
}

restart_api_gateway(){
  docker compose --env-file "$ENV_FILE" up -d --force-recreate ops_api
  docker compose --env-file "$ENV_FILE" up -d --force-recreate webhook_proxy
}

cleanup(){
  changed=0
  if [ "$(env_value RESEARCH_WORKER_BATCH)" != "$ORIGINAL_BATCH" ]; then
    echo
    echo "Restoring RESEARCH_WORKER_BATCH=$ORIGINAL_BATCH"
    set_env_key RESEARCH_WORKER_BATCH "$ORIGINAL_BATCH"
    changed=1
  fi
  if [ "$(env_value SOURCE_NATIVE_CHECK_BATCH)" != "$ORIGINAL_SOURCE_BATCH" ]; then
    echo "Restoring SOURCE_NATIVE_CHECK_BATCH=$ORIGINAL_SOURCE_BATCH"
    set_env_key SOURCE_NATIVE_CHECK_BATCH "$ORIGINAL_SOURCE_BATCH"
    changed=1
  fi
  if [ "$changed" -eq 1 ]; then
    restart_api_gateway >/dev/null
  fi
}
trap cleanup EXIT INT TERM

echo "BMC research backlog drain"
echo "=========================="
echo "Outreach switches verified OFF."
echo "Temporarily using RESEARCH_WORKER_BATCH=5."
echo "Temporarily using SOURCE_NATIVE_CHECK_BATCH=4 for paced public API pulls."

set_env_key RESEARCH_WORKER_BATCH 5
set_env_key SOURCE_NATIVE_CHECK_BATCH 4

# app.py may have changed since the last deployment. Build once before the
# drain so recreating ops_api cannot silently reuse an older image.
docker compose --env-file "$ENV_FILE" build ops_api
restart_api_gateway

echo
echo "Phase 1: complete one source-native Arizona sweep"
native_stall=0
previous_marker=""
for round in $(seq 1 "$SOURCE_NATIVE_MAX_ROUNDS"); do
  pending="$(dbq "select count(*) from source_native_state where coalesce((metadata->>'expected')::boolean,false)=true and (last_run_at is null or coalesce(cursor,0)>0 or coalesce(metadata->>'last_error','')<>'');")"
  if [ "$pending" -eq 0 ]; then
    echo "Source-native sweep complete."
    break
  fi

  result="$(curl --max-time 360 -fsS -X POST http://127.0.0.1:8000/api/process-source-native-research     -H "X-BMC-Admin-Key: $ADMIN_KEY")"
  summary="$(printf '%s' "$result" | python3 -c 'import json,sys; d=json.load(sys.stdin); errs=d.get("errors",[]); ok=d.get("successful_lanes",[]); print("checks=%s seen=%s created=%s updated=%s errors=%s" % (d.get("source_checks",d.get("markets_checked",0)),d.get("records_seen",0),d.get("prospects_created",0),d.get("prospects_updated",0),len(errs))); [print("    OK %s · %s%s" % (x.get("source","?"),x.get("market","?")," · bulk" if x.get("bulk") else "")) for x in ok[:4]]; [print("    ERROR %s · %s · %s" % (e.get("source","adhs"),e.get("market","?"),e.get("error","")[:180])) for e in errs[:3]]')"
  now_pending="$(dbq "select count(*) from source_native_state where coalesce((metadata->>'expected')::boolean,false)=true and (last_run_at is null or coalesce(cursor,0)>0 or coalesce(metadata->>'last_error','')<>'');")"
  marker="$(dbq "select coalesce(sum(records_seen),0)||'|'||coalesce(sum(records_upserted),0)||'|'||coalesce(sum(cursor),0) from source_native_state where coalesce((metadata->>'expected')::boolean,false)=true;")"
  echo "  source round $round: pending_lanes=$now_pending · $summary"

  if [ "$marker" = "$previous_marker" ]; then native_stall=$((native_stall+1)); else native_stall=0; fi
  if [ "$native_stall" -ge 8 ]; then
    echo "Source-native sweep stopped after 8 rounds without record/cursor progress."
    break
  fi
  previous_marker="$marker"
  sleep "$SLEEP_SECONDS"
done

echo
echo "Phase 2: drain queued/assigned public-web research"
stall=0
for round in $(seq 1 "$MAX_ROUNDS"); do
  counts="$(dbq "select count(*) filter (where status='queued'), count(*) filter (where status='assigned') from research_backlog;")"
  queued="${counts%%|*}"
  assigned="${counts##*|}"
  if [ "$queued" -eq 0 ] && [ "$assigned" -eq 0 ]; then
    echo "Research queue drained."
    break
  fi

  agent="$(curl -fsS -X POST http://127.0.0.1:8000/api/agent-cycle     -H "X-BMC-Admin-Key: $ADMIN_KEY")"
  research="$(curl --max-time 180 -fsS -X POST http://127.0.0.1:8000/api/process-research     -H "X-BMC-Admin-Key: $ADMIN_KEY")"

  agent_created="$(printf '%s' "$agent" | python3 -c 'import json,sys; print(json.load(sys.stdin).get("research_tasks_created",0))')"
  summary="$(printf '%s' "$research" | python3 -c 'import json,sys; d=json.load(sys.stdin); print("processed=%s staged=%s promoted=%s errors=%s" % (d.get("processed",0),d.get("staged",0),d.get("auto_promoted",0),len(d.get("errors",[]))))')"
  processed="$(printf '%s' "$research" | python3 -c 'import json,sys; print(json.load(sys.stdin).get("processed",0))')"

  counts_after="$(dbq "select count(*) filter (where status='queued'), count(*) filter (where status='assigned') from research_backlog;")"
  q_after="${counts_after%%|*}"
  a_after="${counts_after##*|}"
  echo "  research round $round: queued=$q_after assigned=$a_after · assigned_now=$agent_created · $summary"

  if [ "$processed" -eq 0 ] && [ "$agent_created" -eq 0 ]; then
    stall=$((stall+1))
  else
    stall=0
  fi
  if [ "$stall" -ge 10 ]; then
    echo "Research drain stopped after 10 no-progress rounds. Inspect search/API errors before retrying."
    break
  fi
  sleep "$SLEEP_SECONDS"
done

echo
echo "Final research state"
dbq "select status,count(*) from research_backlog group by status order by status;"
echo
echo "Prospect totals"
dbq "select 'vendors',count(*) from vendors union all select 'buyers',count(*) from buyers union all select 'staged_candidates',count(*) from research_candidates where status='discovered';"

echo
bash ./runtime-doctor.sh "$ENV_FILE"
