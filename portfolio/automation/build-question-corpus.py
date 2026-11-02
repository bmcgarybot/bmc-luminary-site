#!/usr/bin/env python3
"""Build provenance-preserving research documents; never auto-publish or train weights."""
import hashlib,json,pathlib
ROOT=pathlib.Path(__file__).resolve().parents[1];OUT=ROOT/'data/question-research'
def main():
    services=json.loads((OUT/'service-seeds.json').read_text())
    raw={}
    for path in sorted((OUT/'raw').glob('*.json')):
        d=json.loads(path.read_text());raw[d['arguments']['keyword']]=(path,d)
    merged={};profiles=[]
    for s in services:
        available=[q for q in s['seeds'] if q in raw]
        missing=[q for q in s['seeds'] if q not in raw]
        profiles.append({**s,'collection_status':'complete_first_page' if not missing else 'partial' if available else 'pending',
          'collected_seeds':available,'pending_seeds':missing,
          'local_demand_verified':False,'search_alias_review_status':'pending','publishing_status':'draft'})
        for seed in available:
            path,d=raw[seed]
            for item in d['response'].get('data',[]):
                question=item.get('string','').strip()
                if not question:continue
                key=question.casefold()
                entry=merged.setdefault(key,{'id':hashlib.sha256(key.encode()).hexdigest()[:20],'query':question,'service_keys':[],
                  'observations':[],'content_type':'observed_query_suggestion','review_status':'unreviewed',
                  'approved_for_answer_generation':False,'approved_for_weight_training':False,
                  'local_demand_verified':False})
                if s['service_key'] not in entry['service_keys']:entry['service_keys'].append(s['service_key'])
                obs={'seed':seed,'source':d['source'],'retrieved_at':d['retrieved_at'],'country':'United States',
                  'language':'English','platform':'google','raw_file':str(path.relative_to(ROOT)),
                  'metrics_status':item.get('metrics_status'),'search_volume':item.get('volume'),
                  'returned_as_question_suggestion':True}
                if obs not in entry['observations']:entry['observations'].append(obs)
    (OUT/'service-question-map.json').write_text(json.dumps(profiles,indent=2)+'\n')
    # Small deterministic shards keep every source-backed query durable in git.
    shards=OUT/'corpus';shards.mkdir(exist_ok=True)
    for old in shards.glob('questions-*.jsonl'):old.unlink()
    ordered=[d for _,d in sorted(merged.items())]
    for start in range(0,len(ordered),250):
        (shards/f'questions-{start//250+1:03d}.jsonl').write_text(''.join(json.dumps(d,ensure_ascii=False)+'\n' for d in ordered[start:start+250]))
    result={'services':len(services),'unique_collected_seeds':len(raw),'unique_suggestions':len(merged),
      'complete_service_seed_sets':sum(s['collection_status']=='complete_first_page' for s in profiles),
      'partial_services':sum(s['collection_status']=='partial' for s in profiles),
      'pending_services':sum(s['collection_status']=='pending' for s in profiles),
      'local_demand_verified':False,'llm_weights_trained':False,'pages_published':0}
    (OUT/'corpus-summary.json').write_text(json.dumps(result,indent=2)+'\n');print(json.dumps(result))
if __name__=='__main__':main()
