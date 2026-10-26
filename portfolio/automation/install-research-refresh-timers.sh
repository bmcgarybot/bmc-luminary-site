#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
ENV_FILE="${1:-.env}"

if [ ! -f "$ENV_FILE" ]; then
  echo "$ENV_FILE is missing."
  exit 1
fi

echo "BMC research refresh is Docker-managed; no systemd/sudo installation is required."
docker compose --env-file "$ENV_FILE" up -d --build research_refresher
bash ./research-refresh-status.sh "$ENV_FILE"
