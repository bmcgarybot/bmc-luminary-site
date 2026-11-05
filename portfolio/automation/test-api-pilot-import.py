"""Offline native-proof importer tests; real parser, synthetic transactional DB."""
import asyncio,copy,hashlib,json,sys,unittest,uuid
from datetime import datetime,timedelta,timezone
from pathlib import Path
sys.path.insert(0,str(Path(__file__).parent));sys.path.insert(0,str(Path(__file__).parent/'api'))
from official_research import parse_record,seal,auto_evidence_valid
from api_pilot_property import validate_property_source
import api_pilot_import as imp
SECRET='synthetic-import-key'


def fixture(number=1):
    url='https://fixture.example.test/property/'+str(number)
    candidate={'candidate_id':str(uuid.uuid5(uuid.NAMESPACE_URL,url)),'side':'buyer','market':'Phoenix',
        'category_key':'property_management','category_label':'Property Management','business_name':'Synthetic Realty '+str(number)}
    entity={'@type':'RealEstateAgent','name':candidate['business_name'],'url':url,'telephone':'6025550100',
        'email':'office'+str(number)+'@example.test','description':'Property management services',
        'address':{'streetAddress':'100 Main Street','addressLocality':'Phoenix','addressRegion':'AZ','postalCode':'85004','addressCountry':'US'}}
    document='<title>'+candidate['business_name']+'</title><main><p>We provide property management services in Phoenix.</p></main><script type="application/ld+json">'+json.dumps(entity)+'</script>'
    fetched=datetime.now(timezone.utc).isoformat();digest=hashlib.sha256(document.encode()).hexdigest()
    record=dict(candidate,**parse_record(candidate,url,document,digest,SECRET))
    record['pilot_property_evidence']=validate_property_source(record,document)
    return {'record':record,'receipt':{'requested_url':url,'final_url':url,'content_sha256':digest,'fetched_at':fetched,
        'http_status':200,'content_type':'text/html','redirect_chain':[],'html_file':candidate['candidate_id']+'.html'}}


def visible_fixture(number=1,secret=SECRET):
    from official_research import FetchedPageReceipt
    from property_visible_source import verify_property_visible_source
    url='https://visible.example.test/property/'+str(number)
    name='Synthetic Visible Property '+str(number)
    c={'candidate_id':str(uuid.uuid5(uuid.NAMESPACE_URL,url)),'business_name':name,'side':'buyer','market':'Phoenix','category_key':'property_management','source_url':url}
    role='We provide property management services in Phoenix.';address='123 North Main Street, Phoenix, AZ 85004';contact='Call 602-555-0101 or email office@example.test'
    doc='<h1>'+name+'</h1><p>'+role+'</p><address>'+address+'</address><p>'+contact+'</p>'
    now=datetime.now(timezone.utc);raw=doc.encode();r=FetchedPageReceipt(url,url,raw,hashlib.sha256(raw).hexdigest(),now.isoformat(),200,'text/html',())
    x={'business_name':name,'source_url':url,'physical_address':address,'public_phone':'6025550101','public_email':'office@example.test','identity_quote':name,'role_quote':role,'address_quote':address,'contact_quote':contact}
    row={**c,**verify_property_visible_source(c,r,x,secret,receipt_is_trusted=lambda v:v is r,now=now)}
    meta={k:(list(getattr(r,k)) if k=='redirect_chain' else getattr(r,k)) for k in ('requested_url','final_url','content_sha256','fetched_at','http_status','content_type','redirect_chain')}
    meta['html_file']=c['candidate_id']+'-0.html'
    return {'record':row,'receipt':meta,'contact_receipts':[],'verification_kind':'visible_v3'}


class Conn:
    def __init__(self):self.existing=set();self.rows=[];self.calls=[];self.history=False;self.conflict=False;self.fail_insert=False
    def transaction(self):
        outer=self
        class Tx:
            async def __aenter__(self):self.saved=copy.deepcopy(outer.rows)
            async def __aexit__(self,kind,*args):
                if kind:outer.rows=self.saved
        return Tx()
    async def execute(self,sql,*args):self.calls.append((sql,args));assert sql.startswith(('select pg_advisory','set local '))
    async def fetchval(self,sql,*args):
        self.calls.append((sql,args))
        if sql==imp.EXISTING_SQL:return uuid.uuid4() if args[2] in self.existing else None
        if sql==imp.HISTORY_SQL:return self.history
        assert sql==imp.INSERT_SQL
        if self.fail_insert:raise RuntimeError('synthetic database error')
        if self.conflict:return None
        self.rows.append(args);return uuid.uuid4()


class Tests(unittest.IsolatedAsyncioTestCase):
    async def test_visible_v3_actual_report_shape(self):
        entry=visible_fixture();result=await imp.import_report(Conn(),{'verified':[entry]},SECRET)
        self.assertEqual(result['inserted'],1)
        for field,value in [('content_sha256','0'*64),('fetched_at','2020-01-01T00:00:00+00:00')]:
            bad=copy.deepcopy(entry);bad['receipt'][field]=value
            with self.assertRaises(imp.InvalidProposal):imp.validate_record(bad,SECRET)

    async def test_actual_worker_shape_valid_native_inserts_exactly_once_without_any_updates(self):
        entry=fixture();conn=Conn();before=copy.deepcopy(entry)
        result=await imp.import_report(conn,{'verified':[entry],'verified_count':1},SECRET)
        self.assertEqual(result['inserted'],1);self.assertEqual(result['validated'],1);self.assertEqual(entry,before)
        row=conn.rows[0];evidence=json.loads(row[7]);self.assertEqual(evidence['vps_verification'],entry['record']['evidence']['vps_verification'])
        projected=dict(entry['record'],evidence=evidence)
        self.assertTrue(auto_evidence_valid(projected,SECRET));self.assertNotIn('candidate_id',imp.INSERT_SQL.split('values(',1)[0])
        self.assertIn('do nothing returning',imp.INSERT_SQL.lower())
        for sql,args in conn.calls:self.assertFalse(sql.lstrip().lower().startswith(('update ','delete ','insert into orders','insert into vendors','insert into outreach')))
        self.assertNotIn(entry['record']['business_name'],json.dumps(result))
        self.assertNotIn(entry['record']['public_email'],json.dumps(result))

    async def test_conflicts_existing_manual_and_exposure_identities_left_unchanged(self):
        entry=fixture();conn=Conn();conn.existing.add(imp.legal(entry['record']['business_name']))
        result=await imp.import_report(conn,{'verified':[entry]},SECRET)
        self.assertEqual(result['existing_unchanged'],1);self.assertEqual(conn.rows,[])
        conn=Conn();conn.conflict=True
        result=await imp.import_report(conn,{'verified':[entry]},SECRET)
        self.assertEqual(result['existing_unchanged'],1);self.assertEqual(conn.rows,[])

    async def test_actual_customer_history_and_suppressions_hold_without_mutation(self):
        conn=Conn();conn.history=True;result=await imp.import_report(conn,{'verified':[fixture()]},SECRET)
        self.assertEqual(result['held_history'],1);self.assertEqual(conn.rows,[])
        for table in ('outreach_suppressions','growth_prospect_suppressions','growth_outreach_targets','outreach','events',
            'growth_sample_requests','orders','growth_purchase_offers','growth_prospect_exposures'):
            self.assertIn('from '+table,imp.HISTORY_SQL)

    async def test_wrong_native_scope_hold_closure_or_manual_not_imported(self):
        for field,value in (('side','vendor'),('market','Prescott'),('category_key','retail'),('status','closed'),('closed_at','2026-01-01'),('promoted_entity_id','existing-customer')):
            entry=fixture();entry['record'][field]=value;conn=Conn()
            result=await imp.import_report(conn,{'verified':[entry]},SECRET)
            with self.subTest(field=field):self.assertEqual((result['invalid'],result['inserted']),(1,0))
        for changes in ({'researched_by':'assistant_manual_census'},{'qualification_hold':True}):
            entry=fixture();entry['record']['evidence'].update(changes)
            with self.assertRaises(imp.InvalidProposal):imp.validate_record(entry,SECRET)

    def test_proof_tamper_candidate_mismatch_and_contact_punctuation_rejected(self):
        for mode in ('signature','candidate','email_punctuation','source','role'):
            entry=fixture()
            if mode=='signature':entry['record']['evidence']['vps_verification']['signature']='bad'
            if mode=='candidate':entry['record']['candidate_id']=str(uuid.uuid4())
            if mode=='email_punctuation':entry['record']['public_email']='of.fice1@example.test'
            if mode=='source':entry['record']['source_url']='https://other.example.test/'
            if mode=='role':entry['record'].pop('pilot_property_evidence')
            with self.subTest(mode=mode),self.assertRaises(imp.InvalidProposal):imp.validate_record(entry,SECRET)

    def test_receipt_digest_url_country_type_time_and_redirect_binding(self):
        for field,value in (('content_sha256','b'*64),('final_url','https://other.example.test/'),
            ('requested_url','https://other.example.test/'),('http_status',403),('content_type','application/json'),
            ('fetched_at',(datetime.now(timezone.utc)-timedelta(hours=3)).isoformat()),
            ('redirect_chain',['https://yelp.com/company'])):
            entry=fixture();entry['receipt'][field]=value
            with self.subTest(field=field),self.assertRaises(imp.InvalidProposal):imp.validate_record(entry,SECRET)
        entry=fixture();proof=entry['record']['evidence']['vps_verification'];proof.pop('signature')
        proof['checked_at']=(datetime.now(timezone.utc)-timedelta(hours=3)).isoformat();proof['signature']=seal(proof,SECRET)
        with self.assertRaises(imp.InvalidProposal):imp.validate_record(entry,SECRET)

    async def test_duplicate_names_not_counted_or_reseeded(self):
        entry=fixture();conn=Conn();result=await imp.import_report(conn,{'verified':[entry,copy.deepcopy(entry)]},SECRET)
        self.assertEqual((result['inserted'],result['duplicates']),(1,1))

    async def test_transaction_failure_rolls_back_and_does_not_claim_imported(self):
        conn=Conn();conn.fail_insert=True
        with self.assertRaises(RuntimeError):await imp.import_report(conn,{'verified':[fixture()]},SECRET)
        self.assertEqual(conn.rows,[])

    def test_no_export_wrapper_raw_proposals_or_unbounded_report(self):
        for report in ({'report':{'verified':[fixture()]}},{'records':[fixture()]},{'verified':[fixture()]*61},{'verified':[fixture()],'verified_count':0}):
            with self.subTest(shape=list(report)),self.assertRaises(ValueError):imp.report_records(report)
        self.assertEqual(imp.report_records({'verified':[]}),[])

if __name__=='__main__':unittest.main()
