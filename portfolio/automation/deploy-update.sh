#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

ENV_FILE="${1:-.env}"

if [ ! -f "$ENV_FILE" ]; then
  echo "$ENV_FILE is missing."
  exit 1
fi

if ! command -v git >/dev/null 2>&1; then
  echo "git is required."
  exit 1
fi
if ! command -v docker >/dev/null 2>&1; then
  echo "Docker is required."
  exit 1
fi

ROOT="$(git rev-parse --show-toplevel 2>/dev/null || true)"
if [ -z "$ROOT" ]; then
  echo "This checkout is not inside a Git repository."
  exit 1
fi

if ! git -C "$ROOT" diff --quiet || ! git -C "$ROOT" diff --cached --quiet; then
  echo "Refusing production update because tracked files have local changes."
  echo "Review git status first; this script never discards local work."
  exit 1
fi

BRANCH="$(git -C "$ROOT" branch --show-current)"
if [ -z "$BRANCH" ]; then
  echo "Refusing production update from a detached HEAD."
  exit 1
fi

git -C "$ROOT" fetch origin "$BRANCH" --quiet
LOCAL_SHA="$(git -C "$ROOT" rev-parse HEAD)"
REMOTE_SHA="$(git -C "$ROOT" rev-parse "origin/$BRANCH")"

SCHEDULER_WAS_RUNNING=false
if docker compose --env-file "$ENV_FILE" ps --status running --services 2>/dev/null | grep -qx scheduler; then
  SCHEDULER_WAS_RUNNING=true
fi

TUNNEL_WAS_RUNNING=false
if docker compose --env-file "$ENV_FILE" --profile tunnel ps --status running --services 2>/dev/null | grep -qx cloudflared; then
  TUNNEL_WAS_RUNNING=true
fi
if [ "$LOCAL_SHA" != "$REMOTE_SHA" ]; then
  echo "Production checkout is not at origin/$BRANCH."
  echo "Run: git -C \"$ROOT\" pull --ff-only"
  echo "Then rerun this script."
  exit 2
fi

env_value(){
  grep -m1 "^$1=" "$ENV_FILE" 2>/dev/null | cut -d= -f2-
}

# An approved maintenance deployment never grants campaign authorization.
for key in OUTREACH_ENABLED BUYER_OUTREACH_ENABLED GROWTH_OUTREACH_ENABLED; do
  [ "$(env_value "$key")" = "false" ] || { echo "Refusing deploy: $key must be OFF."; exit 1; }
done
python3 - "$ENV_FILE" <<'PYENV'
import pathlib,sys
p=pathlib.Path(sys.argv[1])
lines=p.read_text().splitlines()
lines=[line for line in lines if not line.startswith("BMC_OWNER_LAUNCH_HOLD=")]
lines.append("BMC_OWNER_LAUNCH_HOLD=true")
p.write_text("\n".join(lines)+"\n")
PYENV
echo "Owner launch hold is ON."
echo "Taking and verifying an isolated-restorable pre-migration backup..."
bash ./backup.sh "$ENV_FILE"
bash ./verify-backup.sh "$ENV_FILE"

echo "Deploying BMC commit: $LOCAL_SHA"
echo "Outreach switches are preserved exactly as configured:"
echo "  OUTREACH_ENABLED=$(env_value OUTREACH_ENABLED)"
echo "  BUYER_OUTREACH_ENABLED=$(env_value BUYER_OUTREACH_ENABLED)"
echo "  GROWTH_OUTREACH_ENABLED=$(env_value GROWTH_OUTREACH_ENABLED)"

echo
echo "Building the current Ops API image..."
docker compose --env-file "$ENV_FILE" build ops_api

echo
echo "Applying additive database migrations..."
bash ./migrate.sh "$ENV_FILE"

echo
echo "Recreating the API from the newly built image..."
docker compose --env-file "$ENV_FILE" up -d --force-recreate ops_api

echo
echo "Ensuring supporting services are up..."
docker compose --env-file "$ENV_FILE" up -d n8n
docker compose --env-file "$ENV_FILE" up -d --build research_refresher
# SearXNG reads settings.yml at process start. Recreate it so research-engine
# changes are guaranteed to become active on every tested deployment.
docker compose --env-file "$ENV_FILE" up -d --force-recreate searxng
# scheduler.sh is bind-mounted but the shell reads it only at container start.
# Recreate it only when it was running before this deployment. An intentionally
# stopped scheduler must stay stopped for safe maintenance/debugging.
if [ "$SCHEDULER_WAS_RUNNING" = "true" ]; then
  docker compose --env-file "$ENV_FILE" up -d --force-recreate scheduler
else
  echo "Scheduler was stopped before deployment; leaving it stopped."
fi

echo
echo "Refreshing the private webhook gateway after the API restart..."
docker compose --env-file "$ENV_FILE" up -d --force-recreate webhook_proxy

# Cloudflare disclosed a certificate trust issue fixed in cloudflared 2026.10.2+.
# The compose file pins 2026.10.3; explicitly pull and recreate a running tunnel
# so a cached pre-fix image cannot survive an otherwise successful deploy.
if [ "$TUNNEL_WAS_RUNNING" = "true" ]; then
  echo
  echo "Pulling and recreating the patched Cloudflare Tunnel connector..."
  docker compose --env-file "$ENV_FILE" --profile tunnel pull cloudflared
  docker compose --env-file "$ENV_FILE" --profile tunnel up -d --force-recreate --no-deps cloudflared
else
  echo "Cloudflare Tunnel was stopped before deployment; leaving it stopped."
fi

if [ "$(env_value LOCAL_AI_ENABLED)" = "true" ]; then
  docker compose --env-file "$ENV_FILE" --profile local-ai up -d ollama
fi

echo
docker compose --env-file "$ENV_FILE" ps

echo
echo "Running production health and launch-gate checks..."
bash ./runtime-doctor.sh "$ENV_FILE"

# No sudo escalation from the relay. Install via an already persistent user
# manager when available; report the access boundary explicitly otherwise.
if systemctl is-active --quiet bmc-operator-monitor.service; then
  echo "Existing system operator monitor service is active."
elif bash ./install-operator-monitor.sh --user; then
  echo "Private operator monitor service installed."
else
  echo "MONITOR INSTALL INCOMPLETE: backend checks passed; persistent private monitor service needs administrator installation."
fi
