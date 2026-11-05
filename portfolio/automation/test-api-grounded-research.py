"""Synthetic transports only: actual tool-source binding, two-phase cap, real proofs."""
import copy,hashlib,json,sys,tempfile,time,unittest
from datetime import datetime,timezone
from pathlib import Path
BASE=Path(__file__).parent
sys.path[:0]=[str(BASE),str(BASE/'api')]
import api_research_pilot as p
import api_grounded_research as g
import official_research as r

class Tests(unittest.TestCase):
    def setup(self):
        self.tmp=tempfile.TemporaryDirectory();self.addCleanup(self.tmp.cleanup)
        self.ledger=p.Ledger(Path(self.tmp.name)/'private');self.addCleanup(self.ledger.db.close)
        self.config={'OPENAI_BILLING_ATTESTED':'true','OPENAI_API_KEY':'synthetic-only','BMC_ADMIN_KEY':'synthetic-native-secret'}
        self.url='https://synthetic-manager.example/';self.name='Synthetic Property Management LLC';self.calls=[];self.fetches=[]
    def response(self,payload,web=False):
        result={'status':'completed','usage':{'input_tokens':1000,'output_tokens':500},'output':[{'type':'message','content':[{'type':'output_text','text':json.dumps(payload),'annotations':[]}]}]}
        if web:result['output'].insert(0,{'type':'web_search_call','status':'completed','action':{'type':'search','sources':[{'url':self.url}]}})
        return result
    def discovery(self):return self.response({'candidates':[{'business_name':self.name,'source_url':self.url}]},True)
    def receipt(self,html,url=None):
        raw=html.encode();url=url or self.url
        return r.FetchedPageReceipt(url,url,raw,hashlib.sha256(raw).hexdigest(),datetime.now(timezone.utc).isoformat(),200,'text/html',())
    def document(self,native=False):
        structured=''
        if native:
            entity={'@type':'RealEstateAgent','name':self.name,'url':self.url,'telephone':'6025550123','description':'Property management',
                'address':{'streetAddress':'123 Main Street','addressLocality':'Phoenix','addressRegion':'AZ','postalCode':'85004','addressCountry':'US'}}
            structured='<script type="application/ld+json">'+json.dumps(entity)+'</script>'
        return structured+'<main><h1>'+self.name+'</h1><p>We provide property management for commercial properties.</p><p>123 Main Street, Phoenix, AZ 85004</p><p>602-555-0123</p></main>'
    def test_actual_observed_urls_only_and_explicit_perphase_limits(self):
        self.setup();request=g.discovery_request()
        self.assertEqual(request['model'],'gpt-6-luna');self.assertEqual(request['max_tool_calls'],2)
        self.assertFalse(request['parallel_tool_calls']);self.assertEqual(request['tools'][0]['search_context_size'],'low')
        self.assertEqual(request['tools'][0]['return_token_budget'],'default');self.assertLessEqual(len(p.canonical(request).encode()),8000)
        response=self.discovery();payload={'candidates':[{'business_name':self.name,'source_url':self.url},{'business_name':'Invented','source_url':'https://invented.example/'}]}
        response['output'][1]['content'][0]['text']=json.dumps(payload)
        selected,_,held,_=g.source_candidates(response)
        self.assertEqual([x['url'] for x in selected],[self.url]);self.assertEqual(len(held),1)
        response['output'][0]['action']['sources']=[]
        response['output'][1]['content'][0]['annotations']=[{'type':'url_citation','url':self.url}]
        self.assertEqual(g.source_candidates(response)[0][0]['url'],self.url)
    def test_native_primary_success_needs_no_second_model_call(self):
        self.setup()
        def api(request,key):self.calls.append(request);return self.discovery()
        def fetch(url):self.fetches.append(url);return self.receipt(self.document(True),url)
        result=g.run_grounded(self.ledger,'synthetic-grounded-native',self.config,api=api,fetch=fetch)
        self.assertEqual(result['verified_count'],1);self.assertEqual(len(self.calls),1);self.assertEqual(self.fetches,[self.url])
        self.assertEqual(self.ledger.status()['reserved_usd'],0.0315)
        report=json.loads(Path(result['private_report']).read_text());self.assertEqual(report['verified'][0]['verification_kind'],'native_v1')
        self.assertFalse(result['offer_ready']);self.assertIsNone(result['qualified_reserve_count'])
    def test_visible_actual_html_extraction_real_v3_and_existing_three_dollar_reservation(self):
        self.setup();self.ledger.begin('synthetic-first-pilot');old=self.ledger.reserve('synthetic-first-pilot');self.ledger.complete(old,{'input_tokens':1080,'output_tokens':146})
        fields={'candidate_index':0,'contact_receipt_index':0,'business_name':self.name,'source_url':self.url,
            'physical_address':'123 Main Street, Phoenix, AZ 85004','public_phone':'6025550123','public_email':'',
            'identity_quote':self.name,'role_quote':self.name,
            'address_quote':'123 Main Street, Phoenix, AZ 85004','contact_quote':'602-555-0123'}
        def api(request,key):
            self.calls.append(request)
            if request['tools']:return self.discovery()
            self.assertEqual(request['model'],'gpt-6.1-sol');self.assertEqual(request['tool_choice'],'none')
            self.assertLessEqual(len(p.canonical(request).encode()),80000)
            self.assertEqual(json.loads(request['input'])[0]['verified_primary_role_excerpt'],self.name)
            self.assertIn('123 Main Street',request['input']);self.assertNotIn('application/ld+json',request['input'])
            return self.response({'records':[fields]})
        def fetch(url):self.fetches.append(url);return self.receipt(self.document(),url)
        result=g.run_grounded(self.ledger,'synthetic-grounded-visible',self.config,api=api,fetch=fetch)
        self.assertEqual(len(self.calls),2);self.assertEqual(self.ledger.status()['reserved_usd'],3.059)
        self.assertEqual(result['verified_count'],1)
        report=json.loads(Path(result['private_report']).read_text());entry=report['verified'][0]
        self.assertEqual(entry['verification_kind'],'visible_property_v3')
        from property_visible_source import auto_property_visible_valid
        self.assertTrue(auto_property_visible_valid(entry['record'],self.config['BMC_ADMIN_KEY']))
        self.assertNotIn(self.name,json.dumps(result));self.assertFalse(result['offer_ready'])
        before=len(self.calls)
        # Completed known fixed-price requests settle conservatively, while a
        # new real call is prohibited here by giving an exhausted lower cap.
        self.ledger.db.execute('update config set cap=1000000 where id=1')
        with self.assertRaises(p.Held):g.run_grounded(self.ledger,'synthetic-no-more-budget',self.config,api=api,fetch=fetch)
        self.assertEqual(len(self.calls),before)
    def test_visible_contacts_only_from_fresh_observed_page_and_forged_quote_refused(self):
        for forged in (False,True):
            self.setup()
            primary='<main><h1>'+self.name+'</h1><p>We provide property management for commercial properties.</p><a href="/contact">Contact</a></main>'
            fields={'candidate_index':0,'contact_receipt_index':1,'business_name':self.name,'source_url':self.url,
                'physical_address':'123 Main Street, Phoenix, AZ 85004','public_phone':'6025550123','public_email':'',
                'identity_quote':self.name,'role_quote':self.name,
                'address_quote':'123 Main Street, Phoenix, AZ 85004','contact_quote':'602-555-0123' if not forged else '602-555-9999'}
            def api(request,key):return self.discovery() if request['tools'] else self.response({'records':[fields]})
            def fetch(url):self.fetches.append(url);return self.receipt(primary if url==self.url else self.document(),url)
            result=g.run_grounded(self.ledger,'synthetic-grounded-contact',self.config,api=api,fetch=fetch)
            self.assertEqual(result['verified_count'],0 if forged else 1)
            self.assertEqual(self.fetches,[self.url,self.url+'contact'])
            self.assertEqual(self.ledger.status()['reserved_usd'],0.059)
            report=json.loads(Path(result['private_report']).read_text());self.assertEqual(report['visible_model_record_count'],1)
            self.assertIn('response_model',report['extraction_accounting_diagnostic'])
            self.assertEqual(report['visible_verification_rejected_count'],1 if forged else 0)
            if forged:self.assertEqual(report['held'][0]['candidate_index'],0);self.assertEqual(report['held'][0]['source_url'],self.url)

    def test_valid_completed_fixed_request_settles_missing_optional_tool_billing_with_max_fees(self):
        self.setup()
        response=self.discovery();response['model']='gpt-6-luna';response['tool_usage']={'web_search':{'num_requests':1}}
        def api(*args):return response
        result=g.run_grounded(self.ledger,'synthetic-grounded-settled',self.config,api=api,fetch=lambda url:self.receipt(self.document(True),url))
        self.assertEqual(result['verified_count'],1);self.assertEqual(self.ledger.status()['reserved_usd'],0.0315)
        report=json.loads(Path(result['private_report']).read_text());self.assertEqual(report['web_budget_status'],'conservative_usage_upper_settled')
        self.assertEqual(self.ledger.db.execute('select reserved_before from cost_settlements').fetchone()[0],3000000)
        response=dict(response);response.pop('tool_usage')
        g.run_grounded(self.ledger,'synthetic-grounded-unsettled',self.config,api=api,fetch=lambda url:self.receipt(self.document(True),url))
        self.assertEqual(self.ledger.status()['reserved_usd'],0.063)
    def test_sol_settlement_requires_complete_known_toolfree_usage(self):
        self.setup();usage={'input_tokens':1000,'output_tokens':500}
        self.ledger.begin('synthetic-sol-settle');call=self.ledger.reserve('synthetic-sol-settle')
        response=self.response({'records':[]});response['model']='gpt-6.1-sol'
        self.assertEqual(g.complete_usage(self.ledger,call,response,usage,grounded=False),'conservative_usage_upper_settled')
        self.assertEqual(self.ledger.status()['reserved_usd'],0.0275)
        self.ledger.begin('synthetic-partial-settle');call=self.ledger.reserve('synthetic-partial-settle')
        response['status']='incomplete'
        with self.assertRaises(p.Held):g.complete_usage(self.ledger,call,response,usage,grounded=False)
        self.assertEqual(self.ledger.status()['reserved_usd'],3.0275)
    def test_prior_verified_only_coverage_rotation_stays_short_and_private(self):
        self.setup();directory=p.private_dir(self.ledger.root/'synthetic-prior-grounded')
        report={'mode':'grounded_recovery','verified':[{'record':{'business_name':self.name,'source_url':self.url}}],
            'held':[{'business_name':'Failed source must stay eligible','source_url':'https://failed.example/'}]}
        p.write_private(directory/'report-private.json',report)
        self.ledger.begin('synthetic-prior-grounded');self.ledger.finish('synthetic-prior-grounded','research_partial',directory/'report-private.json')
        coverage=g.prior_coverage(self.ledger)
        self.assertEqual(coverage['names'],[self.name]);self.assertEqual(coverage['urls'],[self.url])
        first=g.discovery_request();next_request=g.discovery_request(coverage,coverage['prior_grounded_missions'])
        self.assertNotEqual(first['input'],next_request['input']);self.assertIn(g.FOCI[1],next_request['input'])
        self.assertNotIn('Failed source',next_request['input']);self.assertNotIn('synthetic-only',next_request['input'])
        huge={'names':['Public company '+str(i)+'x'*200 for i in range(100)],'urls':['https://public.example/'+str(i)+'x'*500 for i in range(100)]}
        self.assertLessEqual(len(p.canonical(g.discovery_request(huge,2)).encode()),8000)

    def test_uncertain_discovery_keeps_full_reservation_duplicate_id_no_retry(self):
        self.setup()
        def api(*args):self.calls.append('api');raise TimeoutError('PRIVATE_ERROR')
        result=g.run_grounded(self.ledger,'synthetic-grounded-timeout',self.config,api=api,fetch=lambda url:None)
        self.assertEqual(result['status'],'research_held');self.assertEqual(self.ledger.status()['reserved_usd'],3)
        self.assertNotIn('PRIVATE_ERROR',Path(result['private_report']).read_text())
        with self.assertRaises(p.Held):g.run_grounded(self.ledger,'synthetic-grounded-timeout',self.config,api=api,fetch=lambda url:None)
        self.assertEqual(self.calls,['api'])
    def test_fetches_only_observed_safe_samehost_contact_links(self):
        self.setup();primary=self.document()+'<a href="/contact">Contact</a><a href="https://foreign.example/contact">Foreign</a><a href="/contact?submit=1">Unsafe</a>'
        def fetch(url):self.fetches.append(url);return self.receipt(primary if url==self.url else self.document(),url)
        values,held=g.fetched_sources([{'url':self.url,'business_name':self.name}],fetch,time.monotonic()+600)
        self.assertEqual(held,[]);self.assertEqual(self.fetches,[self.url,self.url+'contact']);self.assertEqual(len(values[0]['receipts']),2)
    def test_rejects_unexpected_tools_and_excessive_billable_searches(self):
        self.setup();response=self.discovery();response['tool_usage']={'web_search':{'num_requests':3}}
        with self.assertRaises(p.Held):g.source_candidates(response)
        response=self.discovery();response['output'].append({'type':'function_call'})
        with self.assertRaises(p.Held):g.source_candidates(response)

    def test_balanced_long_actual_blocks_preserve_literal_identity_role_address_contact_windows(self):
        self.setup()
        from property_visible_source import visible_property_blocks
        html='<main><h1>'+self.name+'</h1>'+''.join('<p>'+self.name+' '+('marketing '*90)+'</p>' for _ in range(5))+'<p>We provide property management for commercial properties.</p></main><footer><p>'+('office details '*55)+'123 Main Street, Phoenix, AZ 85004 '+('more details '*55)+'</p><p>602-555-0123</p></footer>'
        observed=visible_property_blocks(html);page,diag=g.balanced_evidence_page(observed,self.name)
        self.assertTrue(all(diag['evidence_text_shown'].values()),diag)
        self.assertLessEqual(diag['selected_text_bytes'],2400)
        actual=[x['text'] for x in observed['contact_blocks']]
        self.assertTrue(all(any(window in original for original in actual) for window in page['blocks']))
        self.assertTrue(any('123 Main Street, Phoenix, AZ 85004' in window for window in page['blocks']))
        self.assertTrue(any('602-555-0123' in window for window in page['blocks']))
    def test_fifteen_bounded_candidates_and_failed_primary_role_are_explicit_without_relaxation(self):
        self.setup();failed=[]
        bad={'source':{'url':'https://sales.example/','business_name':'Synthetic Sales Company'},'receipts':(self.receipt('<main><h1>Synthetic Sales Company</h1><p>We sell office software.</p></main>','https://sales.example/'),)}
        failed.append(bad)
        for i in range(15):
            name='Synthetic Property Management '+str(i);url=f'https://manager{i}.example/'
            html=self.document().replace(self.name,name)+''.join('<p>'+name+' '+('marketing '*90)+'</p>' for _ in range(4))
            failed.append({'source':{'url':url,'business_name':name},'receipts':(self.receipt(html,url),)})
        diagnostics=[];request,chosen=g.visible_request(failed,diagnostics)
        self.assertEqual(len(chosen),15);self.assertLessEqual(len(p.canonical(request).encode()),80000)
        self.assertEqual(diagnostics[0]['status'],'primary_scope_rejected');self.assertIn('gate_reason',diagnostics[0])
        entries=json.loads(request['input']);self.assertEqual([e['candidate_index'] for e in entries],list(range(15)))
        self.assertTrue(all(e['verified_primary_role_excerpt'] for e in entries))
    def test_missing_optional_model_uses_fixed_request_but_unknown_returned_metadata_stays_held(self):
        for field,value in (('model','unknown-paid-model'),('service_tier','priority'),('tool_usage',{'unknown_tool':{}})):
            self.setup();self.ledger.begin('synthetic-unknown-meta');call=self.ledger.reserve('synthetic-unknown-meta',phase='web')
            response=self.discovery();response[field]=value
            self.assertEqual(g.complete_usage(self.ledger,call,response,response['usage'],grounded=True),'full_reservation_retained')
            self.assertEqual(self.ledger.status()['reserved_usd'],3)
            diagnostic=g.accounting_diagnostic(response,grounded=True);self.assertTrue(diagnostic['retention_reason_codes'])
        self.setup();self.ledger.begin('synthetic-fixed-request');call=self.ledger.reserve('synthetic-fixed-request',phase='web');response=self.discovery()
        self.assertEqual(g.complete_usage(self.ledger,call,response,response['usage'],grounded=True),'conservative_usage_upper_settled')
        self.assertEqual(self.ledger.status()['reserved_usd'],0.0315)
        proof=json.loads(self.ledger.db.execute('select proof from cost_settlements').fetchone()[0]);self.assertEqual(proof['model'],'gpt-6-luna');self.assertEqual(proof['search_requests'],2)
        diagnostic=g.accounting_diagnostic(response,grounded=True);self.assertIn('fixed_requested_model_basis',diagnostic['conservative_basis_codes']);self.assertIn('maximum_two_search_fees',diagnostic['conservative_basis_codes'])
    def test_exact_zero_image_and_text_zero_web_metadata_settle_both_phases(self):
        for grounded in (True,False):
            self.setup();phase='web' if grounded else 'extract';self.ledger.begin('synthetic-zero-tool-usage');call=self.ledger.reserve('synthetic-zero-tool-usage',phase=phase)
            response=self.discovery() if grounded else self.response({'records':[]})
            response.update(model='gpt-6-luna' if grounded else 'gpt-6.1-sol',service_tier='default',
                tool_usage={'image_gen':copy.deepcopy(g.ZERO_IMAGE_USAGE),'web_search':{'num_requests':2 if grounded else 0}})
            self.assertEqual(g.complete_usage(self.ledger,call,response,response['usage'],grounded=grounded),'conservative_usage_upper_settled')
            self.assertLess(self.ledger.status()['reserved_usd'],0.1)
            diagnostic=g.accounting_diagnostic(response,grounded=grounded)
            self.assertEqual(diagnostic['retention_reason_codes'],[]);self.assertIn('exact_zero_image_usage_not_billable',diagnostic['conservative_basis_codes'])
    def test_nonzero_unknown_or_boolean_image_metadata_stays_full_reserved(self):
        for mode in ('nonzero','unknown','boolean','text_search'):
            self.setup();self.ledger.begin('synthetic-bad-tool-usage');call=self.ledger.reserve('synthetic-bad-tool-usage')
            tools={'image_gen':copy.deepcopy(g.ZERO_IMAGE_USAGE),'web_search':{'num_requests':0}}
            if mode=='nonzero':tools['image_gen']['input_tokens']=1
            elif mode=='unknown':tools['image_gen']['unknown_tokens']=0
            elif mode=='boolean':tools['image_gen']['input_tokens']=False
            else:tools['web_search']['num_requests']=1
            response=self.response({'records':[]});response.update(model='gpt-6.1-sol',service_tier='default',tool_usage=tools)
            self.assertEqual(g.complete_usage(self.ledger,call,response,response['usage'],grounded=False),'full_reservation_retained')
            self.assertEqual(self.ledger.status()['reserved_usd'],3)

    def test_search_rotation_continues_after_ten_reports(self):
        self.setup()
        for i in range(12):
            request='synthetic-history-'+str(i);self.ledger.begin(request)
            directory=p.private_dir(self.ledger.root/request);path=directory/'report-private.json'
            p.write_private(path,{'mode':'grounded_recovery','verified':[]});self.ledger.finish(request,'research_partial',path)
        coverage=g.prior_coverage(self.ledger)
        self.assertEqual(coverage['prior_grounded_missions'],12)
        self.assertIn(g.FOCI[0],g.discovery_request(coverage,12)['input'])
        self.assertIn(g.FOCI[1],g.discovery_request(coverage,13)['input'])
    def test_split_semantic_address_is_supplied_instead_of_city_only(self):
        from property_visible_source import visible_property_blocks
        html='<main><h1>Example Property LLC</h1><p>We provide property management.</p></main><footer><div>Phoenix, AZ 85004</div><a href="https://maps.app.goo.gl/example"><div>123 North Main Street,</div><div>Phoenix, AZ 85004</div></a><p>602-555-0101</p></footer>'
        observed=visible_property_blocks(html);page,diagnostic=g.balanced_evidence_page(observed,'Example Property LLC')
        self.assertTrue(diagnostic['evidence_text_shown']['address'])
        self.assertTrue(any('123 North Main Street, Phoenix, AZ 85004' in text for text in page['blocks']))
        page,diagnostic=g.balanced_evidence_page(visible_property_blocks('<div>Phoenix, AZ 85004</div>'),'Example')
        self.assertFalse(diagnostic['evidence_text_shown']['address'])

if __name__=='__main__':unittest.main()
