#!/usr/bin/env python3
"""Read-only state-specific release report. Exit 1 for strict incomplete launch."""
import argparse
from collections import Counter
from datetime import datetime, timezone
import json
from pathlib import Path
import sys
sys.path.insert(0,str(Path(__file__).resolve().parent/'api'))
import nevada_pilot as nv
ROOT=Path(__file__).resolve().parents[1]

def report():
    folder=ROOT/'data/states/NV'
    m=json.loads((folder/'census-manifest.json').read_text())
    primary=json.loads((folder/'primary-service-research.json').read_text())['records']
    lanes=[]
    for market in sorted(nv.MARKETS):
        for service in nv.CONFIG['services']:
            matching=[r for r in primary if market in r['markets'] and service['service_key'] in r['service_keys']]
            eligible=[r for r in matching if r['delivery_eligible'] and not r['licensing_hold']]
            lanes.append({'state_code':'NV','market':market,'service_key':service['service_key'],
                'primary_site_candidates':len(matching),'delivery_eligible':len(eligible),
                'status':'licensing_hold' if service['availability']=='licensing_hold' else 'needs_source_and_route_review',
                'consumer_minimum':3,'business_reserve_minimum':125})
    return {'state_code':'NV','generated_at':datetime.now(timezone.utc).isoformat(),
        'launch_ready':False,'runtime_verified':False,
        'census_records':sum(v['records'] for v in m['markets'].values()),
        'census_markets':m['markets'],'primary_site_businesses':len(primary),
        'public_business_email_candidates':sum(bool(r['public_business_email']) for r in primary),
        'catalog_services':len(nv.SERVICES),'lane_count':len(lanes),
        'blockers':['Owner review/release; exact email version not approved',
            'Nevada delivery-eligible inventory not yet qualified',
            'Separate Nevada Stripe payment mapping and signed-event fulfillment not implemented',
            'Nevada paid delivery proof not yet completed'],
        'regulated_categories':'Agency research only; no employee placement or personal-care intake/payment',
        'lanes':lanes}
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--strict',action='store_true');p.add_argument('--output',type=Path)
    args=p.parse_args();data=report();content=json.dumps(data,indent=2)+'\n'
    if args.output:args.output.write_text(content)
    else:print(content,end='')
    raise SystemExit(1 if args.strict and not data['launch_ready'] else 0)
