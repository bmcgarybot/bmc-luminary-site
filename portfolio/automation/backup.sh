#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p backups
STAMP="$(date +%Y%m%d_%H%M%S)"
DBUSER="$(grep '^POSTGRES_USER=' .env | cut -d= -f2-)"
DBNAME="$(grep '^POSTGRES_DB=' .env | cut -d= -f2-)"
docker compose exec -T postgres pg_dump -U "$DBUSER" -d "$DBNAME" -Fc > "backups/bmc_${STAMP}.dump"
find backups -type f -mtime +30 -delete
echo "Database backup complete: backups/bmc_${STAMP}.dump"