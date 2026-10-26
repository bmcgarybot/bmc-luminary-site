#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

ENV_FILE="${1:-.env}"
[ -f "$ENV_FILE" ] || { echo "Missing $ENV_FILE"; exit 1; }

env_value(){
  awk -F= -v key="$1" '$1==key {sub(/^[^=]*=/,""); print; exit}' "$ENV_FILE"
}

DBUSER="$(env_value POSTGRES_USER)"
DBNAME="$(env_value POSTGRES_DB)"
[ -n "$DBUSER" ] && [ -n "$DBNAME" ] || { echo "POSTGRES_USER / POSTGRES_DB missing."; exit 1; }

dbq(){
  docker compose --env-file "$ENV_FILE" exec -T postgres     psql -v ON_ERROR_STOP=1 -U "$DBUSER" -d "$DBNAME" -Atc "$1"
}

section(){
  echo
  echo "================================================================"
  echo "$1"
  echo "================================================================"
}

echo "BMC PRODUCTION PROOF READOUT"
echo "Generated: $(date -Is)"
echo "Host: $(hostname)"
echo "Repo commit: $(git rev-parse HEAD 2>/dev/null || echo unknown)"
echo "Branch: $(git branch --show-current 2>/dev/null || echo unknown)"

section "1. OUTBOUND SAFETY"
for key in OUTREACH_ENABLED BUYER_OUTREACH_ENABLED GROWTH_OUTREACH_ENABLED; do
  value="$(env_value "$key")"; value="${value:-false}"
  printf '%-28s %s\n' "$key" "$value"
done
dbq "select 'outreach_total|'||count(*) from outreach
 union all select 'sent|'||count(*) from outreach where sent_at is not null
 union all select 'replied|'||count(*) from outreach where replied_at is not null
 union all select 'queued_unsent|'||count(*) from outreach where status='queued' and sent_at is null;"

section "2. LIVE DATABASE TOTALS"
dbq "select 'vendors|'||count(*) from vendors
 union all select 'buyers|'||count(*) from buyers
 union all select 'vendor_email_ready|'||count(*) from vendors where coalesce(public_email,'')<>''
 union all select 'buyer_email_ready|'||count(*) from buyers where coalesce(public_email,'')<>''
 union all select 'vendor_phone_ready|'||count(*) from vendors where coalesce(public_phone,'')<>''
 union all select 'buyer_phone_ready|'||count(*) from buyers where coalesce(public_phone,'')<>'';"

section "3. VENDORS BY MARKET"
dbq "select vm.market||'|'||count(distinct vm.vendor_id)
 from vendor_markets vm join vendors v on v.vendor_id=vm.vendor_id
 where v.vendor_id not like 'test_%' and v.vendor_id not like 'v_synthetic_%'
 group by vm.market order by vm.market;"

section "4. BUYERS BY MARKET"
dbq "select coalesce(nullif(market,''),'(blank)')||'|'||count(*)
 from buyers group by market order by market;"

section "5. LEGACY RESEARCH WORKER STATE"
dbq "select status||'|'||count(*) from research_backlog group by status order by status;"
dbq "select 'open_research_tasks|'||count(*) from tasks
 where owner='research_agent' and status in ('open','queued','assigned','in_progress');"
dbq "select 'staged_research_candidates|'||count(*) from research_candidates where status='discovered';"

section "6. DEEP MARKET INVENTORY TOTALS"
if [ "$(dbq "select count(*) from information_schema.tables where table_name='market_inventory_progress';")" -eq 1 ]; then
  dbq "select 'lanes|'||count(*) from market_inventory_progress
   union all select 'untouched|'||count(*) from market_inventory_progress where pages_scanned=0
   union all select 'in_progress|'||count(*) from market_inventory_progress where status='in_progress'
   union all select 'monitoring|'||count(*) from market_inventory_progress where status='monitoring'
   union all select 'errors|'||count(*) from market_inventory_progress where status='error'
   union all select 'first_cycle_complete|'||count(*) from market_inventory_progress where scan_cycles>0
   union all select 'total_scan_cycles|'||coalesce(sum(scan_cycles),0) from market_inventory_progress
   union all select 'candidate_rows_active_v7|'||count(*) from market_inventory_candidates where status='discovered' and query_strategy_version=7
   union all select 'candidate_rows_closed_v7|'||count(*) from market_inventory_candidates where status='closed' and query_strategy_version=7
   union all select 'official_candidate_rows_active_v7|'||count(*) from market_inventory_candidates where status='discovered' and query_strategy_version=7 and official_site=true
   union all select 'superseded_candidate_rows|'||count(*) from market_inventory_candidates where status like 'superseded_pre_v%'
   union all select 'candidate_email_ready_active_v7|'||count(*) from market_inventory_candidates where status='discovered' and query_strategy_version=7 and coalesce(public_email,'')<>''
   union all select 'candidate_phone_ready_active_v7|'||count(*) from market_inventory_candidates where status='discovered' and query_strategy_version=7 and coalesce(public_phone,'')<>'';"

  echo
  echo "Candidate evidence tiers:"
  dbq "select source_tier||'|'||verification_status||'|'||count(*)
    from market_inventory_candidates
    where status='discovered' and query_strategy_version=7
    group by source_tier,verification_status
    order by source_tier,verification_status;" || true

  echo
  echo "Active inventory by market and side (evidence rows vs normalized businesses):"
  dbq "select market||'|'||side||
      '|rows='||count(*)||
      '|businesses='||count(distinct lower(regexp_replace(coalesce(business_name,''),'[^a-z0-9]+','','g')))||
      '|direct='||count(*) filter (where official_site=true)
    from market_inventory_candidates
    where status='discovered' and query_strategy_version=7
    group by market,side
    order by market,side;" || true

  echo
  echo "Active inventory by category:"
  dbq "select side||'|'||category_key||'|'||category_label||
      '|rows='||count(*)||
      '|businesses='||count(distinct lower(regexp_replace(coalesce(business_name,''),'[^a-z0-9]+','','g')))||
      '|markets='||count(distinct market)
    from market_inventory_candidates
    where status='discovered' and query_strategy_version=7
    group by side,category_key,category_label
    order by side,category_key;" || true

  echo
  echo "Closed inventory by market and side:"
  dbq "select market||'|'||side||'|closed_rows='||count(*)
    from market_inventory_candidates
    where status='closed' and query_strategy_version=7
    group by market,side order by market,side;" || true

  echo
  echo "Recent active inventory sample:"
  dbq "select side||'|'||market||'|'||category_key||
      '|official='||coalesce(official_site,false)::text||'|'||
      left(regexp_replace(coalesce(business_name,''),'[[:space:]]+',' ','g'),120)||'|'||source_url
    from market_inventory_candidates
    where status='discovered' and query_strategy_version=7
    order by updated_at desc
    limit 25;" || true

  echo
  echo "Inventory coverage by market and side:"
  dbq "with p as (
      select market,side,count(*) lanes,
        count(*) filter (where pages_scanned>0) touched,
        count(*) filter (where scan_cycles>0) first_cycle_complete,
        coalesce(sum(scan_cycles),0) scan_cycles,
        coalesce(sum(official_candidates),0) direct_verified
      from market_inventory_progress
      group by market,side
    ), c as (
      select market,side,count(*) search_discovered
      from market_inventory_candidates
      where status='discovered' and query_strategy_version=7
      group by market,side
    ), b as (
      select vm.market,'vendor'::text side,count(distinct vm.vendor_id)::bigint base_records
      from vendor_markets vm join vendors v on v.vendor_id=vm.vendor_id
      where v.vendor_id not like 'test_%' and v.vendor_id not like 'v_synthetic_%'
      group by vm.market
      union all
      select market,'buyer'::text side,count(*)::bigint base_records
      from buyers where coalesce(market,'')<>'' group by market
    )
    select p.market||'|'||p.side||
      '|lanes='||p.lanes||
      '|touched='||p.touched||
      '|first_cycle='||p.first_cycle_complete||
      '|scan_cycles='||p.scan_cycles||
      '|base='||coalesce(b.base_records,0)||
      '|search_discovered='||coalesce(c.search_discovered,0)||
      '|direct_verified='||p.direct_verified
    from p
    left join c on c.market=p.market and c.side=p.side
    left join b on b.market=p.market and b.side=p.side
    order by p.market,p.side;"

  echo
  echo "Fully-scanned lanes with ZERO active discoveries:"
  dbq "select p.side||'|'||p.market||'|'||p.category_key||'|'||p.category_label
    from market_inventory_progress p
    where p.scan_cycles>0 and not exists (
      select 1 from market_inventory_candidates c
      where c.side=p.side and c.market=p.market and c.category_key=p.category_key
        and c.status='discovered'
    )
    order by p.side,p.market,p.category_key;" || true
else
  echo "market_inventory_progress table NOT DEPLOYED"
fi

section "7. PUBLIC LOCAL-DEMAND MONITOR COVERAGE"
if [ "$(dbq "select count(*) from information_schema.tables where table_name='local_demand_scan_state';")" -eq 1 ]; then
  dbq "select 'lanes|'||count(*) from local_demand_scan_state
   union all select 'touched|'||count(*) from local_demand_scan_state where scans>0
   union all select 'untouched|'||count(*) from local_demand_scan_state where scans=0
   union all select 'indexed_results_seen|'||coalesce(sum(results_seen),0) from local_demand_scan_state
   union all select 'signals_found|'||coalesce(sum(signals_found),0) from local_demand_scan_state;"

  echo
  echo "Demand coverage by source:"
  dbq "select source_key||'|'||source_name||
      '|lanes='||count(*)||
      '|touched='||count(*) filter (where scans>0)||
      '|results='||coalesce(sum(results_seen),0)||
      '|signals='||coalesce(sum(signals_found),0)
    from local_demand_scan_state
    group by source_key,source_name order by source_key;"

  echo
  echo "Demand coverage by market:"
  dbq "select market||
      '|lanes='||count(*)||
      '|touched='||count(*) filter (where scans>0)||
      '|results='||coalesce(sum(results_seen),0)||
      '|signals='||coalesce(sum(signals_found),0)
    from local_demand_scan_state
    group by market order by market;"
else
  echo "local_demand_scan_state table NOT DEPLOYED"
fi

section "8. CURRENT DEMAND SIGNALS"
dbq "select 'demand_signal_rows_active_v7|'||count(*) from local_demand_signals
 where status in ('discovered','useful') and query_strategy_version=7
 union all select 'superseded_demand_signal_rows|'||count(*) from local_demand_signals
 where status like 'superseded_pre_v%';" || true
dbq "select source_key||'|'||market||'|'||status||'|'||count(*)
 from local_demand_signals
 where query_strategy_version=7 and status in ('discovered','useful')
 group by source_key,market,status
 order by source_key,market,status;" || true

echo
echo "Active demand sample:"
dbq "select source_key||'|'||market||'|'||coalesce(service_key,'')||'|'||
    left(regexp_replace(coalesce(title,''),'[[:space:]]+',' ','g'),140)||'|'||source_url
  from local_demand_signals
  where query_strategy_version=7 and status in ('discovered','useful')
  order by last_seen_at desc
  limit 20;" || true

section "9. PUBLIC PROCUREMENT / CONTRACT OPPORTUNITIES"
dbq "select source_key||'|'||source_name||'|'||coalesce(market,'')||'|'||status||'|'||count(*)
 from public_opportunities
 group by source_key,source_name,market,status
 order by source_key,status;" || true

section "10. OUTREACH STAGING"
dbq "select entity_type||'|'||campaign||'|wave='||coalesce(wave,'')||
    '|status='||status||'|count='||count(*)
 from outreach
 group by entity_type,campaign,wave,status
 order by entity_type,campaign,wave,status;"

section "11. STRICT LAUNCH AUDIT"
bash ./launch-readiness.sh "$ENV_FILE" report

echo
echo "END BMC PRODUCTION PROOF READOUT"
