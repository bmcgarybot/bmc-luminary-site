#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

ENV_FILE="${ENV_FILE:-.env}"
MODE="${1:-status}"
VENDOR_ID="test_bmc_tree_provider"
VENDOR_NAME="BMC Synthetic Tree Co."
TEST_MARKET="__BMC_SYNTHETIC_TEST__"
SERVICE_KEY="tree_service"
TEST_PAGE="https://bmcservicenetwork.com/synthetic-e2e/"

if [ ! -f "$ENV_FILE" ]; then
  echo "Missing $ENV_FILE"
  exit 1
fi

env_value() {
  grep -m1 "^$1=" "$ENV_FILE" | cut -d= -f2-
}

DBUSER="$(env_value POSTGRES_USER)"
DBNAME="$(env_value POSTGRES_DB)"
TEST_EMAIL="$(env_value SMTP_FROM)"
[ -n "$TEST_EMAIL" ] || TEST_EMAIL="contact@bmcservicenetwork.com"

psql_cmd() {
  docker compose --env-file "$ENV_FILE" exec -T postgres psql -v ON_ERROR_STOP=1 -U "$DBUSER" -d "$DBNAME" "$@"
}

setup_provider() {
  psql_cmd <<SQL
begin;
insert into vendors(
  vendor_id,business_name,public_email,website,status,quality_score,
  territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes
) values(
  '$VENDOR_ID','$VENDOR_NAME','$TEST_EMAIL','https://bmcservicenetwork.com','pilot',999,
  '$TEST_MARKET only','Synthetic test only','Synthetic test only',
  'SYNTHETIC TEST - not a real credential','SYNTHETIC TEST - not a real COI',
  'SYNTHETIC TEST ONLY. Never use for real customer routing.'
)
on conflict(vendor_id) do update set
  business_name=excluded.business_name,
  public_email=excluded.public_email,
  website=excluded.website,
  status='pilot',
  quality_score=999,
  territory_notes=excluded.territory_notes,
  minimum_job=excluded.minimum_job,
  capacity=excluded.capacity,
  license_notes=excluded.license_notes,
  insurance_notes=excluded.insurance_notes,
  notes=excluded.notes,
  updated_at=now();

insert into vendor_services(vendor_id,service_key)
values('$VENDOR_ID','$SERVICE_KEY')
on conflict do nothing;

insert into vendor_markets(vendor_id,market)
values('$VENDOR_ID','$TEST_MARKET')
on conflict do nothing;
commit;
SQL
}

latest_lead_id() {
  psql_cmd -Atc "select lead_id from leads where market='$TEST_MARKET' order by submitted_at desc limit 1;"
}

status_report() {
  lid="$(latest_lead_id)"
  echo "Synthetic provider:"
  psql_cmd -P pager=off -c "select vendor_id,business_name,status,public_email,territory_notes from vendors where vendor_id='$VENDOR_ID';"
  echo
  if [ -z "$lid" ]; then
    echo "No synthetic customer request has been submitted yet."
    echo "Open: $TEST_PAGE"
    return 0
  fi
  echo "Latest synthetic lead:"
  psql_cmd -P pager=off -c "select lead_id,submitted_at,status,service_key,market,customer_name,email,scope from leads where lead_id='$lid'::uuid;"
  echo
  echo "Provider match:"
  psql_cmd -P pager=off -c "select vendor_id,status,offered_at,responded_at,contacted_at,estimate_at,won_at,lost_at from lead_matches where lead_id='$lid'::uuid order by offered_at;"
  token="$(psql_cmd -Atc "select response_token from lead_matches where lead_id='$lid'::uuid and vendor_id='$VENDOR_ID' order by offered_at desc limit 1;")"
  if [ -n "$token" ]; then
    echo
    echo "Provider response page:"
    echo "https://bmcservicenetwork.com/provider-response/?lead_id=$lid&vendor_id=$VENDOR_ID&token=$token"
    echo
    echo "Job update page (works after provider accepts):"
    echo "https://bmcservicenetwork.com/provider-job-update/?lead_id=$lid&vendor_id=$VENDOR_ID&token=$token"
  fi
}

cleanup_test() {
  echo "Removing synthetic provider and synthetic test records only..."
  psql_cmd <<SQL
begin;
delete from tasks where lead_id in (select lead_id from leads where market='$TEST_MARKET');
delete from exceptions where lead_id in (select lead_id from leads where market='$TEST_MARKET') or vendor_id='$VENDOR_ID';
delete from revenue_events where lead_id in (select lead_id from leads where market='$TEST_MARKET') or vendor_id='$VENDOR_ID';
delete from events
 where (entity_type='lead' and entity_id in (select lead_id::text from leads where market='$TEST_MARKET'))
    or (entity_type='vendor' and entity_id='$VENDOR_ID');
delete from leads where market='$TEST_MARKET';
delete from vendors where vendor_id='$VENDOR_ID';
commit;
SQL
  echo "Synthetic test data removed."
}

case "$MODE" in
  setup)
    setup_provider
    echo
    echo "Synthetic provider ready."
    echo "Open this test-only page once Cloudflare Pages deploys the latest commit:"
    echo "$TEST_PAGE"
    echo
    echo "After submitting the fake customer request:"
    echo "  1. Check $TEST_EMAIL for the customer receipt and provider offer."
    echo "  2. Use the provider offer link to Accept or Decline."
    echo "  3. Run: bash ./synthetic-e2e-test.sh status"
    echo "  4. If accepted, use the job-update link to mark contacted / estimate / won / lost."
    ;;
  status)
    status_report
    ;;
  cleanup)
    cleanup_test
    ;;
  *)
    echo "Usage: bash ./synthetic-e2e-test.sh {setup|status|cleanup}"
    exit 2
    ;;
esac
