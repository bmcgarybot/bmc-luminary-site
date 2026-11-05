"""Offline synthetic transports: durable cap, no uncertainty retry, real native proof."""
import hashlib,importlib.util,json,os,sys,tempfile,unittest
from datetime import datetime,timezone
from pathlib import Path
from unittest.mock import patch
BASE=Path(__file__).parent
sys.path[:0]=[str(BASE),str(BASE/'api')]
import api_research_pilot as p
import official_research as r

class Tests(unittest.TestCase):
    def setup(self):
        self.tmp=tempfile.TemporaryDirectory();self.addCleanup(self.tmp.cleanup)
        self.root=Path(self.tmp.name)/'private';self.ledger=p.Ledger(self.root);self.addCleanup(self.ledger.db.close)
        self.config={'OPENAI_API_KEY':'synthetic-not-a-key','BMC_ADMIN_KEY':'synthetic-signing-key','OPENAI_BILLING_ATTESTED':'true','RESEARCH_SEARCH_URL':'http://127.0.0.1:8888/search'}
        self.url='https://synthetic-property.example/';self.name='Synthetic Property Management LLC';self.calls=[]
        self.entity={'@type':'RealEstateAgent','name':self.name,'url':self.url,'telephone':'6025550123','description':'Property management',
            'address':{'streetAddress':'123 Main Street','addressLocality':'Phoenix','addressRegion':'AZ','postalCode':'85004','addressCountry':'US'}}
        self.document='<script type="application/ld+json">'+json.dumps(self.entity)+'</script><main><h1>'+self.name+'</h1><p>We provide property management for apartment communities.</p></main>'
    def search(self,endpoint,query):self.calls.append('search');return [{'url':self.url,'title':self.name,'content':'Phoenix property management'}]
    def api(self,request,key):
        self.calls.append('api');self.assertEqual(key,'synthetic-not-a-key')
        self.assertEqual(request['model'],'gpt-6.1-sol');self.assertNotIn('max_tool_calls',request);self.assertEqual(request['tools'],[])
        self.assertEqual(request['max_output_tokens'],16000);self.assertEqual(request['service_tier'],'default')
        self.assertLessEqual(len(p.canonical(request).encode()),p.MAX_INPUT_BYTES)
        return {'status':'completed','usage':{'input_tokens':1000,'output_tokens':500},'output':[{'type':'message','content':[{'type':'output_text','text':json.dumps({'candidates':[{'business_name':self.name,'result_id':0}]})}]}]}
    def fetch(self,url):
        self.calls.append('fetch');self.assertEqual(url,self.url)
        raw=self.document.encode();return r.FetchedPageReceipt(url,url,raw,hashlib.sha256(raw).hexdigest(),datetime.now(timezone.utc).isoformat(),200,'text/html',())
    def pilot(self,request='synthetic-mission-1',api=None):
        return p.run_pilot(self.ledger,request,self.config,search=self.search,api=api or self.api,fetch=self.fetch)
    def test_real_primary_receipt_hmac_private_report_and_no_25_claim(self):
        self.setup();result=self.pilot()
        self.assertEqual(result['status'],'research_partial');self.assertEqual(result['verified_count'],1)
        self.assertEqual(self.calls.count('search'),6);self.assertEqual(self.calls.count('api'),1);self.assertEqual(self.calls.count('fetch'),1)
        report=json.loads(Path(result['private_report']).read_text());record=report['verified'][0]['record']
        self.assertTrue(r.auto_evidence_valid(record,self.config['BMC_ADMIN_KEY']))
        self.assertFalse(report['database_writes']);self.assertFalse(report['offer_ready']);self.assertEqual(report['openai_web_search_calls'],0)
        self.assertNotIn(self.name,json.dumps(result));self.assertNotIn(self.config['OPENAI_API_KEY'],json.dumps(report))
        self.assertEqual(os.stat(result['private_report']).st_mode&0o777,0o600)
        self.assertEqual(self.ledger.status()['reserved_usd'],3)
        with self.assertRaisesRegex(p.Held,'duplicate_mission_no_retry'):self.pilot()
        self.assertEqual(self.calls.count('api'),1)
    def test_uncertain_requests_retain_full_reservation_and_hard_cap_survives_restart(self):
        self.setup()
        def uncertain(*args):self.calls.append('api');raise TimeoutError('PRIVATE_ERROR')
        for index in range(3):
            result=self.pilot('synthetic-uncertain-'+str(index),uncertain)
            self.assertEqual(result['status'],'research_held')
        self.assertEqual(self.ledger.status()['reserved_usd'],9)
        self.ledger.db.close();self.ledger=p.Ledger(self.root);self.addCleanup(self.ledger.db.close)
        result=self.pilot('synthetic-over-budget',uncertain)
        self.assertEqual(self.calls.count('api'),3);self.assertEqual(self.ledger.status()['uncertain_calls'],3)
        self.assertEqual(self.ledger.status()['reserved_usd'],9)
        self.assertNotIn('PRIVATE_ERROR',Path(result['private_report']).read_text())
    def test_invalid_model_reference_or_usage_cannot_create_records_or_release_budget(self):
        self.setup()
        def invalid(request,key):
            value=self.api(request,key);value['output'][0]['content'][0]['text']=json.dumps({'candidates':[{'business_name':self.name,'result_id':999}]});return value
        result=self.pilot(api=invalid);self.assertEqual(result['verified_count'],0);self.assertEqual(self.calls.count('fetch'),0)
        self.assertEqual(self.ledger.status()['reserved_usd'],3)
        def missing_usage(request,key):return {'status':'completed','output':[]}
        result=self.pilot('synthetic-usage-missing',missing_usage);self.assertEqual(result['verified_count'],0)
        self.assertEqual(self.ledger.status()['reserved_usd'],6)
    def test_real_primary_gate_wrong_city_no_contact_and_foreign_country_fail(self):
        for mode in ('city','contact','country'):
            self.setup();entity=json.loads(json.dumps(self.entity))
            if mode=='city':entity['address']['addressLocality']='Scottsdale'
            elif mode=='contact':entity.pop('telephone')
            else:entity['address']['addressCountry']='Canada'
            self.document='<script type="application/ld+json">'+json.dumps(entity)+'</script><main><h1>'+self.name+'</h1><p>Property management for apartment communities.</p></main>'
            result=self.pilot();self.assertEqual(result['verified_count'],0)
    def test_same_company_multiple_urls_cannot_inflate_verified_count(self):
        self.setup()
        def search(endpoint,query):return [{'url':self.url,'title':self.name},{'url':self.url+'contact','title':self.name}]
        def api(request,key):
            response=self.api(request,key)
            response['output'][0]['content'][0]['text']=json.dumps({'candidates':[{'business_name':self.name,'result_id':0},{'business_name':self.name,'result_id':1}]})
            return response
        def fetch(url):
            raw=self.document.encode();return r.FetchedPageReceipt(url,url,raw,hashlib.sha256(raw).hexdigest(),datetime.now(timezone.utc).isoformat(),200,'text/html',())
        result=p.run_pilot(self.ledger,'synthetic-duplicate-company',self.config,search=search,api=api,fetch=fetch)
        self.assertEqual(result['verified_count'],1);self.assertEqual(result['held_count'],1)
        report=json.loads(Path(result['private_report']).read_text())
        self.assertEqual(report['held'][0]['gate_reason'],'duplicate_verified_company')

    def test_concurrent_reservations_never_exceed_lifetime_cap(self):
        self.setup()
        from concurrent.futures import ThreadPoolExecutor
        def one(index):
            ledger=p.Ledger(self.root)
            try:return ledger.reserve('synthetic-concurrent-'+str(index))
            except p.Held:return None
            finally:ledger.db.close()
        with ThreadPoolExecutor(max_workers=4) as executor:values=list(executor.map(one,range(8)))
        self.assertEqual(sum(value is not None for value in values),3)
        self.assertEqual(self.ledger.status()['reserved_usd'],9)

    def test_input_bound_private_permissions_and_no_redirect_api_transport(self):
        self.setup()
        with self.assertRaises(p.Held):p.build_request([{'snippet':'x'*80001}])
        unsafe=Path(self.tmp.name)/'unsafe';unsafe.mkdir(mode=0o755)
        with self.assertRaises(p.Held):p.Ledger(unsafe)
        self.assertEqual(p.report_path('synthetic-request').name,'report-private.json')
        with self.assertRaises(p.Held):p.report_path('../unsafe')

if __name__=='__main__':unittest.main()
