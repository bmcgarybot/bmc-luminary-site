#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

ENV_FILE="${1:-.env}"

if [ ! -f "$ENV_FILE" ]; then
  echo "$ENV_FILE is missing."
  exit 1
fi
if ! command -v docker >/dev/null 2>&1; then
  echo "Docker is required."
  exit 1
fi

env_value(){
  grep -m1 "^$1=" "$ENV_FILE" 2>/dev/null | cut -d= -f2-
}

for key in OUTREACH_ENABLED BUYER_OUTREACH_ENABLED GROWTH_OUTREACH_ENABLED; do
  val="$(env_value "$key")"
  [ -n "$val" ] || val=false
  if [ "$val" != "false" ]; then
    echo "Refusing to start continuous research while $key=$val."
    exit 2
  fi
done

echo "Starting Docker-managed continuous research refresher..."
docker compose --env-file "$ENV_FILE" up -d --build research_refresher

echo
echo "Research refresher status:"
docker compose --env-file "$ENV_FILE" ps research_refresher

echo
echo "The refresher checks every 15 minutes by default and uses database-backed cadence:"
echo "  directory graph: daily"
echo "  licensed trades: weekly"
echo "No sudo or separate host timer is required."
