#!/bin/sh
set -u

post(){
  endpoint="$1"
  timeout="${2:-120}"
  echo "[scheduler] POST $endpoint"
  curl --retry 4 --retry-all-errors --retry-delay 2 --max-time "$timeout" -fsS -X POST "http://ops_api:8000$endpoint" \
    -H "X-BMC-Admin-Key: ${BMC_ADMIN_KEY}" || echo "[scheduler] ERROR endpoint=$endpoint"
  echo
}

i=0
while true; do
  post /api/process-expired

  if [ $((i % 3)) -eq 0 ]; then
    post /api/agent-cycle
    post /api/process-research 240
  fi

  if [ $((i % 2)) -eq 0 ]; then
    post /api/process-market-inventory 240
  fi

  if [ $((i % 12)) -eq 0 ]; then
    post /api/process-followups
  fi

  if [ $((i % 2)) -eq 0 ]; then
    post /api/process-replies
  fi

  if [ $((i % 24)) -eq 0 ]; then
    post /api/process-public-opportunities 240
    post /api/process-outreach
    post /api/process-buyer-outreach
    post /api/process-growth-outreach
  fi

  if [ $((i % 6)) -eq 0 ]; then
    post /api/process-local-demand-signals 240
  fi

  if [ $((i % 12)) -eq 6 ]; then
    post /api/process-source-native-research 360
  fi

  i=$((i+1))
  sleep 300
done
