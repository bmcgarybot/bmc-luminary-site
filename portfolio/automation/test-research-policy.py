"""Evidence labels, public business-only discovery, bounded real worker execution."""
import ast,asyncio,json,re,sys,unittest
from pathlib import Path
from types import SimpleNamespace
from unittest.mock import AsyncMock
sys.path.insert(0,str(Path(__file__).parent/'api'))
from research_policy import POLICY,contractor_priority,ownership_evidence,observation_kind,observation_evidence
from official_research import VENDOR_TERMS
from fastapi import Header

class Tests(unittest.IsolatedAsyncioTestCase):
    def test_owner_operation_requires_explicit_visible_evidence(self):
        self.assertEqual(ownership_evidence('<p>Family-owned and operated</p>')['classification'],'owner_operated')
        for source in ('<p>Locally owned LLC</p>','<script>owner operated</script>','<p>Professional small website</p>'):
            value=ownership_evidence(source)
            self.assertNotEqual(value['classification'],'owner_operated');self.assertIsNone(value['employee_count'])
    def test_whitepages_people_routes_and_closed_ads_do_not_become_requests(self):
        self.assertEqual(observation_kind({'url':'https://whitepages.com/name/Someone','title':'Plumber Prescott'},'business_directory_only'),'excluded_nonbusiness_directory')
        self.assertEqual(observation_kind({'url':'https://whitepages.com/business/az/prescott/business'},'business_directory_only'),'business_listing')
        self.assertEqual(observation_kind({'title':'Temporarily closed; looking for cleaning'},'mixed_public_signals',True),'closure_mention')
    def test_provider_call_to_action_outranks_rhetorical_request(self):
        ns=self.namespace()
        result={'title':'Prescott pressure washing: Need a driveway cleaner?',
                'snippet':'Owner-operated exterior cleaning. Call now: 928-555-0100'}
        # The old intent helper accepts this rhetorical wording; the evidence
        # classifier must still prevent it from being labeled a buyer request.
        intent=ns['local_signal_request_intent'](result)
        self.assertTrue(intent)
        self.assertEqual(observation_kind(result,'mixed_public_signals',intent),'contractor_advertisement')
        for phrase in ('We offer pressure washing','Free estimates','Call/text today','Book now','Contact us'):
            with self.subTest(phrase=phrase):
                self.assertEqual(observation_kind({'title':'Need a cleaner?','snippet':phrase},'mixed_public_signals',True),'contractor_advertisement')

    def test_ownership_preference_does_not_turn_a_genuine_request_into_an_ad(self):
        ns=self.namespace()
        for phrase in ('owner-operated','family-owned','family owned','locally owned'):
            result={'title':f'Looking for an {phrase} cleaner; any recommendations?','snippet':'Prescott'}
            with self.subTest(phrase=phrase):
                intent=ns['local_signal_request_intent'](result)
                self.assertTrue(intent)
                self.assertEqual(observation_kind(result,'mixed_public_signals',intent),'request_candidate')

    def test_snippet_and_relative_dates_never_confirm_demand_or_ownership(self):
        value=observation_evidence({'title':'Owner-operated family business','snippet':'Looking for a cleaner 3 days ago'},'request_candidate')
        for key in ('source_page_verified','publication_date_verified','ownership_evidence_verified','confirmed_demand','accepted_provider','automatic_contact_allowed'):
            self.assertIs(value[key],False)
        self.assertIsNone(value['published_at'])
    def test_only_matching_signed_official_owner_claim_changes_priority(self):
        from official_research import parse_record
        candidate=dict(business_name='Synthetic Commercial Cleaning',market='Prescott',side='vendor',category_key='commercial_cleaning',category_label='Commercial cleaning',public_phone='9285550100')
        url='https://synthetic.example/'
        entity={'@type':'CleaningService','name':candidate['business_name'],'url':url,'telephone':'9285550100','email':'info@synthetic.example','description':'Commercial cleaning',
            'address':{'streetAddress':'100 Main Street','addressLocality':'Prescott','addressRegion':'AZ','postalCode':'86301'}}
        doc='<title>Synthetic Commercial Cleaning</title><p>Family-owned and operated.</p><script type="application/ld+json">'+json.dumps(entity)+'</script>'
        parsed=parse_record(candidate,url,doc,'a'*64,'secret')
        signed=parsed['evidence']['vps_verification']
        row=dict(parsed,source_data={'vps_verification':signed})
        self.assertEqual(contractor_priority(row,'secret'),0)
        self.assertEqual(contractor_priority(row,'wrong-secret'),2)
        self.assertEqual(contractor_priority(dict(row,public_email='someone@other.example'),'secret'),2)
        self.assertEqual(contractor_priority(dict(row,source_data={'ownership':'owner_operated'}),'secret'),2)
    def namespace(self):
        tree=ast.parse(Path(__file__).with_name('api').joinpath('app.py').read_text())
        names={'build_local_signal_query','local_signal_request_intent','local_signal_result_relevant','result_matches_market','public_source_host_allowed','classify_local_signal_service','process_local_demand_signals'}
        nodes=[n for n in tree.body if isinstance(n,(ast.FunctionDef,ast.AsyncFunctionDef)) and n.name in names]
        for node in nodes:node.decorator_list=[]
        ns=dict(re=re,json=json,asyncio=asyncio,Header=Header,clean=lambda v:str(v or '').strip(),
            RESEARCH_POLICY=POLICY,CONTRACTOR_RESEARCH_TERMS=VENDOR_TERMS,observation_kind=observation_kind,observation_evidence=observation_evidence,
            RESEARCH_SEARCH_ENABLED=True,LOCAL_DEMAND_QUERY_STRATEGY_VERSION=7,LOCAL_SIGNAL_SOURCES=POLICY['channels'],
            LOCAL_SIGNAL_GROUPS=[{'key':'cleaning_property','terms':'"pressure washing"'}],require_admin=lambda key:None,event=AsyncMock())
        exec(compile(ast.Module(body=nodes,type_ignores=[]),'actual_policy_worker','exec'),ns)
        return ns
    def test_discovery_request_queries_and_correct_service_classification(self):
        ns=self.namespace()
        self.assertIn('looking for',ns['build_local_signal_query']('Prescott','facebook.com','"pressure washing"',0))
        self.assertNotIn('looking for',ns['build_local_signal_query']('Prescott','facebook.com','"pressure washing"',1))
        self.assertIn('whitepages.com/business',ns['build_local_signal_query']('Prescott','whitepages.com','"plumber"',0))
        for text,key in [('Need a janitorial service','commercial_cleaning'),('We offer pressure washing','pressure_washing'),('Need carpet cleaning','floor_carpet')]:
            self.assertEqual(ns['classify_local_signal_service'](text,require_intent=False),key)
        self.assertIsNone(ns['classify_local_signal_service']('We offer pressure washing'))
    async def test_actual_worker_separates_ads_requests_closures_and_people_with_bounded_search(self):
        ns=self.namespace();calls=[];active=0;max_active=0
        lanes=[dict(source_key=s['key'],source_name=s['name'],source_domain=s['domain'],market='Prescott',group_key='cleaning_property',group_label='Cleaning',next_page=1,scans=1,results_seen=0,signals_found=0,no_progress_scans=0) for s in POLICY['channels']]
        class Conn:
            async def __aenter__(self):return self
            async def __aexit__(self,*args):pass
            async def fetch(self,*args):return lanes
            async def fetchrow(self,*args):return None
            async def fetchval(self,query,*args):
                calls.append((query,args));return 'new-signal' if query.lstrip().startswith('insert') else 0
            async def execute(self,query,*args):calls.append((query,args));return 'OK'
        class Pool:
            def acquire(self):return Conn()
        ns['app']=SimpleNamespace(state=SimpleNamespace(pool=Pool()))
        async def search(query,page):
            nonlocal active,max_active
            active+=1;max_active=max(max_active,active);await asyncio.sleep(.002);active-=1
            domain=next(s['domain'] for s in POLICY['channels'] if s['domain'] in query)
            title={'nextdoor.com':'Prescott looking for pressure washing','facebook.com':'Prescott temporarily closed looking for pressure washing','craigslist.org':'Prescott pressure washing we offer free estimates','whitepages.com':'Prescott pressure washing business'}[domain]
            return [dict(title=title,snippet=title,url='https://'+domain+('/name/PrivatePerson' if domain=='whitepages.com' else '/public-service'),domain=domain,engine='fixture',score=1)]
        ns['search_research_web']=search
        result=await ns['process_local_demand_signals']('admin')
        self.assertEqual(result['searches'],4);self.assertLessEqual(max_active,3)
        observed=[args for query,args in calls if query.lstrip().startswith('insert into local_channel_observations')]
        self.assertEqual({row[6] for row in observed},{'request_candidate','contractor_advertisement','closure_mention'})
        demand=[args for query,args in calls if query.lstrip().startswith('insert into local_demand_signals')]
        self.assertEqual(len(demand),1);self.assertEqual(demand[0][0],'nextdoor_public')
        held=[(query,args) for query,args in calls if "set status='needs_review'" in query]
        self.assertEqual(len(held),2)
        self.assertTrue(all("status='discovered'" in query for query,args in held))
        for args in observed:
            evidence=json.loads(args[-1]);self.assertNotIn('confirmed_demand',evidence)
            self.assertFalse(evidence['index_observation']['confirmed_demand'])
        for args in demand:self.assertNotIn('source_page_verified',json.loads(args[-1]))
        for query,args in calls:
            self.assertNotIn('insert into orders',query.lower());self.assertNotIn('update outreach ',query.lower())
        updates=[args for query,args in calls if 'research_policy_version=$7' in query]
        self.assertEqual(len(updates),4);self.assertTrue(all(x[-1]==POLICY['version'] for x in updates))

if __name__=='__main__':unittest.main()
