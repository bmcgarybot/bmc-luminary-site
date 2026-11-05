"""Persistent research policy and conservative public-channel evidence labels."""
import json,re
from pathlib import Path
from html.parser import HTMLParser
from urllib.parse import urlsplit

POLICY=json.loads(Path(__file__).with_name('research_policy.json').read_text())

class VisibleText(HTMLParser):
    def __init__(self):super().__init__();self.hidden=0;self.parts=[]
    def handle_starttag(self,tag,attrs):
        if tag in ('script','style','noscript','template'):self.hidden+=1
    def handle_endtag(self,tag):
        if tag in ('script','style','noscript','template') and self.hidden:self.hidden-=1
    def handle_data(self,data):
        if not self.hidden:self.parts.append(data)

def ownership_evidence(document):
    parser=VisibleText();parser.feed(document)
    text=' '.join(' '.join(parser.parts).split())
    for label,pattern in (
        ('owner_operated',r'\b(?:owner[- ]operated|family[- ]owned and operated)\b'),
        ('family_owned',r'\bfamily[- ]owned\b'),
        ('locally_owned',r'\blocally[- ]owned\b')):
        found=re.search(pattern,text,re.I)
        if found:return {'classification':label,'published_phrase':found.group(),'employee_count':None}
    return {'classification':'unknown','published_phrase':'','employee_count':None}

def observation_kind(result,source_role,request_candidate=False):
    text=(' '.join(str(result.get(k) or '') for k in ('title','snippet'))).lower()
    if re.search(r'\b(?:temporarily closed|permanently closed|out of business)\b',text):return 'closure_mention'
    if source_role=='business_directory_only':
        path=urlsplit(str(result.get('url') or '')).path.lower()
        if not (path=='/business' or path.startswith('/business/')):return 'excluded_nonbusiness_directory'
        return 'business_listing'
    if any(x in text for x in ('now hiring','job opening','send resume','apply today','sign-on bonus')):return 'job_advertisement'
    # Provider offers and explicit calls to contact/book outrank rhetorical
    # request wording. Ownership preferences alone do not establish an ad.
    if re.search(r'\b(?:free estimates?|we offer|we provide|call/text|call us|call now|services offered|book now|contact us|schedule your)\b',text):
        return 'contractor_advertisement'
    if re.search(r'/(?:hss|lbs|fgs)/d/',urlsplit(str(result.get('url') or '')).path) and not request_candidate:
        return 'contractor_advertisement'
    if request_candidate:return 'request_candidate'
    if 'recommend' in text:return 'recommendation_candidate'
    return 'unclassified_public_result'

def observation_evidence(result,kind):
    # Index text provides discovery hints only, never current dated demand proof.
    hint=ownership_evidence(str(result.get('title') or '')+' '+str(result.get('snippet') or ''))
    return {'policy_version':POLICY['version'],'observation_kind':kind,'public_index_only':True,
            'source_page_verified':False,'published_at':None,'publication_date_verified':False,
            'ownership_hint':hint['classification'],'ownership_evidence_verified':False,
            'confirmed_demand':False,'accepted_provider':False,'automatic_contact_allowed':False}

def install(app,require_admin):
    from fastapi import Header
    @app.post('/api/admin/research-policy-status')
    async def status(x_bmc_admin_key:str|None=Header(default=None)):
        require_admin(x_bmc_admin_key)
        from channel_scan_state import ScanState,health
        from datetime import datetime,timezone
        from collections import Counter
        def epoch(value):
            if value is None:return None
            if value.tzinfo is None:raise ValueError('UTC-aware channel timestamp required')
            return value.timestamp()
        async with app.state.pool.acquire() as conn:
            coverage=await conn.fetch("""select source_key,count(*) lanes,
                count(*) filter(where research_policy_version=$1) policy_scanned_lanes,
                min(last_run_at) oldest_last_run,max(last_run_at) newest_last_run,
                count(*) filter(where last_error is not null) error_lanes
                from local_demand_scan_state group by source_key order by source_key""",POLICY['version'])
            observations=await conn.fetch("""select source_key,observation_kind,count(*) records,
                max(last_seen_at) last_seen from local_channel_observations
                group by source_key,observation_kind order by source_key,observation_kind""")
            public_ads=await conn.fetch("""select market,coalesce(evidence->'public_ad_check'->>'status','unchecked') status,count(*) records
                from local_channel_observations where observation_kind='contractor_advertisement'
                group by market,coalesce(evidence->'public_ad_check'->>'status','unchecked') order by market,status""")
            lanes=await conn.fetch('select * from local_demand_scan_state')
            worker=await conn.fetchrow("select * from channel_worker_metadata where worker_key='local_channels'")
        now=datetime.now(timezone.utc).timestamp();counts=Counter();issues=[]
        for row in lanes:
            if row.get('state_adapter_version')!='channel-state-v1':reason='help_needed_state_migration'
            else:
                state=ScanState(lane_id=json.dumps([row[k] for k in ('source_key','market','group_key')]),
                    source_key=row['source_key'],created_at=epoch(row['created_at']),
                    last_attempt_at=epoch(row['last_run_at']),last_success_at=epoch(row['last_success_at']),
                    next_eligible_at=epoch(row['next_eligible_at']),last_progress_at=epoch(row['last_progress_at']),
                    failure_streak=row['failure_streak'],no_progress_batches=row['no_progress_batches'])
                reason=health(state,now=now)
            counts[reason]+=1
            if reason.startswith('help_needed_'):
                issues.append({'source':row['source_key'],'market':row['market'],'group':row['group_key'],
                    'reason':reason,'last_error':row['last_error']})
        return {'ok':True,'policy':POLICY,'coverage':[dict(x) for x in coverage],
                'observations':[dict(x) for x in observations],'public_contractor_ads':[dict(x) for x in public_ads],
                'worker':dict(worker) if worker else None,'health_counts':dict(counts),'help_needed':issues,
                'worker_metadata_missing':worker is None,
                'note':'Configured channels and scanned lanes are not verified businesses or confirmed demand'}

def contractor_priority(row,secret):
    """Prefer supported ownership claims without treating them as provider acceptance."""
    from official_research import auto_evidence_valid
    try:
        data=row.get('source_data') or {}
        if isinstance(data,str):data=json.loads(data)
        signed=data.get('vps_verification') or {}
        if not isinstance(signed,dict):return 2
        for field in ('business_name','market','source_url','public_email'):
            if str(row.get(field) or '').lower()!=str(signed.get(field) or '').lower():return 2
        verified=dict(signed,evidence={'vps_verification':signed})
        if not auto_evidence_valid(verified,secret):return 2
        label=(signed.get('ownership_evidence') or {}).get('classification')
        return 0 if label=='owner_operated' else (1 if label=='family_owned' else 2)
    except (ValueError,TypeError,AttributeError):return 2
