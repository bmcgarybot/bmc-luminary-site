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
def main():
    p=argparse.ArgumentParser();p.add_argument('--max-calls',type=int,default=1);p.add_argument('--quota-only',action='store_true');a=p.parse_args()
    OUT.mkdir(exist_ok=True);(OUT/'raw').mkdir(exist_ok=True)
    quota=rpc('keywordtool-quota-guest',{})
    # Do not persist IP identifiers, session headers or tokens.
    print(json.dumps({'quota':quota}),flush=True)
    if a.quota_only:return
    limits=quota.get('quota_info',{}).get('limits',{})
    allowance=min(limits.get('hourly',{}).get('remaining',0),limits.get('daily',{}).get('remaining',0))
    a.max_calls=min(max(0,a.max_calls),max(0,int(allowance)))
    if quota.get('quota_info',{}).get('limit_reached') or a.max_calls==0:
        print(json.dumps({'status':'waiting_for_provider_quota','quota_resets_at':quota.get('quota_resets_at')}),flush=True)
        return
    seeds=json.loads((OUT/'service-seeds.json').read_text())
    queries=list(dict.fromkeys(q for service in seeds for q in service['seeds']))
    manifest={'source':'https://keywordtool.io/mcp/guest','geography':'United States; not measured AZ/NV demand','updated_at':now(),'queries':[]}
    for q in queries:
        path=OUT/'raw'/(hashlib.sha256(q.encode()).hexdigest()[:16]+'.json')
        manifest['queries'].append({'seed':q,'path':str(path.relative_to(ROOT)),'status':'collected' if path.exists() else 'pending'})
    def save():
        manifest['updated_at']=now();(OUT/'collection-manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
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
