#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

ENV_FILE="${1:-.env}"

if [ ! -f "$ENV_FILE" ]; then
  echo "$ENV_FILE is missing."
  exit 1
fi

echo "BMC continuous research refresher"
running="$(docker compose --env-file "$ENV_FILE" ps --status running --services 2>/dev/null | grep -x research_refresher || true)"
if [ "$running" != "research_refresher" ]; then
  docker compose --env-file "$ENV_FILE" ps research_refresher || true
  echo "research_refresher is not running."
  exit 1
fi

docker compose --env-file "$ENV_FILE" ps research_refresher

dbuser="$(grep -m1 '^POSTGRES_USER=' "$ENV_FILE" 2>/dev/null | cut -d= -f2-)"
dbname="$(grep -m1 '^POSTGRES_DB=' "$ENV_FILE" 2>/dev/null | cut -d= -f2-)"

if [ -n "$dbuser" ] && [ -n "$dbname" ]; then
  echo
  echo "Database refresh cadence state:"
  docker compose --env-file "$ENV_FILE" exec -T postgres     psql -U "$dbuser" -d "$dbname" -P pager=off -c     "select source_key,last_started_at,last_success_at,last_failure_at,last_status,left(coalesce(last_error,''),180) as last_error from research_refresh_state order by source_key;"     2>/dev/null || true
fi

echo
echo "Recent refresher log:"
docker compose --env-file "$ENV_FILE" logs --tail=80 research_refresher 2>/dev/null || true
