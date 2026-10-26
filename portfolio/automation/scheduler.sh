#!/bin/sh
set -u

i=0
while true; do
  curl -fsS -X POST http://ops_api:8000/api/process-expired \
    -H "X-BMC-Admin-Key: ${BMC_ADMIN_KEY}" || true

  if [ $((i % 3)) -eq 0 ]; then
    curl -fsS -X POST http://ops_api:8000/api/agent-cycle \
      -H "X-BMC-Admin-Key: ${BMC_ADMIN_KEY}" || true
    curl -fsS -X POST http://ops_api:8000/api/process-research \
      -H "X-BMC-Admin-Key: ${BMC_ADMIN_KEY}" || true
  fi

  # Deep market inventory is deliberately separate from the legacy gap queue.
  # Every 10 minutes it advances a bounded set of buyer-category and provider-service lanes.
  if [ $((i % 2)) -eq 0 ]; then
    curl --max-time 240 -fsS -X POST http://ops_api:8000/api/process-market-inventory \
      -H "X-BMC-Admin-Key: ${BMC_ADMIN_KEY}" || true
  fi

  if [ $((i % 12)) -eq 0 ]; then
    curl -fsS -X POST http://ops_api:8000/api/process-followups \
      -H "X-BMC-Admin-Key: ${BMC_ADMIN_KEY}" || true
  fi

  if [ $((i % 2)) -eq 0 ]; then
    curl -fsS -X POST http://ops_api:8000/api/process-replies \
      -H "X-BMC-Admin-Key: ${BMC_ADMIN_KEY}" || true
  fi

  if [ $((i % 24)) -eq 0 ]; then
    curl -fsS -X POST http://ops_api:8000/api/process-public-opportunities \
      -H "X-BMC-Admin-Key: ${BMC_ADMIN_KEY}" || true
    curl -fsS -X POST http://ops_api:8000/api/process-outreach \
      -H "X-BMC-Admin-Key: ${BMC_ADMIN_KEY}" || true
    curl -fsS -X POST http://ops_api:8000/api/process-buyer-outreach \
      -H "X-BMC-Admin-Key: ${BMC_ADMIN_KEY}" || true
    curl -fsS -X POST http://ops_api:8000/api/process-growth-outreach \
      -H "X-BMC-Admin-Key: ${BMC_ADMIN_KEY}" || true
  fi

  # Publicly indexed local-demand scan: every 30 minutes. The API processes
  # a bounded rotating batch of market x source x service-group lanes.
  if [ $((i % 6)) -eq 0 ]; then
    curl -fsS -X POST http://ops_api:8000/api/process-local-demand-signals \
      -H "X-BMC-Admin-Key: ${BMC_ADMIN_KEY}" || true
  fi

  # Bounded source-native authoritative buyer discovery: hourly, staggered from the main hourly work.
  # The API rotates the oldest source/market lanes so the full Arizona footprint refreshes without one giant request.
  if [ $((i % 12)) -eq 6 ]; then
    curl --max-time 360 -fsS -X POST http://ops_api:8000/api/process-source-native-research \
      -H "X-BMC-Admin-Key: ${BMC_ADMIN_KEY}" || true
  fi

  i=$((i+1))
  sleep 300
done
