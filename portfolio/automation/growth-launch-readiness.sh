#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
ENV_FILE="${1:-.env}"
MODE="${2:-strict}"
[ -f "$ENV_FILE" ] || { echo "BLOCK missing $ENV_FILE"; exit 2; }

env_value(){ awk -F= -v key="$1" '$1==key {sub(/^[^=]*=/,""); print; exit}' "$ENV_FILE"; }
configured(){ [ -n "${1:-}" ] && [[ "$1" != *CHANGE_ME* ]]; }
failures=0; warnings=0
pass(){ printf 'PASS  %s\n' "$1"; }
warn(){ printf 'WARN  %s\n' "$1"; warnings=$((warnings+1)); }
fail(){ printf 'BLOCK %s\n' "$1"; failures=$((failures+1)); }

DBUSER="$(env_value POSTGRES_USER)"; DBNAME="$(env_value POSTGRES_DB)"
dbq(){ docker compose --env-file "$ENV_FILE" exec -T postgres psql -v ON_ERROR_STOP=1 -U "$DBUSER" -d "$DBNAME" -Atc "$1"; }

echo "BMC Growth launch readiness"
echo "==========================="
owner_hold="$(env_value BMC_OWNER_LAUNCH_HOLD)"
[ "$owner_hold" = "false" ] && pass "Owner launch hold explicitly released" || fail "Owner launch hold is active (default safe)"
current_sha="$(git rev-parse HEAD 2>/dev/null || echo unknown)"
echo "Commit: $current_sha"
configured_wave="$(env_value GROWTH_OUTREACH_WAVE)"
wave="$configured_wave"
if [ -z "$wave" ] || [ "$wave" = "growth1" ]; then wave="growth-pressure-1"; fi
echo "Selected launch wave: $wave"
if [ -n "$configured_wave" ] && [ "$configured_wave" != "$wave" ]; then
  warn "Legacy Growth wave '$configured_wave' will migrate to '$wave' when launch is enabled"
fi
echo

vendor="$(env_value OUTREACH_ENABLED)"; buyer="$(env_value BUYER_OUTREACH_ENABLED)"; growth="$(env_value GROWTH_OUTREACH_ENABLED)"
[ "${vendor:-false}" != "true" ] && pass "Service-Network provider outreach remains OFF" || fail "Provider outreach must remain OFF for Growth-only launch"
[ "${buyer:-false}" != "true" ] && pass "Service-Network buyer outreach remains OFF" || fail "Buyer outreach must remain OFF for Growth-only launch"

smtp_host="$(env_value SMTP_HOST)"; smtp_user="$(env_value SMTP_USER)"; smtp_pass="$(env_value SMTP_PASSWORD)"
imap_enabled="$(env_value IMAP_ENABLED)"; imap_host="$(env_value IMAP_HOST)"; imap_user="$(env_value IMAP_USER)"; imap_pass="$(env_value IMAP_PASSWORD)"
postal="$(env_value BUSINESS_POSTAL_ADDRESS)"
if configured "$smtp_host" && configured "$smtp_user" && configured "$smtp_pass"; then pass "SMTP is configured"; else fail "SMTP is incomplete"; fi
if [ "$imap_enabled" = "true" ] && configured "$imap_host" && configured "$imap_user" && configured "$imap_pass"; then pass "IMAP reply/opt-out monitoring is configured"; else fail "IMAP reply/opt-out monitoring is incomplete"; fi
configured "$postal" && pass "Business postal address is configured" || fail "Business postal address is missing"

owner_approved_sha="$(env_value GROWTH_OWNER_APPROVED_SHA)"
if [ -n "$owner_approved_sha" ] && [ "$owner_approved_sha" = "$current_sha" ]; then
  pass "Owner preview is approved for this exact deployed commit"
else
  fail "Owner preview is not approved for this exact deployed commit (approved=${owner_approved_sha:-none}, current=$current_sha)"
fi

for table in growth_experiment_cells growth_outreach_targets growth_sample_requests growth_sample_prospects growth_order_prospects growth_prospect_exposures growth_prospect_suppressions growth_source_rights_review; do
  exists="$(dbq "select count(*) from information_schema.tables where table_name='$table';")"
  [ "$exists" -eq 1 ] && pass "Database table $table is deployed" || fail "Database table $table is missing"
done

product="$(dbq "select count(*) from products where product_key='growth_pack_starter' and active=true and amount_cents=49900 and coalesce(payment_link_url,'')<>'';")"
[ "$product" -eq 1 ] && pass "Live \$499 Growth Pack payment link is mapped" || fail "Live \$499 Growth Pack mapping is not ready"
staged="$(dbq "select count(*) from outreach where entity_type='growth_customer' and campaign='growth_sales' and wave='$wave' and status in ('queued','sent') and opt_out=false and owner_review_required=false;")"
printf '  active staged Growth targets: %s\n' "$staged"
[ "$staged" -gt 0 ] && pass "Selected Growth wave has contactable staged targets" || fail "No staged targets exist for selected Growth wave"

bad_targets="$(dbq "select count(*) from growth_outreach_targets g where g.status not in ('suppressed','bad_fit') and (coalesce(g.public_email,'')='' or g.fit_score<65);")"
[ "$bad_targets" -eq 0 ] && pass "Staged Growth targets pass email/fit floor" || fail "$bad_targets Growth targets fail email/fit floor"

critical="$(dbq "select count(*) from exceptions where status='open' and severity='critical' and type like 'growth_%';")"
[ "$critical" -eq 0 ] && pass "No open critical Growth exceptions" || fail "$critical critical Growth exceptions are open"

ADMIN_KEY="$(env_value BMC_ADMIN_KEY)"
if configured "$ADMIN_KEY" && curl -fsS -X POST http://127.0.0.1:8000/api/admin/growth-status -H "X-BMC-Admin-Key: $ADMIN_KEY" >/tmp/bmc_growth_status.json; then
  pass "Private Growth status endpoint is healthy"
  python3 - <<'PY'
import json
d=json.load(open("/tmp/bmc_growth_status.json"))
print("Growth status:")
for k in ("growth_enabled","wave","daily_limit","sample_reserve","staged_active","sent","replies","samples_requested","samples_delivered","paid_orders","revenue_cents","open_growth_exceptions"):
    print(f"  {k}: {d.get(k)}")
PY
else
  fail "Private Growth status endpoint failed"
fi

if curl --max-time 20 -fsS https://bmcservicenetwork.com/growth-packs/pressure-washing/ >/tmp/bmc_growth_page.html 2>/dev/null   && grep -q 'data-form-type="growth_snapshot"' /tmp/bmc_growth_page.html   && grep -q '5 free' /tmp/bmc_growth_page.html; then
  pass "Live pressure-washing Growth landing page is reachable and has the free-five form"
else
  fail "Live pressure-washing Growth landing page is missing/stale/unreachable"
fi

if curl --max-time 20 -fsS https://bmcservicenetwork.com/growth-packs/ >/tmp/bmc_growth_hub.html 2>/dev/null   && grep -q 'Show me 5 free targets' /tmp/bmc_growth_hub.html; then
  pass "Live Growth hub uses the free-five conversion path"
else
  fail "Live Growth hub is missing/stale/unreachable"
fi

if curl --max-time 20 -fsS https://bmcservicenetwork.com/sitemap.xml >/tmp/bmc_growth_sitemap.xml 2>/dev/null   && grep -q 'growth-packs/pressure-washing/' /tmp/bmc_growth_sitemap.xml; then
  pass "Public sitemap contains the first Growth niche"
else
  fail "Public sitemap does not contain the first Growth niche"
fi

if bash ./verify-public-ingress.sh >/tmp/bmc_growth_ingress.txt 2>&1; then
  pass "Public webhook ingress is constrained and reachable"
else
  fail "Public webhook ingress verification failed"
fi

echo
echo "Growth audit summary: blockers=$failures warnings=$warnings"
if [ "$failures" -gt 0 ]; then
  echo "Growth lane is NOT ready to enable."
  [ "$MODE" = "report" ] && exit 0
  exit 2
fi
echo "Growth lane is ready. Enabling outbound still requires the explicit Growth launch action."
