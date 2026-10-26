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
if [ "$LOCAL_SHA" != "$REMOTE_SHA" ]; then
  echo "Production checkout is not at origin/$BRANCH."
  echo "Run: git -C \"$ROOT\" pull --ff-only"
  echo "Then rerun this script."
  exit 2
fi

env_value(){
  grep -m1 "^$1=" "$ENV_FILE" 2>/dev/null | cut -d= -f2-
}

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
docker compose --env-file "$ENV_FILE" up -d n8n scheduler searxng

echo
echo "Refreshing the private webhook gateway after the API restart..."
docker compose --env-file "$ENV_FILE" up -d --force-recreate webhook_proxy

if [ "$(env_value LOCAL_AI_ENABLED)" = "true" ]; then
  docker compose --env-file "$ENV_FILE" --profile local-ai up -d ollama
fi

echo
docker compose --env-file "$ENV_FILE" ps

echo
echo "Running production health and launch-gate checks..."
bash ./runtime-doctor.sh "$ENV_FILE"
