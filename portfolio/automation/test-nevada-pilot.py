#!/usr/bin/env python3
"""Nevada state boundaries, held launch, truthful data, and regulated intake gates."""
import copy
import hashlib
import importlib.util
import itertools
import json
import runpy
from unittest.mock import patch
from pathlib import Path
import unittest

ROOT=Path(__file__).resolve().parents[1]
spec=importlib.util.spec_from_file_location('nv',ROOT/'automation/api/nevada_pilot.py')
nv=importlib.util.module_from_spec(spec); spec.loader.exec_module(nv)

class PolicyTests(unittest.TestCase):
    def payload(self,**overrides):
        return dict(state_code='NV',market='Henderson',audience='household',service_key='solar_panel_cleaning',email='TEST@example.com',scope='Solar panel cleaning companies',consent=True,**overrides)
    def test_all_switch_combinations(self):
        for global_hold,nv_hold,enabled in itertools.product(['true','false'],repeat=3):
            e=dict(BMC_OWNER_LAUNCH_HOLD=global_hold,NV_PILOT_OWNER_LAUNCH_HOLD=nv_hold,NV_PILOT_INTAKE_ENABLED=enabled)
            self.assertEqual(nv.intake_open(e),global_hold==nv_hold=='false' and enabled=='true')
    def test_safe_defaults_and_explicit_values(self):
        for e in ({},{'NV_PILOT_INTAKE_ENABLED':'true'},dict(BMC_OWNER_LAUNCH_HOLD='',NV_PILOT_OWNER_LAUNCH_HOLD='',NV_PILOT_INTAKE_ENABLED='true')):
            self.assertFalse(nv.intake_open(e))
    def test_state_and_city_boundaries(self):
        for state,city in [('AZ','Henderson'),('NV','Phoenix'),('NV','North Las Vegas'),('NV','Las Vegas, AZ')]:
            p=self.payload();p.update(state_code=state,market=city)
            with self.assertRaises(ValueError):nv.validate_request(p)
    def test_no_scope_override_or_owner_fields(self):
        p=self.payload();p.update(state_code='NV',owner_approved=True,status='fulfilled',checkout_enabled=True)
        clean=nv.validate_request(p)
        self.assertEqual(clean['email'],'test@example.com');self.assertNotIn('owner_approved',clean)
        self.assertNotIn('status',clean);self.assertNotIn('checkout_enabled',clean)
    def test_regulated_categories_rejected_for_both_audiences(self):
        blocked=[s['service_key'] for s in nv.CONFIG['services'] if s['availability']=='licensing_hold']
        self.assertEqual(len(blocked),6)
        for k,a in itertools.product(blocked,['business','household']):
            p=self.payload();p.update(service_key=k,audience=a,business_name='Fixture')
            with self.assertRaises(ValueError):nv.validate_request(p)
    def test_employee_scope_cannot_use_cleaning_category(self):
        for text in ['Need a nanny','live-in housekeeper','house manager placement','personal care for parent','staff placement','babysitter needed','full time housekeeper','staffing help']:
            p=self.payload();p.update(service_key='residential_cleaning',scope=text)
            with self.assertRaises(ValueError):nv.validate_request(p)
    def test_wrong_json_field_types_do_not_raise_server_errors(self):
        for key in ['market','service_key']:
            for value in [[],{},None,42]:
                p=self.payload();p[key]=value
                with self.assertRaises(ValueError):nv.validate_request(p)
    def test_consent_must_be_boolean_true(self):
        for consent in [False,None,'true',1]:
            p=self.payload();p['consent']=consent
            with self.assertRaises(ValueError):nv.validate_request(p)
    def test_business_intake_requires_company(self):
        p=self.payload();p['audience']='business'
        with self.assertRaises(ValueError):nv.validate_request(p)
        p['business_name']='Fixture';self.assertEqual(nv.validate_request(p)['audience'],'business')
    def test_payment_stays_closed_even_if_intake_opens(self):
        ready=nv.readiness(dict(BMC_OWNER_LAUNCH_HOLD='false',NV_PILOT_OWNER_LAUNCH_HOLD='false',NV_PILOT_INTAKE_ENABLED='true'))
        self.assertTrue(ready['intake_open'])
        for k in ['checkout_open','outreach_open','employee_placement_open']:self.assertFalse(ready[k])
    def test_no_external_mail_or_shared_database_writes(self):
        source=(ROOT/'automation/api/nevada_pilot.py').read_text()
        self.assertNotIn('send_mail(',source)
        self.assertNotIn('insert into leads',source)
        self.assertNotIn('insert into orders',source)
        self.assertNotIn('growth_sample_requests',source)

class ArtifactTests(unittest.TestCase):
    def test_full_census_hashes_ids_and_state(self):
        folder=ROOT/'data/states/NV';m=json.loads((folder/'census-manifest.json').read_text())
        seen=set();counts={};past=0
        for a in m['artifacts']:
            raw=(folder/a['file']).read_bytes();self.assertEqual(hashlib.sha256(raw).hexdigest(),a['sha256'])
            p=json.loads(raw);self.assertEqual(len(p['records']),a['records'])
            for row in p['records']:
                self.assertEqual(row['state_code'],'NV');self.assertIn(row['market'],nv.MARKETS)
                self.assertNotIn(row['source_id'],seen);seen.add(row['source_id'])
                self.assertFalse(row['delivery_eligible']);self.assertEqual(row['research_status'],'discovery_only')
                for sensitive in ['OWNER','CNTCTPHONE','CNTCSTATEID','MAIN_ADDRESS_LINE1','address','email']:
                    self.assertNotIn(sensitive,row)
                counts[row['market']]=counts.get(row['market'],0)+1
        self.assertEqual(counts,{v['market']:v['records'] for v in m['markets'].values()})
        self.assertGreater(len(seen),40000)
    def test_catalog_clones_keys_and_never_old_copy(self):
        base=json.loads((ROOT/'data/services.json').read_text())['services']
        self.assertTrue({s['service_key'] for s in base} <= set(nv.SERVICES))
        self.assertEqual(len(nv.SERVICES),67)
        self.assertEqual(nv.CONFIG,json.loads((ROOT/'data/states/NV/pilot-config.json').read_text()))
    def test_nevada_copy_and_sequence(self):
        for p in (ROOT/'nevada').rglob('*.html'):
            text=p.read_text().lower()
            for forbidden in ['arizona','prescott','phoenix','scottsdale','sedona']:
                self.assertNotIn(forbidden,text)
            self.assertNotIn('assets/core.js',text)
        sequence=json.dumps(nv.CONFIG['sequence']).lower()
        for word in ['arizona','prescott','phoenix']:self.assertNotIn(word,sequence)
    def test_primary_research_does_not_become_provider_approval(self):
        records=json.loads((ROOT/'data/states/NV/primary-service-research.json').read_text())['records']
        self.assertEqual(len(records),15)
        for row in records:
            self.assertEqual(row['state_code'],'NV');self.assertFalse(row['provider_approved']);self.assertFalse(row['delivery_eligible'])
            self.assertEqual(row['outreach_status'],'held');self.assertTrue(row['source_url'].startswith('https://'))
            self.assertTrue(set(row['service_keys']) <= set(nv.SERVICES),row['business_name'])
    def test_exporter_cannot_request_all_fields(self):
        spec=importlib.util.spec_from_file_location('export_nv',ROOT/'automation/export-nevada-business-census.py')
        exporter=importlib.util.module_from_spec(spec);spec.loader.exec_module(exporter)
        for s in exporter.SOURCES.values():
            for forbidden in ['*','OWNER','CNTCT','ADDRESS','PHONE']:
                self.assertNotIn(forbidden,s['fields'])
    def test_normalizer_flags_expiry_conflict(self):
        spec=importlib.util.spec_from_file_location('export_nv',ROOT/'automation/export-nevada-business-census.py')
        exporter=importlib.util.module_from_spec(spec);spec.loader.exec_module(exporter)
        row=exporter.normalize('las-vegas',{'OBJECTID':1,'BUS_NAME':'Fixture','LICSTATUS':'Active','EXPDTTM':'01-AUG-24'},'2026-11-01')
        self.assertTrue(row['expiry_precedes_retrieval']);self.assertFalse(row['delivery_eligible'])
    def test_nevada_relay_is_read_only_and_fixed_route(self):
        ns=runpy.run_path(str(ROOT/'automation/vps-gitops-relay.py'),run_name='nv_relay_test')
        self.assertIn('nevada_status',ns['READ_ONLY_ACTIONS'])
        self.assertNotIn('nevada_status',ns['EXTERNAL_ACTIONS'])
        execute=ns['execute'];calls=[]
        def post(path,**kwargs):calls.append(path);return {'state_code':'NV','requests':0,'orders':0}
        with patch.dict(execute.__globals__,{'admin_post':post,'current_sha':lambda:'a'*40,'current_branch':lambda:'master','redact':lambda s:s}):
            result=execute({'request_id':'nevada-status-test','action':'nevada_status','args':{'path':'/api/intake'},'allow_external_actions':False})
        self.assertEqual(calls,['/api/admin/nevada/status'])
        self.assertEqual(result['status'],'success')
    def test_legal_pages_keep_nevada_navigation_and_no_legacy_script(self):
        for name in ['privacy','terms']:
            p=ROOT/'nevada'/name/'index.html'
            self.assertTrue(p.exists())
            self.assertNotIn('assets/core.js',p.read_text())
            self.assertIn('/nevada/',p.read_text())
    def test_public_routes_exact_and_admin_not_exposed(self):
        nginx=(ROOT/'automation/nginx-webhooks.conf').read_text()
        self.assertIn('location = /api/nevada/status',nginx);self.assertIn('location = /api/nevada/request',nginx)
        self.assertNotIn('location /api/nevada',nginx);self.assertNotIn('location /api/admin/nevada',nginx)
        self.assertIn('location / { return 404; }',nginx)

if __name__=='__main__':unittest.main()
