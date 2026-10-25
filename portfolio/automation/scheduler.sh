#!/bin/sh
set -u

i=0
while true; do
  curl -fsS -X POST http://ops_api:8000/api/process-expired \
    -H "X-BMC-Admin-Key: ${BMC_ADMIN_KEY}" || true

  if [ $((i % 3)) -eq 0 ]; then
    curl -fsS -X POST http://ops_api:8000/api/agent-cycle \
      -H "X-BMC-Admin-Key: ${BMC_ADMIN_KEY}" || true
  fi

  if [ $((i % 12)) -eq 0 ]; then
    curl -fsS -X POST http://ops_api:8000/api/process-followups \
      -H "X-BMC-Admin-Key: ${BMC_ADMIN_KEY}" || true
    curl -fsS -X POST http://ops_api:8000/api/process-research \
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

  if [ $((i % 72)) -eq 0 ]; then
    curl -fsS -X POST http://ops_api:8000/api/process-local-demand-signals \
      -H "X-BMC-Admin-Key: ${BMC_ADMIN_KEY}" || true
  fi

  i=$((i+1))
  sleep 300
done
