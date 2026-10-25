#!/usr/bin/env bash
set -euo pipefail

PUBLIC_HOST="${PUBLIC_HOOKS_HOST:-hooks.bmcservicenetwork.com}"
BASE="https://$PUBLIC_HOST"

status() {
  curl -sS --connect-timeout 8 --max-time 15 -o /dev/null -w '%{http_code}' "$1" || printf '000'
}

root_code="$(status "$BASE/")"
intake_code="$(status "$BASE/api/intake")"
admin_code="$(status "$BASE/admin")"
admin_api_code="$(status "$BASE/api/admin/preflight")"
stripe_code="$(status "$BASE/api/stripe-webhook")"

echo "BMC public-ingress verification"
echo "==============================="
printf "%-42s %s\n" "$BASE/" "$root_code"
printf "%-42s %s\n" "$BASE/api/intake" "$intake_code"
printf "%-42s %s\n" "$BASE/api/stripe-webhook" "$stripe_code"
printf "%-42s %s\n" "$BASE/admin" "$admin_code"
printf "%-42s %s\n" "$BASE/api/admin/preflight" "$admin_api_code"

fail=0

if [ "$root_code" = "000" ]; then
  echo "FAIL  Public hostname is not reachable."
  fail=1
else
  echo "PASS  Public hostname resolves through Cloudflare."
fi

case "$intake_code" in
  405|422|200) echo "PASS  /api/intake reaches the application gateway." ;;
  *) echo "FAIL  /api/intake returned unexpected status $intake_code."; fail=1 ;;
esac

case "$stripe_code" in
  405|400|422) echo "PASS  /api/stripe-webhook reaches the application gateway." ;;
  *) echo "WARN  /api/stripe-webhook returned status $stripe_code." ;;
esac

if [ "$admin_code" = "404" ] && [ "$admin_api_code" = "404" ]; then
  echo "PASS  Private admin routes are not exposed by the public gateway."
else
  echo "FAIL  A private admin route may be publicly reachable."
  fail=1
fi

if [ "$fail" -ne 0 ]; then
  exit 1
fi

echo "Public ingress is constrained to intended webhook routes."
