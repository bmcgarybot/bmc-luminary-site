#!/usr/bin/env bash
set -u
cd "$(dirname "$0")"
ENV_FILE="${1:-.env}"

failures=0
warnings=0

pass(){ printf 'PASS  %s\n' "$1"; }
warn(){ printf 'WARN  %s\n' "$1"; warnings=$((warnings+1)); }
fail(){ printf 'FAIL  %s\n' "$1"; failures=$((failures+1)); }

env_value(){
  local key="$1"
  grep -m1 "^${key}=" "$ENV_FILE" 2>/dev/null | cut -d= -f2-
}

echo "BMC runtime doctor"
echo "=================="

DEPLOYMENT_TARGET="$(env_value DEPLOYMENT_TARGET)"
if [ "$DEPLOYMENT_TARGET" = "cloud-vps" ]; then
  pass "Deployment target is cloud-vps"
elif [ -n "$DEPLOYMENT_TARGET" ]; then
  warn "Deployment target is $DEPLOYMENT_TARGET (production design target is cloud-vps)"
else
  warn "DEPLOYMENT_TARGET is not set"
fi

if [ -r /proc/meminfo ]; then
  mem_kb="$(awk '/^MemTotal:/ {print $2}' /proc/meminfo)"
  mem_mb=$((${mem_kb:-0}/1024))
  if [ "$mem_mb" -ge 7168 ]; then
    pass "Host memory fits 8 GB production class (${mem_mb} MB visible)"
  elif [ "$mem_mb" -ge 4096 ]; then
    warn "Host has ${mem_mb} MB RAM; core may run but optional local AI should stay off"
  else
    warn "Host has only ${mem_mb} MB RAM; below intended production class"
  fi
fi

disk_kb="$(df -Pk . 2>/dev/null | awk 'NR==2 {print $4}')"
disk_gb=$((${disk_kb:-0}/1024/1024))
if [ "$disk_gb" -ge 20 ]; then
  pass "Working filesystem has ${disk_gb} GB free"
else
  warn "Working filesystem has only ${disk_gb} GB free"
fi

if command -v swapon >/dev/null 2>&1 && swapon --show --noheadings 2>/dev/null | grep -q .; then
  pass "Emergency swap is configured"
else
  warn "No swap detected; 2 GB emergency swap is recommended on the 8 GB VPS"
fi

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

if [ -f "$ENV_FILE" ]; then
  pass "$ENV_FILE exists"
else
  fail "$ENV_FILE is missing; run ./bootstrap.sh first"
  echo "Core failures: $failures · warnings: $warnings"
  exit 1
fi

PUBLIC_SITE_URL_VALUE="$(env_value PUBLIC_SITE_URL)"
if [ "$PUBLIC_SITE_URL_VALUE" = "https://bmcservicenetwork.com" ]; then
  pass "Public site URL is bmcservicenetwork.com"
else
  warn "PUBLIC_SITE_URL is '$PUBLIC_SITE_URL_VALUE'; expected https://bmcservicenetwork.com"
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

if docker compose --env-file "$ENV_FILE" config >/dev/null 2>&1; then
  pass "Docker Compose configuration validates"
else
  fail "Docker Compose configuration does not validate"
fi

api_health_ok=0
for i in $(seq 1 30); do
  if curl -fsS http://127.0.0.1:8000/health >/tmp/bmc_runtime_health.json 2>/dev/null; then
    if python3 - <<'PY'
import json
d=json.load(open("/tmp/bmc_runtime_health.json"))
raise SystemExit(0 if d.get("ok") is True else 1)
PY
    then
      api_health_ok=1
      break
    fi
  fi
  sleep 1
done

if [ "$api_health_ok" -eq 1 ]; then
  pass "Ops API health endpoint is OK"
else
  fail "Ops API is not healthy at 127.0.0.1:8000 after 30 seconds"
fi

DBUSER="$(env_value POSTGRES_USER)"
DBNAME="$(env_value POSTGRES_DB)"
db_query(){
  docker compose --env-file "$ENV_FILE" exec -T postgres psql -U "$DBUSER" -d "$DBNAME" -Atc "$1" 2>/dev/null
}

if service_count="$(db_query 'select count(*) from services;' 2>/dev/null)"; then
  if [ "${service_count:-0}" -ge 53 ]; then pass "Service registry seeded (${service_count})"; else fail "Service registry has only ${service_count:-0} rows; expected at least 53"; fi
else
  fail "Postgres query failed"
  service_count=0
fi

vendor_count="$(db_query 'select count(*) from vendors;' 2>/dev/null || echo 0)"
buyer_count="$(db_query 'select count(*) from buyers;' 2>/dev/null || echo 0)"
fw_vendor_count="$(db_query "select count(*) from outreach where entity_type='vendor' and wave='pilot1';" 2>/dev/null || echo 0)"
fw_buyer_count="$(db_query "select count(*) from outreach where entity_type='buyer' and wave='pilot1';" 2>/dev/null || echo 0)"
research_count="$(db_query "select count(*) from research_backlog where status='queued';" 2>/dev/null || echo 0)"

[ "${vendor_count:-0}" -ge 200 ] && pass "Vendor research pool seeded (${vendor_count})" || fail "Vendor research pool unexpectedly small (${vendor_count:-0})"
[ "${buyer_count:-0}" -ge 150 ] && pass "Buyer research pool seeded (${buyer_count})" || fail "Buyer research pool unexpectedly small (${buyer_count:-0})"
[ "${fw_vendor_count:-0}" -eq 12 ] && pass "First Wave provider cohort is exactly 12" || fail "First Wave provider cohort is ${fw_vendor_count:-0}, expected 12"
[ "${fw_buyer_count:-0}" -eq 7 ] && pass "First Wave buyer cohort is exactly 7" || fail "First Wave buyer cohort is ${fw_buyer_count:-0}, expected 7"
[ "${research_count:-0}" -gt 0 ] && pass "Research backlog is seeded (${research_count} queued)" || warn "Research backlog has no queued rows"

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

  if curl -fsS http://127.0.0.1:8000/api/admin/agent-status -H "X-BMC-Admin-Key: $ADMIN_KEY" >/tmp/bmc_runtime_agent.json 2>/dev/null; then
    pass "Private agent status endpoint is reachable"
    python3 - <<'PY'
import json
d=json.load(open("/tmp/bmc_runtime_agent.json"))
print("Agent:")
print(f"  enabled: {d.get('enabled')}")
print(f"  mode: {d.get('mode')}")
print(f"  external actions allowed: {d.get('external_actions_allowed')}")
q=d.get("queues",{})
print(f"  open agent tasks: {q.get('open_agent_tasks',0)}")
print(f"  research queued: {q.get('research_queued',0)}")
print(f"  research assigned: {q.get('research_assigned',0)}")
PY
  else
    fail "Private agent status endpoint failed"
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

if [ "$(env_value LOCAL_AI_ENABLED)" = "true" ]; then
  MODEL="$(env_value LOCAL_AI_MODEL)"
  if curl -fsS "http://127.0.0.1:11434/api/tags" >/tmp/bmc_ollama_tags.json 2>/dev/null; then
    pass "Local AI service is reachable"
    if python3 - "$MODEL" <<'PY'
import json,sys
model=sys.argv[1]
d=json.load(open("/tmp/bmc_ollama_tags.json"))
names=[(m.get("name") or m.get("model") or "") for m in d.get("models",[])]
raise SystemExit(0 if model in names else 1)
PY
    then
      pass "Configured local AI model is loaded ($MODEL)"
    else
      warn "Ollama is reachable but configured model '$MODEL' is not loaded"
    fi
  else
    warn "LOCAL_AI_ENABLED is true but Ollama is not running; deterministic classification remains available"
  fi

  if [ "$api_health_ok" -eq 1 ]; then
    if curl -fsS -X POST http://127.0.0.1:8000/api/service-search       -H 'Content-Type: application/json'       -d '{"query":"fix my fryer"}' >/tmp/bmc_runtime_search.json 2>/dev/null; then
      if python3 - <<'PY'
import json
d=json.load(open("/tmp/bmc_runtime_search.json"))
raise SystemExit(0 if (d.get("match") or {}).get("service_key")=="restaurant_equipment" else 1)
PY
      then
        pass "Intelligent service search maps 'fix my fryer' to restaurant equipment repair"
      else
        fail "Service search did not map 'fix my fryer' to restaurant_equipment"
      fi
    else
      fail "Public service-search API is not responding locally"
    fi
  fi
fi

if [ "$(env_value RESEARCH_SEARCH_ENABLED)" = "true" ]; then
  if curl -fsS "http://127.0.0.1:8888/config" >/tmp/bmc_research_search.json 2>/dev/null; then
    pass "Private research search is reachable"
  else
    warn "RESEARCH_SEARCH_ENABLED is true but private SearXNG is not reachable on 127.0.0.1:8888"
  fi
fi

if [ "$(env_value IMAP_ENABLED)" != "true" ]; then
  warn "IMAP reply polling is disabled"
fi

echo
echo "Core failures: $failures · warnings: $warnings"
if [ "$failures" -gt 0 ]; then
  exit 1
fi
echo "Core runtime is healthy. Warnings are launch/external configuration items."
