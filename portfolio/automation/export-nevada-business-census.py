#!/usr/bin/env python3
"""Full official-city discovery census. Never marks a registry record sales-ready.
Only whitelisted business fields are fetched. Home addresses, owner identities,
licensing contacts, and personal identity fields are deliberately not requested.
"""
import argparse
from collections import Counter
from datetime import datetime, timezone
import hashlib
import json
from pathlib import Path
import time
import urllib.parse
import urllib.request

SOURCES = {
    'las-vegas': {
        'market': 'Las Vegas',
        'url': 'https://mapdata.lasvegasnevada.gov/clvgis/rest/services/DevelopmentServices/Business_Licenses/MapServer/0',
        'where': "LICSTATUS='Active' AND UPPER(BUS_STATE)='NV' AND UPPER(BUS_CITY)='LAS VEGAS'",
        'fields': 'OBJECTID,BUS_NAME,DBANAME,BUS_CITY,BUS_STATE,LICENSENO,LICENSETYPEDESC,LICENSECATDESC,LICSTATUS,EXPDTTM,WITHINCITYLIMIT',
    },
    'henderson': {
        'market': 'Henderson',
        'url': 'https://maps.cityofhenderson.com/arcgis/rest/services/public/OpenDataGovernment/MapServer/0',
        'where': "STATUS IN ('Active','Active - Pending Renewal') AND LOCATION IN ('Commercial in COH','Residential in COH')",
        'fields': 'OBJECTID,CASENUMBER,DESCRIPTION,CASETYPE,CASEWORKCLASS,STATUS,EXPIREDATE,LOCATION',
    },
}

def query(source, **args):
    params = {'f':'json', 'where':source['where'], **args}
    url = source['url'] + '/query?' + urllib.parse.urlencode(params)
    for attempt in range(4):
        try:
            req = urllib.request.Request(url, headers={'User-Agent':'BMC-public-business-research/1.0'})
            with urllib.request.urlopen(req, timeout=60) as r:
                data=json.load(r)
            if 'error' in data: raise RuntimeError(data['error'])
            return data
        except Exception:
            if attempt == 3: raise
            time.sleep(attempt+1)

def normalize(slug, a, today):
    lv = slug == 'las-vegas'
    expiry = a.get('EXPDTTM') if lv else a.get('EXPIREDATE')
    try:
        dt = datetime.strptime(expiry, '%d-%b-%y').replace(tzinfo=timezone.utc) if lv else datetime.fromtimestamp(expiry/1000, timezone.utc)
        expired = dt.date().isoformat() < today
    except (TypeError, ValueError, OverflowError):
        expired = None
    return {
        'state_code':'NV', 'market':SOURCES[slug]['market'],
        'source_id':f"{slug}:{a['OBJECTID']}",
        'business_name':a.get('DBANAME') or a.get('BUS_NAME') if lv else a.get('DESCRIPTION'),
        'license_number':a.get('LICENSENO') if lv else a.get('CASENUMBER'),
        'source_category':a.get('LICENSECATDESC') or a.get('LICENSETYPEDESC') if lv else a.get('CASEWORKCLASS'),
        'source_status':a.get('LICSTATUS') if lv else a.get('STATUS'),
        'source_expiration':expiry,
        'expiry_precedes_retrieval':expired,
        'location_scope':a.get('WITHINCITYLIMIT') if lv else a.get('LOCATION'),
        'research_status':'discovery_only', 'delivery_eligible':False,
    }

def run(output, as_of):
    output.mkdir(parents=True, exist_ok=True)
    manifest = {'state_code':'NV','retrieved_at':datetime.now(timezone.utc).isoformat(),
        'as_of':as_of, 'record_semantics':'license/source records; not unique businesses, contactable prospects, operating proof, or approved providers',
        'commercial_reuse_review':'pending; use as discovery evidence, not a resale permission grant',
        'markets':{}, 'artifacts':[]}
    for slug, source in SOURCES.items():
        before = query(source, returnCountOnly='true')['count']
        rows=[]; ids=set()
        for offset in range(0,before,1000):
            data=query(source, outFields=source['fields'], returnGeometry='false',
                orderByFields='OBJECTID ASC', resultOffset=offset, resultRecordCount=1000)
            batch=[normalize(slug,f['attributes'],as_of) for f in data.get('features',[])]
            if not batch: raise RuntimeError(f'{slug}: truncated pagination at {offset}/{before}')
            for row in batch:
                if row['source_id'] in ids: raise RuntimeError('duplicate source ID; census changed during export')
                ids.add(row['source_id'])
            rows.extend(batch)
            print(f'{slug}: {len(rows)}/{before}',flush=True)
        after=query(source,returnCountOnly='true')['count']
        if len(rows)!=before or after!=before: raise RuntimeError(f'{slug}: source changed; retry export')
        manifest['markets'][slug]={'market':source['market'],'records':len(rows),
            'source_url':source['url'],'source_where':source['where'],
            'status_counts':dict(Counter(r['source_status'] for r in rows)),
            'past_expiration_records':sum(r['expiry_precedes_retrieval'] is True for r in rows),
            'delivery_eligible':0}
        for i in range(0,len(rows),1000):
            name=f'census-{slug}-{i//1000+1:03}.json'
            payload={'state_code':'NV','market':source['market'],'source_url':source['url'],
                'retrieved_at':manifest['retrieved_at'],'records':rows[i:i+1000]}
            content=(json.dumps(payload,ensure_ascii=False,separators=(',',':'))+'\n').encode()
            (output/name).write_bytes(content)
            manifest['artifacts'].append({'file':name,'records':len(payload['records']),
                'sha256':hashlib.sha256(content).hexdigest()})
    (output/'census-manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
    return manifest

if __name__=='__main__':
    p=argparse.ArgumentParser(); p.add_argument('--output-dir',type=Path,default=Path(__file__).resolve().parents[1]/'data/states/NV')
    p.add_argument('--as-of',default=datetime.now(timezone.utc).date().isoformat())
    args=p.parse_args(); print(json.dumps(run(args.output_dir,args.as_of)['markets'],indent=2))
