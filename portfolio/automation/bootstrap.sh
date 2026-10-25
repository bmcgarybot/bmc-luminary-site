#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

if ! command -v docker >/dev/null 2>&1; then
  echo "Docker is required. Install Docker Engine + Compose plugin first."
  exit 1
fi

if [ ! -f .env ]; then
  cp .env.example .env
  python3 - <<'PY'
from pathlib import Path
import secrets
p=Path(".env")
s=p.read_text()
s=s.replace("CHANGE_ME_LONG_RANDOM_PASSWORD", secrets.token_urlsafe(32))
s=s.replace("CHANGE_ME_32_PLUS_RANDOM_CHARS", secrets.token_urlsafe(40))
s=s.replace("CHANGE_ME_LONG_RANDOM_ADMIN_KEY", secrets.token_urlsafe(40))
s=s.replace("CHANGE_ME_SEARXNG_SECRET", secrets.token_hex(32))
p.write_text(s)
print("Created .env with generated local secrets.")
print("Configure SMTP, Cloudflare, and BUSINESS_POSTAL_ADDRESS before public launch.")
PY
fi

docker compose build ops_api
docker compose up -d postgres
echo "Waiting for Postgres initialization/final startup..."
DBUSER="$(grep '^POSTGRES_USER=' .env | cut -d= -f2-)"
DBNAME="$(grep '^POSTGRES_DB=' .env | cut -d= -f2-)"

# On a brand-new volume the official Postgres entrypoint briefly starts a
# temporary server, then shuts it down before launching the final server.
# Waiting only for pg_isready can therefore race the first bootstrap.
for i in $(seq 1 60); do
  logs="$(docker compose logs --no-color postgres 2>&1 || true)"
  if printf '%s' "$logs" | grep -Eq 'PostgreSQL init process complete; ready for start up|Skipping initialization'; then
    break
  fi
  sleep 1
done

ready=0
for i in $(seq 1 60); do
  if docker compose exec -T postgres pg_isready -U "$DBUSER" -d "$DBNAME" >/dev/null 2>&1; then
    ready=$((ready+1))
    if [ "$ready" -ge 3 ]; then
      break
    fi
  else
    ready=0
  fi
  sleep 1
done

if [ "$ready" -lt 3 ]; then
  echo "Postgres did not reach a stable ready state."
  docker compose logs --tail=100 postgres
  exit 1
fi

for file in schema.sql seed-services.sql seed-vendors.sql seed-buyers.sql seed-outreach.sql seed-buyer-outreach.sql seed-growth-pack-sales.sql seed-first-wave.sql seed-products.sql seed-research.sql; do
  echo "Applying $file"
  docker compose exec -T postgres psql -v ON_ERROR_STOP=1 -U "$DBUSER" -d "$DBNAME" < "$file"
done

docker compose up -d ops_api n8n webhook_proxy scheduler searxng

echo "BMC core is running privately."
echo "n8n: http://localhost:5678"
echo "API health: http://localhost:8000/health"
echo "Research search: http://localhost:8888 (private/local only)"
echo "Optional AI: docker compose --profile local-ai up -d ollama"
echo "Public tunnel: docker compose --profile tunnel up -d cloudflared"
echo "OUTREACH_ENABLED remains false until explicitly changed."
echo
bash runtime-doctor.sh .env