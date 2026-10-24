#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
docker compose up -d postgres ops_api n8n webhook_proxy scheduler
docker compose ps