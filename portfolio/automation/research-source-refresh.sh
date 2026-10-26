#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
ENV_FILE="${1:-.env}"
MODE="${2:-all}"

if [ ! -f "$ENV_FILE" ]; then
  echo "$ENV_FILE is missing."
  exit 1
fi

env_value(){
  grep -m1 "^$1=" "$ENV_FILE" 2>/dev/null | cut -d= -f2-
}

for key in OUTREACH_ENABLED BUYER_OUTREACH_ENABLED GROWTH_OUTREACH_ENABLED; do
  val="$(env_value "$key")"
  [ -n "$val" ] || val=false
  if [ "$val" != "false" ]; then
    echo "Refusing research refresh while $key=$val. Bulk refresh is research-only and should run with outbound disabled."
    exit 2
  fi
done

case "$MODE" in
  directory)
    python3 ./assistant-directory-bootstrap.py "$ENV_FILE" --max-per-feed 500 --max-pages-per-market 1500 --delay 0.20
    ;;
  licensed)
    python3 ./assistant-homversa-bootstrap.py "$ENV_FILE" --delay 0.30
    ;;
  all)
    python3 ./assistant-directory-bootstrap.py "$ENV_FILE" --max-per-feed 500 --max-pages-per-market 1500 --delay 0.20
    python3 ./assistant-homversa-bootstrap.py "$ENV_FILE" --delay 0.30
    ;;
  *)
    echo "Usage: $0 [env_file] [directory|licensed|all]"
    exit 64
    ;;
esac
