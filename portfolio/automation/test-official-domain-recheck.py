"""Current source policy overrides correctly signed historical directory evidence."""
import ast,hashlib,json,re,sys,unittest,urllib.parse,uuid
from pathlib import Path
from unittest.mock import patch
sys.path.insert(0,str(Path(__file__).parent/'api'))
import official_research as research

DOMAINS=('hotelscombined.com','solvhealth.com','sobernation.com')

class Tests(unittest.TestCase):
    def historical(self,domain):
        candidate=dict(candidate_id=uuid.uuid4(),business_name='Synthetic Medical Clinic',side='buyer',market='Phoenix',category_key='medical_centers',category_label='Medical centers')
        url='https://www.'+domain+'/listing/synthetic-clinic'
        entity={'@type':'MedicalClinic','name':candidate['business_name'],'url':url,'telephone':'6025550100','email':'info@fixture.example','address':{'streetAddress':'100 Main Street','addressLocality':'Phoenix','addressRegion':'AZ','postalCode':'85004'}}
        document='<script type="application/ld+json">'+json.dumps(entity)+'</script>'
        digest=hashlib.sha256(document.encode()).hexdigest()
        with patch.object(research,'BLOCKED',research.BLOCKED-set(DOMAINS)):
            parsed=research.parse_record(candidate,url,document,digest,'synthetic-secret')
            persisted=dict(candidate,**parsed)
            self.assertTrue(research.auto_evidence_valid(persisted,'synthetic-secret'))
        return persisted,url,document,digest
    def test_previously_valid_persisted_hmac_is_rejected_without_changing_history(self):
        for domain in DOMAINS:
            with self.subTest(domain=domain):
                row,_,_,_=self.historical(domain);original=json.dumps(row,sort_keys=True,default=str)
                signed=dict(row['evidence']['vps_verification']);signature=signed.pop('signature')
                self.assertEqual(signature,research.seal(signed,'synthetic-secret'))
                self.assertFalse(research.auto_evidence_valid(row,'synthetic-secret'))
                self.assertEqual(json.dumps(row,sort_keys=True,default=str),original)
    def test_future_parse_blocks_root_and_subdomains(self):
        for domain in DOMAINS:
            row,url,document,digest=self.historical(domain)
            for host in (domain,'www.'+domain,'sub.'+domain):
                blocked='https://'+host+'/listing/synthetic-clinic'
                self.assertFalse(research.allowed_url(blocked))
                with self.assertRaisesRegex(ValueError,'untrusted_source'):
                    research.parse_record(row,blocked,document,digest,'synthetic-secret')
    def test_fetch_blocks_before_dns_or_transport_for_each_domain(self):
        for domain in DOMAINS:
            for fetch in (research.fetch_page,research.fetch_page_receipt):
                with self.subTest(domain=domain,fetch=fetch.__name__),patch.object(research,'public_addresses') as dns,patch.object(research,'PinnedHTTPS') as transport:
                    with self.assertRaisesRegex(ValueError,'unsupported_source_url'):fetch('https://'+domain+'/listing/synthetic-clinic')
                    dns.assert_not_called();transport.assert_not_called()
    def test_actual_growth_gate_rejects_even_manual_curated_or_native_flags(self):
        tree=ast.parse(Path(__file__).with_name('api').joinpath('app.py').read_text())
        nodes=[]
        for node in tree.body:
            if isinstance(node,ast.Assign) and any(isinstance(t,ast.Name) and t.id in ('INVENTORY_BLOCKED_DOMAINS','GROWTH_SOURCE_BLOCKLIST') for t in node.targets):nodes.append(node)
            elif isinstance(node,ast.FunctionDef) and node.name in ('growth_customer_url','growth_candidate_evidence_valid'):nodes.append(node)
        ns=dict(re=re,urllib=urllib,clean=lambda value:str(value or '').strip())
        exec(compile(ast.Module(body=nodes,type_ignores=[]),'actual_directory_buyer_gate','exec'),ns)
        for domain in DOMAINS:
            for provenance in ('assistant_manual_census','vps_primary_site_v1'):
                row=dict(market='Phoenix',source_url='https://'+domain+'/listing/synthetic',official_site=True,source_tier='direct',verification_status='direct_evidence',
                    evidence={'researched_by':provenance,'artifact_files':['synthetic-reviewed-file.json']})
                self.assertFalse(ns['growth_candidate_evidence_valid'](row,'Phoenix'))

    def test_unrelated_primary_domain_policy_remains_available(self):
        self.assertTrue(research.allowed_url('https://fixture.example/official-location'))
        self.assertTrue(research.allowed_url('https://notsolvhealth.com/official-location'))

if __name__=='__main__':unittest.main()
