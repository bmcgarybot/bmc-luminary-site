#!/usr/bin/env bash
set -u
cd "$(dirname "$0")"

failures=0
warnings=0

pass(){ printf 'PASS  %s\n' "$1"; }
warn(){ printf 'WARN  %s\n' "$1"; warnings=$((warnings+1)); }
fail(){ printf 'FAIL  %s\n' "$1"; failures=$((failures+1)); }

env_value(){
  local key="$1"
  grep -m1 "^\${key}=" .env 2>/dev/null | cut -d= -f2-
}

echo "BMC runtime doctor"
echo "=================="

if command -v docker >/dev/null 2>&1; then
  pass "Docker command is installed"
else
  fail "Docker is not installed"
  echo "Core failures: $failures · warnings: $warnings"
  exit 1
fi

if docker compose version >/dev/null 2>&1; then
  pass "Docker Compose plugin is available"
else
  fail "Docker Compose plugin is unavailable"
fi

if [ -f .env ]; then
  pass ".env exists"
else
  fail ".env is missing; run ./bootstrap.sh first"
  echo "Core failures: $failures · warnings: $warnings"
  exit 1
fi

if [ "$(env_value OUTREACH_ENABLED)" = "false" ]; then
  pass "Vendor outreach global switch is OFF"
else
  fail "OUTREACH_ENABLED must remain false until BMC explicitly launches outreach"
fi

if [ "$(env_value BUYER_OUTREACH_ENABLED)" = "false" ]; then
  pass "Buyer outreach global switch is OFF"
else
  fail "BUYER_OUTREACH_ENABLED must remain false until BMC explicitly launches outreach"
fi

if [ "$(env_value OUTREACH_WAVE)" = "pilot1" ] && [ "$(env_value BUYER_OUTREACH_WAVE)" = "pilot1" ]; then
  pass "Outbound waves are restricted to pilot1"
else
  warn "One or both outbound wave selectors are not pilot1"
fi

if docker compose --env-file .env config >/dev/null 2>&1; then
  pass "Docker Compose configuration validates"
else
  fail "Docker Compose configuration does not validate"
fi

if curl -fsS http://127.0.0.1:8000/health >/tmp/bmc_runtime_health.json 2>/dev/null; then
  if python3 - <<'PY'
import json
d=json.load(open("/tmp/bmc_runtime_health.json"))
raise SystemExit(0 if d.get("ok") is True else 1)
PY
  then pass "Ops API health endpoint is OK"; else fail "Ops API health response is not OK"; fi
else
  fail "Ops API is not reachable at 127.0.0.1:8000"
fi

DBUSER="$(env_value POSTGRES_USER)"
DBNAME="$(env_value POSTGRES_DB)"
db_query(){
  docker compose --env-file .env exec -T postgres psql -U "$DBUSER" -d "$DBNAME" -Atc "$1" 2>/dev/null
}

if service_count="$(db_query 'select count(*) from services;' 2>/dev/null)"; then
  if [ "\${service_count:-0}" -ge 48 ]; then pass "Service registry seeded (\${service_count})"; else fail "Service registry has only \${service_count:-0} rows"; fi
else
  fail "Postgres query failed"
  service_count=0
fi

vendor_count="$(db_query 'select count(*) from vendors;' 2>/dev/null || echo 0)"
buyer_count="$(db_query 'select count(*) from buyers;' 2>/dev/null || echo 0)"
fw_vendor_count="$(db_query "select count(*) from outreach where entity_type='vendor' and wave='pilot1';" 2>/dev/null || echo 0)"
fw_buyer_count="$(db_query "select count(*) from outreach where entity_type='buyer' and wave='pilot1';" 2>/dev/null || echo 0)"
research_count="$(db_query "select count(*) from research_backlog where status='queued';" 2>/dev/null || echo 0)"

[ "\${vendor_count:-0}" -ge 200 ] && pass "Vendor research pool seeded (\${vendor_count})" || fail "Vendor research pool unexpectedly small (\${vendor_count:-0})"
[ "\${buyer_count:-0}" -ge 150 ] && pass "Buyer research pool seeded (\${buyer_count})" || fail "Buyer research pool unexpectedly small (\${buyer_count:-0})"
[ "\${fw_vendor_count:-0}" -eq 12 ] && pass "First Wave provider cohort is exactly 12" || fail "First Wave provider cohort is \${fw_vendor_count:-0}, expected 12"
[ "\${fw_buyer_count:-0}" -eq 7 ] && pass "First Wave buyer cohort is exactly 7" || fail "First Wave buyer cohort is \${fw_buyer_count:-0}, expected 7"
[ "\${research_count:-0}" -gt 0 ] && pass "Research backlog is seeded (\${research_count} queued)" || warn "Research backlog has no queued rows"

ADMIN_KEY="$(env_value BMC_ADMIN_KEY)"
if [ -n "$ADMIN_KEY" ] && [[ "$ADMIN_KEY" != *CHANGE_ME* ]]; then
  if curl -fsS http://127.0.0.1:8000/api/admin/preflight -H "X-BMC-Admin-Key: $ADMIN_KEY" >/tmp/bmc_runtime_preflight.json 2>/dev/null; then
    pass "Private admin preflight endpoint is reachable"
    python3 - <<'PY'
import json
d=json.load(open("/tmp/bmc_runtime_preflight.json"))
print("Launch gates:")
for k,v in d.get("gates",{}).items():
    print(f"  {k}: {'READY' if v else 'BLOCKED'}")
needs=d.get("next_required",[])
if needs:
    print("External/launch actions still required:")
    for item in needs:
        print(f"  - {item}")
else:
    print("No preflight actions remain.")
PY
  else
    fail "Private admin preflight endpoint failed"
  fi
else
  fail "BMC_ADMIN_KEY is missing or still a placeholder"
fi

for key in SMTP_HOST SMTP_USER SMTP_PASSWORD BUSINESS_POSTAL_ADDRESS CLOUDFLARE_TUNNEL_TOKEN STRIPE_WEBHOOK_SECRET; do
  value="$(env_value "$key")"
  if [ -z "$value" ] || [[ "$value" == *CHANGE_ME* ]]; then
    warn "$key is not configured yet"
  fi
done

if [ "$(env_value IMAP_ENABLED)" != "true" ]; then
  warn "IMAP reply polling is disabled"
fi

echo
echo "Core failures: $failures · warnings: $warnings"
if [ "$failures" -gt 0 ]; then
  exit 1
fi
echo "Core runtime is healthy. Warnings are launch/external configuration items."
