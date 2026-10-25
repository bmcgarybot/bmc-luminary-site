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
if [ -z "$DBUSER" ] || [ -z "$DBNAME" ]; then
  echo "POSTGRES_USER and POSTGRES_DB must be set in $ENV_FILE"
  exit 1
fi

docker compose --env-file "$ENV_FILE" up -d postgres

ready=0
for i in $(seq 1 60); do
  if docker compose --env-file "$ENV_FILE" exec -T postgres pg_isready -U "$DBUSER" -d "$DBNAME" >/dev/null 2>&1; then
    ready=$((ready+1))
    if [ "$ready" -ge 3 ]; then break; fi
  else
    ready=0
  fi
  sleep 1
done
if [ "$ready" -lt 3 ]; then
  echo "Postgres did not reach a stable ready state."
  exit 1
fi

for file in schema.sql seed-services.sql seed-products.sql seed-research-sources.sql seed-research-scale.sql; do
  echo "Applying additive migration: $file"
  docker compose --env-file "$ENV_FILE" exec -T postgres psql -v ON_ERROR_STOP=1 -U "$DBUSER" -d "$DBNAME" < "$file"
done

echo "Additive BMC migrations applied."
