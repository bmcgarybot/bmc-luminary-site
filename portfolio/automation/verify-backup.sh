#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

ENV_FILE="${1:-.env}"

if [ ! -f "$ENV_FILE" ]; then
  echo "The selected environment file is required."
  exit 1
fi

env_value(){
  grep -m1 "^$1=" "$ENV_FILE" 2>/dev/null | cut -d= -f2-
}

INSTANCE_KEY="$(env_value INSTANCE_KEY)"
INSTANCE_KEY="${INSTANCE_KEY:-bmc}"
BACKUP_DIR="$(env_value BACKUP_DIR)"
BACKUP_DIR="${BACKUP_DIR:-backups}"
DBUSER="$(env_value POSTGRES_USER)"

LATEST="$(ls -1t "$BACKUP_DIR"/"${INSTANCE_KEY}"_*.dump 2>/dev/null | head -n 1 || true)"
if [ -z "$LATEST" ]; then
  echo "No database dump found in $BACKUP_DIR. Run ./backup.sh first."
  exit 1
fi

CHECKSUM="${LATEST}.sha256"
if [ ! -f "$CHECKSUM" ]; then
  echo "Missing checksum file: $CHECKSUM"
  exit 1
fi

echo "Verifying checksum..."
sha256sum -c "$CHECKSUM"

TEST_DB="bmc_restore_test_$(date +%Y%m%d%H%M%S)"
cleanup(){
  docker compose --env-file "$ENV_FILE" exec -T postgres dropdb -U "$DBUSER" --if-exists "$TEST_DB" >/dev/null 2>&1 || true
}
trap cleanup EXIT

echo "Creating isolated restore-test database: $TEST_DB"
docker compose --env-file "$ENV_FILE" exec -T postgres createdb -U "$DBUSER" "$TEST_DB"

echo "Restoring $LATEST into isolated test database..."
cat "$LATEST" | docker compose --env-file "$ENV_FILE" exec -T postgres pg_restore   -U "$DBUSER"   -d "$TEST_DB"   --no-owner   --no-privileges   --exit-on-error

query(){
  docker compose --env-file "$ENV_FILE" exec -T postgres psql -U "$DBUSER" -d "$TEST_DB" -Atc "$1"
}

services="$(query 'select count(*) from services;')"
vendors="$(query 'select count(*) from vendors;')"
buyers="$(query 'select count(*) from buyers;')"
research="$(query 'select count(*) from research_backlog;')"

echo
echo "Restore verification counts:"
echo "  services: $services"
echo "  vendors:  $vendors"
echo "  buyers:   $buyers"
echo "  research: $research"

[ "$services" -ge 48 ] || { echo "FAIL  Service registry restore is incomplete."; exit 1; }
[ "$vendors" -ge 200 ] || { echo "FAIL  Vendor restore is unexpectedly small."; exit 1; }
[ "$buyers" -ge 150 ] || { echo "FAIL  Buyer restore is unexpectedly small."; exit 1; }
[ "$research" -ge 600 ] || { echo "FAIL  Research backlog restore is unexpectedly small."; exit 1; }

echo
echo "PASS  Backup checksum and isolated restore test succeeded."
echo "Production database was not modified."
