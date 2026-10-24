#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

if [ ! -f .env ]; then
  echo ".env is required."
  exit 1
fi

env_value(){
  grep -m1 "^$1=" .env 2>/dev/null | cut -d= -f2-
}

INSTANCE_KEY="$(env_value INSTANCE_KEY)"
INSTANCE_KEY="${INSTANCE_KEY:-bmc}"
BACKUP_DIR="$(env_value BACKUP_DIR)"
BACKUP_DIR="${BACKUP_DIR:-backups}"
RETENTION="$(env_value BACKUP_RETENTION_DAYS)"
RETENTION="${RETENTION:-30}"

mkdir -p "$BACKUP_DIR"
chmod 700 "$BACKUP_DIR" 2>/dev/null || true

STAMP="$(date +%Y%m%d_%H%M%S)"
DBUSER="$(env_value POSTGRES_USER)"
DBNAME="$(env_value POSTGRES_DB)"
OUT="$BACKUP_DIR/${INSTANCE_KEY}_${STAMP}.dump"

docker compose exec -T postgres pg_dump -U "$DBUSER" -d "$DBNAME" -Fc > "$OUT"
chmod 600 "$OUT"
sha256sum "$OUT" > "${OUT}.sha256"
chmod 600 "${OUT}.sha256"

find "$BACKUP_DIR" -type f \( -name "${INSTANCE_KEY}_*.dump" -o -name "${INSTANCE_KEY}_*.dump.sha256" \) -mtime +"$RETENTION" -delete

echo "Database backup complete: $OUT"
echo "Checksum: ${OUT}.sha256"
echo "Retention: $RETENTION days"
