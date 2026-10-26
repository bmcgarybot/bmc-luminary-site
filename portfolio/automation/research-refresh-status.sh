#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
ENV_FILE="${1:-.env}"

if [ ! -f "$ENV_FILE" ]; then
  echo "$ENV_FILE is missing."
  exit 1
fi

env_value(){
  grep -m1 "^$1=" "$ENV_FILE" 2>/dev/null | cut -d= -f2-
}

DBUSER="$(env_value POSTGRES_USER)"
DBNAME="$(env_value POSTGRES_DB)"

echo "BMC Docker research refresher"
docker compose --env-file "$ENV_FILE" ps research_refresher

echo
echo "Refresh source state:"
docker compose --env-file "$ENV_FILE" exec -T postgres   psql -U "$DBUSER" -d "$DBNAME" -Atc   "select source_key||'|'||coalesce(last_status,'')||'|started='||coalesce(last_started_at::text,'')||'|success='||coalesce(last_success_at::text,'')||'|failure='||coalesce(last_failure_at::text,'') from research_refresh_state order by source_key;" || true

echo
echo "Recent refresher log:"
docker compose --env-file "$ENV_FILE" logs --tail 40 --no-color research_refresher 2>/dev/null || true
