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
  # Proposal-only census research overlaps independent discovery; no mail or promotion.
  post /api/process-census-research 180 &
  census_pid=$!
  post /api/process-official-research 240
  # Revisit public channels across old and new territories every cycle.
  post /api/process-local-demand-signals 240
  post /api/process-public-contractor-ads 150
  wait "$census_pid" || true

  if [ $((i % 3)) -eq 0 ]; then
    post /api/agent-cycle
    post /api/process-research 240
    # Revenue lane watchdog: every 15 minutes. These endpoints are safe no-ops
    # while Growth outreach is disabled.
    post /api/process-growth-health
    post /api/process-growth-nurture
    post /api/process-growth-fulfillment 240
    post /api/process-growth-offers 240
    post /api/process-growth-offer-invitations
    post /api/process-growth-outreach
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
  fi

  if [ $((i % 6)) -eq 0 ]; then
    post /api/process-inventory-closure-audit 240
  fi

  if [ $((i % 12)) -eq 6 ]; then
    post /api/process-source-native-research 360
  fi

  i=$((i+1))
  sleep 300
done
