#!/usr/bin/env python3
"""Collect documented no-auth KeywordTool guest questions; checkpoint and respect quotas."""
import argparse,datetime,hashlib,json,pathlib,urllib.request
ROOT=pathlib.Path(__file__).resolve().parents[1]
OUT=ROOT/'data/question-research'
def now():return datetime.datetime.now(datetime.timezone.utc).isoformat()
def rpc(name,args):
    req=urllib.request.Request('https://mcp.keywordtool.io/guest',data=json.dumps({'jsonrpc':'2.0','id':1,'method':'tools/call','params':{'name':name,'arguments':args}}).encode(),headers={'Content-Type':'application/json','Accept':'application/json, text/event-stream'})
    with urllib.request.urlopen(req,timeout=55) as r: raw=r.read().decode()
    if raw.startswith('event:') or raw.startswith('data:'):raw='\n'.join(x[6:] for x in raw.splitlines() if x.startswith('data: '))
    envelope=json.loads(raw)
    if 'error' in envelope:raise RuntimeError(str(envelope['error']))
    result=envelope['result']
    if 'structuredContent' in result:return result['structuredContent']
    return json.loads(next(x['text'] for x in result['content'] if x['type']=='text'))
def local_artifacts(check=False):
    """Build only from saved responses; check mode verifies every derived artifact offline."""
    seeds=json.loads((OUT/'local-query-seeds.json').read_text())
    manifest=json.loads((OUT/'local-collection-manifest.json').read_text())
    assert len({s['query'] for s in seeds})==len(seeds)
    assert len(manifest['queries'])==len(seeds)
    rows={};coverage=[]
    for seed in seeds:
        assert seed['country']=='United States' and seed['location_is_query_text_only'] is True
        q=seed['query'];relative='data/question-research/raw/'+hashlib.sha256(q.encode()).hexdigest()[:16]+'.json'
        path=ROOT/relative
        entry={'seed':q,'path':relative,'status':'pending','returned_count':None,
               'service_keys':seed['service_keys'],'query_location_text':seed['query_location_text']}
        if path.exists():
            raw=json.loads(path.read_text());args=raw['arguments'];response=raw['response']
            assert args['keyword']==q and args['country']=='United States' and args['language']=='English'
            assert args['type']=='questions' and response.get('success') is True
            data=response['data'];assert isinstance(data,list)
            entry.update(status='collected',returned_count=len(data))
            for item in data:
                keyword=item['string'];assert isinstance(keyword,str) and keyword.strip()
                provenance={'seed':q,'service_keys':seed['service_keys'],'query_location_text':seed['query_location_text'],'raw_path':relative}
                rows.setdefault(keyword,[]).append(provenance)
        coverage.append(entry)
    corpus={'source':'https://mcp.keywordtool.io/guest','country':'United States','language':'English',
            'location_is_query_text_only':True,'review_status':'unreviewed',
            'use':'Research only; no published pages or LLM training',
            'keywords':[{'keyword':k,'provenance':rows[k]} for k in sorted(rows)]}
    summary={'planned_seeds':len(seeds),'collected_seeds':sum(x['status']=='collected' for x in coverage),
             'pending_seeds':sum(x['status']=='pending' for x in coverage),
             'zero_result_seeds':sum(x['returned_count']==0 for x in coverage),
             'returned_rows':sum(x['returned_count'] or 0 for x in coverage),'unique_keyword_strings':len(rows),
             'coverage':coverage,'caveats':['US/English suggestions; city names occur only in query text.',
             'No measured city demand, volume, competition or CPC is inferred.',
             'Unreviewed suggestions may be irrelevant, fragments or statements; not all are questions.',
             'Pending seeds were not queried after the conservative local response budget was exhausted.',
             'Separate from the broad corpus; no publishing or LLM training.']}
    # Restore counts for all cached responses without any provider request.
    for item,entry in zip(manifest['queries'],coverage):
        assert item['seed']==entry['seed']
        if entry['status']=='collected':item.update(status='collected',returned_count=entry['returned_count'])
    artifacts={'local-keyword-corpus.json':corpus,'local-research-summary.json':summary,
               'local-collection-manifest.json':manifest}
    for name,value in artifacts.items():
        target=OUT/name
        if check:assert json.loads(target.read_text())==value, 'Artifact differs from raw inputs: '+name
        else:target.write_text(json.dumps(value,indent=2,ensure_ascii=False)+'\n')
    print(json.dumps({k:v for k,v in summary.items() if k not in ('coverage','caveats')}))

def main():
    p=argparse.ArgumentParser();p.add_argument('--max-calls',type=int,default=1);p.add_argument('--quota-only',action='store_true');p.add_argument('--local-seeds',action='store_true');p.add_argument('--build-local-artifacts',action='store_true');p.add_argument('--validate-local-artifacts',action='store_true');a=p.parse_args()
    if a.build_local_artifacts or a.validate_local_artifacts:
        local_artifacts(check=a.validate_local_artifacts);return
    OUT.mkdir(exist_ok=True);(OUT/'raw').mkdir(exist_ok=True)
    quota=rpc('keywordtool-quota-guest',{})
    # Do not persist IP identifiers, session headers or tokens.
    print(json.dumps({'quota':quota}),flush=True)
    if a.quota_only:return
    limits=quota.get('quota_info',{}).get('limits',{})
    allowance=min(limits.get('hourly',{}).get('remaining',0),limits.get('daily',{}).get('remaining',0))
    # Conservative local ledger as well as the server quota; cached suggestions
    # also count here, so a reset in the server's counter cannot expand this run.
    collected=[]
    for file in (OUT/'raw').glob('*.json'):
        try:collected.append(datetime.datetime.fromisoformat(json.loads(file.read_text())['retrieved_at']))
        except (ValueError,KeyError):pass
    current=datetime.datetime.now(datetime.timezone.utc)
    today=sum(t.astimezone(datetime.timezone.utc).date()==current.date() for t in collected)
    this_hour=sum(t.astimezone(datetime.timezone.utc).strftime('%Y%m%d%H')==current.strftime('%Y%m%d%H') for t in collected)
    a.max_calls=min(max(0,a.max_calls),max(0,int(allowance)),max(0,120-today),max(0,60-this_hour))
    if quota.get('quota_info',{}).get('limit_reached') or a.max_calls==0:
        reason=('waiting_for_provider_quota' if quota.get('quota_info',{}).get('limit_reached') or allowance<=0 else 'waiting_for_local_budget' if today>=120 or this_hour>=60 else 'no_calls_requested')
        print(json.dumps({'status':reason,'local_responses_today':today,'local_responses_this_hour':this_hour,'quota_resets_at':quota.get('quota_resets_at')}),flush=True)
        return
    if a.local_seeds:
        queries=[x['query'] for x in json.loads((OUT/'local-query-seeds.json').read_text())]
    else:
        seeds=json.loads((OUT/'service-seeds.json').read_text())
        queries=list(dict.fromkeys(q for service in seeds for q in service['seeds']))
    manifest_path=OUT/('local-collection-manifest.json' if a.local_seeds else 'collection-manifest.json')
    manifest={'source':'https://keywordtool.io/mcp/guest','geography':'United States; not measured AZ/NV demand','updated_at':now(),'queries':[]}
    for q in queries:
        path=OUT/'raw'/(hashlib.sha256(q.encode()).hexdigest()[:16]+'.json')
        item={'seed':q,'path':str(path.relative_to(ROOT)),'status':'collected' if path.exists() else 'pending'}
        if path.exists():item['returned_count']=len(json.loads(path.read_text())['response']['data'])
        manifest['queries'].append(item)
    def save():
        manifest['updated_at']=now();manifest_path.write_text(json.dumps(manifest,indent=2)+'\n')
    save();calls=0
    for item in manifest['queries']:
        if item['status']=='collected':continue
        if calls>=a.max_calls:break
        try:
            args={'keyword':item['seed'],'platform':'google','category':'web','country':'United States','language':'English','type':'questions','limit':1000,'next_page':0}
            data=rpc('keywordtool-suggestions-guest',args);calls+=1
            if data.get('rate_limit_reached') or data.get('limit_reached') or data.get('success') is False:
                item['status']='deferred_provider_limit_or_error';item['provider_notice']=str(data)[:600];save();print(json.dumps(item),flush=True);break
            path=ROOT/item['path'];path.write_text(json.dumps({'retrieved_at':now(),'source':'https://mcp.keywordtool.io/guest','arguments':args,'response':data},indent=2)+'\n')
            item['status']='collected';item['returned_count']=len(data.get('data',[]));save();print(json.dumps(item),flush=True)
        except Exception as e:
            item['status']='deferred_error';item['error']=str(e)[:400];save();print(json.dumps(item),flush=True);break
if __name__=='__main__':main()
