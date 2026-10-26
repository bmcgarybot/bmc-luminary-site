#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

ENV_FILE="${1:-.env}"
MODE="${2:-strict}"

if [ ! -f "$ENV_FILE" ]; then
  echo "$ENV_FILE is missing."
  exit 1
fi

env_value(){
  awk -F= -v key="$1" '$1==key {sub(/^[^=]*=/,""); print; exit}' "$ENV_FILE"
}

configured(){
  local value="$1"
  [ -n "$value" ] && [[ "$value" != *CHANGE_ME* ]]
}

effective_false(){
  local value="${1:-false}"
  [ "$value" != "true" ]
}

DBUSER="$(env_value POSTGRES_USER)"
DBNAME="$(env_value POSTGRES_DB)"
if [ -z "$DBUSER" ] || [ -z "$DBNAME" ]; then
  echo "POSTGRES_USER and POSTGRES_DB must be configured."
  exit 1
fi

dbq(){
  docker compose --env-file "$ENV_FILE" exec -T postgres     psql -v ON_ERROR_STOP=1 -U "$DBUSER" -d "$DBNAME" -Atc "$1"
}

failures=0
warns=0
pass(){ printf 'PASS  %s\n' "$1"; }
warn(){ printf 'WARN  %s\n' "$1"; warns=$((warns+1)); }
fail(){ printf 'BLOCK %s\n' "$1"; failures=$((failures+1)); }

echo "BMC launch readiness audit"
echo "=========================="
echo "Commit: $(git rev-parse HEAD 2>/dev/null || echo unknown)"
echo

vendor_switch="$(env_value OUTREACH_ENABLED)"
buyer_switch="$(env_value BUYER_OUTREACH_ENABLED)"
growth_switch="$(env_value GROWTH_OUTREACH_ENABLED)"

effective_false "$vendor_switch" && pass "Vendor outreach is OFF" || fail "Vendor outreach is ON before launch approval"
effective_false "$buyer_switch" && pass "Buyer outreach is OFF" || fail "Buyer outreach is ON before launch approval"
effective_false "$growth_switch" && pass "Growth Pack outreach is OFF" || fail "Growth Pack outreach is ON before launch approval"
[ -n "$growth_switch" ] || warn "GROWTH_OUTREACH_ENABLED is unset in .env (effective value is false)"

echo
echo "Research completion"
research_counts="$(dbq "select count(*) filter (where status='queued'),count(*) filter (where status='assigned') from research_backlog;")"
research_queued="${research_counts%%|*}"
research_assigned="${research_counts##*|}"
research_tasks="$(dbq "select count(*) from tasks where owner='research_agent' and status='open';")"
staged_candidates="$(dbq "select count(*) from research_candidates where status='discovered';")"
staged_candidate_email="$(dbq "select count(*) from research_candidates where status='discovered' and coalesce(evidence->>'public_email','')<>'';")"
staged_candidate_phone="$(dbq "select count(*) from research_candidates where status='discovered' and coalesce(evidence->>'public_phone','')<>'';")"
printf '  queued backlog: %s\n  assigned backlog: %s\n  open research tasks: %s\n  staged/review candidates: %s\n  staged candidates with email evidence: %s\n  staged candidates with phone evidence: %s\n' \
  "$research_queued" "$research_assigned" "$research_tasks" "$staged_candidates" "$staged_candidate_email" "$staged_candidate_phone"
if [ "$research_queued" -eq 0 ] && [ "$research_assigned" -eq 0 ] && [ "$research_tasks" -eq 0 ]; then
  pass "Research execution queue is fully drained"
else
  fail "Research execution is not fully drained"
fi

echo
echo "Vendor prospect pool"
vendor_stats="$(dbq "select
  count(*),
  count(*) filter (where status='prospect'),
  count(*) filter (where status='prospect' and coalesce(public_email,'')<>''),
  count(*) filter (where status='prospect' and coalesce(public_phone,'')<>''),
  count(*) filter (where status='prospect' and coalesce(website,'')<>''),
  count(*) filter (where status='prospect' and coalesce(public_email,'')='' and coalesce(public_phone,'')='' and coalesce(website,'')='' and coalesce(source_url,'')='')
from vendors;")"
IFS='|' read -r vendor_total vendor_prospect vendor_email vendor_phone vendor_site vendor_no_path <<<"$vendor_stats"
vendor_eligible="$(dbq "select count(*) from vendors v
  where v.status='prospect' and coalesce(v.public_email,'')<>''
    and not exists(select 1 from outreach_suppressions s where lower(s.email)=lower(v.public_email))
    and not exists(
      select 1 from outreach o
      where o.entity_type='vendor' and o.entity_id=v.vendor_id and o.campaign='vendor_recruitment'
        and (o.sent_at is not null or o.replied_at is not null or o.opt_out=true or o.status not in ('queued'))
    );")"
printf '  total vendors: %s\n  prospect status: %s\n  email-ready: %s\n  phone-ready: %s\n  website-ready: %s\n  no contact/source path: %s\n  stageable for a reviewed recruitment wave: %s\n'   "$vendor_total" "$vendor_prospect" "$vendor_email" "$vendor_phone" "$vendor_site" "$vendor_no_path" "$vendor_eligible"
if [ "$vendor_email" -gt 0 ]; then pass "At least one researched provider is email-contactable"; else fail "No researched provider has a public email"; fi
[ "$vendor_no_path" -eq 0 ] || warn "$vendor_no_path provider prospects have no stored contact/source path"

echo
echo "Buyer prospect pool"
buyer_stats="$(dbq "select
  count(*),
  count(*) filter (where status in ('new','prospect')),
  count(*) filter (where status in ('new','prospect') and coalesce(public_email,'')<>''),
  count(*) filter (where status in ('new','prospect') and coalesce(public_phone,'')<>''),
  count(*) filter (where status in ('new','prospect') and coalesce(website,'')<>''),
  count(*) filter (where status in ('new','prospect') and coalesce(public_email,'')='' and coalesce(public_phone,'')='' and coalesce(website,'')='' and coalesce(source_url,'')='')
from buyers;")"
IFS='|' read -r buyer_total buyer_prospect buyer_email buyer_phone buyer_site buyer_no_path <<<"$buyer_stats"
buyer_eligible="$(dbq "select count(*) from buyers b
  where b.status in ('new','prospect') and coalesce(b.public_email,'')<>''
    and not exists(select 1 from outreach_suppressions s where lower(s.email)=lower(b.public_email))
    and not exists(
      select 1 from outreach o
      where o.entity_type='buyer' and o.entity_id=b.buyer_id
        and (o.sent_at is not null or o.replied_at is not null or o.opt_out=true or o.status not in ('queued'))
    );")"
printf '  total buyers: %s\n  prospect/new status: %s\n  email-ready: %s\n  phone-ready: %s\n  website-ready: %s\n  no contact/source path: %s\n  stageable for a reviewed buyer wave: %s\n'   "$buyer_total" "$buyer_prospect" "$buyer_email" "$buyer_phone" "$buyer_site" "$buyer_no_path" "$buyer_eligible"
if [ "$buyer_email" -gt 0 ]; then pass "At least one researched buyer is email-contactable"; else warn "No researched buyer has a public email yet"; fi
[ "$buyer_no_path" -eq 0 ] || warn "$buyer_no_path buyer prospects have no stored contact/source path"

echo
echo "Contact hygiene"
suppressed="$(dbq "select count(*) from outreach_suppressions;")"
duplicate_groups="$(dbq "with e as (
  select lower(public_email) email from vendors where coalesce(public_email,'')<>''
  union all
  select lower(public_email) email from buyers where coalesce(public_email,'')<>''
) select count(*) from (select email from e group by email having count(*)>1) d;")"
invalid_vendor="$(dbq "select count(*) from vendors where coalesce(public_email,'')<>'' and public_email !~* '^[^[:space:]@]+@[^[:space:]@]+[.][^[:space:]@]+$';")"
invalid_buyer="$(dbq "select count(*) from buyers where coalesce(public_email,'')<>'' and public_email !~* '^[^[:space:]@]+@[^[:space:]@]+[.][^[:space:]@]+$';")"
printf '  suppressed emails: %s\n  duplicate email groups across vendor+buyer pools: %s\n  malformed vendor emails: %s\n  malformed buyer emails: %s\n'   "$suppressed" "$duplicate_groups" "$invalid_vendor" "$invalid_buyer"
[ "$invalid_vendor" -eq 0 ] && [ "$invalid_buyer" -eq 0 ] && pass "Stored outreach emails pass basic format checks" || fail "Malformed stored outreach emails require cleanup"
[ "$duplicate_groups" -eq 0 ] || warn "$duplicate_groups email addresses appear on multiple prospect records; wave staging must deduplicate them"

echo
echo "Current outreach staging"
dbq "select entity_type||'|'||campaign||'|'||coalesce(wave,'')||'|'||status||'|'||count(*)
     from outreach group by entity_type,campaign,wave,status
     order by entity_type,campaign,wave,status;" | while IFS='|' read -r side campaign wave status count; do
  printf '  %-6s %-24s wave=%-10s status=%-10s %s\n' "$side" "$campaign" "$wave" "$status" "$count"
done

pilot_vendors="$(dbq "select count(*) from vendors where status in ('pilot','active') and vendor_id not like 'test_%';")"
echo
echo "Provider coverage"
printf '  verified pilot/active providers: %s\n' "$pilot_vendors"
if [ "$pilot_vendors" -gt 0 ]; then
  pass "At least one verified provider can receive customer demand"
else
  warn "No verified provider is active yet; buyer service outreach must remain OFF"
fi

echo
echo "Infrastructure"
smtp_host="$(env_value SMTP_HOST)"; smtp_user="$(env_value SMTP_USER)"; smtp_pass="$(env_value SMTP_PASSWORD)"
imap_enabled="$(env_value IMAP_ENABLED)"; imap_host="$(env_value IMAP_HOST)"; imap_user="$(env_value IMAP_USER)"; imap_pass="$(env_value IMAP_PASSWORD)"
postal="$(env_value BUSINESS_POSTAL_ADDRESS)"
stripe_secret="$(env_value STRIPE_WEBHOOK_SECRET)"
infra_ready=1
if configured "$smtp_host" && configured "$smtp_user" && configured "$smtp_pass"; then pass "SMTP is configured"; else fail "SMTP is not fully configured"; infra_ready=0; fi
if [ "$imap_enabled" = "true" ] && configured "$imap_host" && configured "$imap_user" && configured "$imap_pass"; then pass "IMAP reply/opt-out monitoring is configured"; else fail "IMAP reply/opt-out monitoring is not fully configured"; infra_ready=0; fi
if configured "$postal"; then pass "Business postal address is configured"; else fail "Business postal address is not configured"; infra_ready=0; fi
if configured "$stripe_secret"; then pass "Stripe webhook secret is configured"; else fail "Stripe webhook secret is not configured"; fi

payment_links="$(dbq "select count(*) from products where active=true and coalesce(payment_link_url,'')<>'';")"
printf '  active products with payment links: %s\n' "$payment_links"
[ "$payment_links" -ge 4 ] && pass "Core paid research products have payment links" || fail "Expected four active paid product links"

echo
echo "Public surfaces"
static_ok=1
if curl --max-time 20 -fsS https://bmcservicenetwork.com/providers/ >/tmp/bmc_launch_providers.html 2>/dev/null; then
  pass "Providers page is publicly reachable"
else
  fail "Providers page is not publicly reachable from the VPS"
  static_ok=0
fi
if curl --max-time 20 -fsS https://bmcservicenetwork.com/sitemap.xml >/tmp/bmc_launch_sitemap.xml 2>/dev/null    && grep -q 'https://bmcservicenetwork.com/providers/' /tmp/bmc_launch_sitemap.xml; then
  pass "Public sitemap is reachable and contains /providers/"
else
  fail "Public sitemap/provider entry could not be verified"
  static_ok=0
fi
if curl --max-time 20 -fsS https://bmcservicenetwork.com/provider-pilot-activate/ >/tmp/bmc_launch_activate.html 2>/dev/null    && grep -Eq 'name="capacity"[^>]*required|required[^>]*name="capacity"' /tmp/bmc_launch_activate.html; then
  pass "Live provider activation page requires Current capacity"
else
  fail "Live provider activation capacity contract could not be verified"
  static_ok=0
fi
if bash ./verify-public-ingress.sh >/tmp/bmc_launch_ingress.txt 2>&1; then
  pass "Public webhook ingress is constrained and reachable"
else
  fail "Public webhook ingress verification failed"
  static_ok=0
fi

echo
echo "Launch-lane interpretation"
if [ "$research_queued" -eq 0 ] && [ "$research_assigned" -eq 0 ] && [ "$research_tasks" -eq 0 ]    && [ "$infra_ready" -eq 1 ] && [ "$static_ok" -eq 1 ] && effective_false "$vendor_switch"    && [ "$vendor_email" -gt 0 ]; then
  pass "Provider recruitment can be staged for explicit human approval"
else
  fail "Provider recruitment staging still has launch blockers"
fi

if [ "$pilot_vendors" -gt 0 ] && [ "$research_queued" -eq 0 ] && [ "$research_assigned" -eq 0 ]    && [ "$research_tasks" -eq 0 ] && [ "$infra_ready" -eq 1 ] && [ "$static_ok" -eq 1 ]    && effective_false "$buyer_switch" && [ "$buyer_email" -gt 0 ]; then
  pass "Buyer service outreach can be staged for explicit human approval"
else
  warn "Buyer service outreach is not ready yet (expected before first verified provider)"
fi

echo
echo "Audit summary: blockers=$failures warnings=$warns"
if [ "$failures" -gt 0 ]; then
  echo "BMC is NOT ready for outbound launch."
  [ "$MODE" = "report" ] && exit 0
  exit 2
fi

echo "BMC pre-outreach systems are ready. Outreach remains OFF until explicitly approved."
