"""Real server re-entry MAC/live guards at research and journey preparation gates."""
import copy,hashlib,json,runpy,sys,unittest,uuid
from datetime import datetime,timezone
from pathlib import Path
from unittest.mock import patch
sys.path.insert(0,str(Path(__file__).parent/'api'))
import campaign_reentry as c
import rolling_vendor_research as rolling
import scoped_journey_api as journey
import held_packet_api as held
import official_research as research
from fastapi import FastAPI,HTTPException

class Tests(unittest.IsolatedAsyncioTestCase):
    async def setup(self,authorized=True):
        fixtures=runpy.run_path(str(Path(__file__).with_name('test-campaign-reentry.py')))
        self.f=fixtures['Tests']();self.f.setup()
        packetfixture=runpy.run_path(str(Path(__file__).with_name('test-scoped-growth.py')))['Tests']()
        packetfixture.setup();self.packet=packetfixture.packet
        recipient=self.packet['recipient'];self.secret='secret'
        self.f.target.update(business_name=recipient['business_name'],public_email=recipient['public_email'],market=recipient['market'],
            service_key=recipient['category_key'],source_url=recipient['source_url']+'old',public_phone=recipient['public_phone'])
        if authorized:await c.authorize(self.f.conn,self.f.target['target_id'],self.secret,'ci-reentry-integration')
        self.writes=[];self.preview=None;outer=self
        class Conn:
            async def fetch(self,sql,*args):return await outer.f.conn.fetch(sql,*args)
            async def fetchval(self,sql,*args):
                if sql in (held.HISTORY_SQL,rolling.HISTORY_SQL):return True
                return await outer.f.conn.fetchval(sql,*args)
            async def fetchrow(self,sql,*args):
                if sql==rolling.HISTORY_DIAGNOSTIC_SQL:return {key:key=='outreach' for key in rolling.HISTORY_BRANCHES}
                if 'market_inventory_candidates' in sql:return recipient
                if 'growth_owner_previews' in sql:return outer.preview
                if 'growth_outreach_targets' in sql and 'lower(public_email)' in sql:return copy.deepcopy(outer.f.target)
                return await outer.f.conn.fetchrow(sql,*args)
            def transaction(self,**kwargs):return outer.f.conn.transaction()
            async def execute(self,sql,*args):
                outer.writes.append(sql)
                if sql.startswith('update growth_outreach_targets'):
                    outer.f.target['source_data']=json.loads(args[1])
                    if len(args)>2:
                        outer.f.target.update(zip(('business_name','public_email','public_phone','source_url','market','service_key'),args[2:]))
                        outer.f.target['status']='contactable'
                elif sql.startswith('insert into growth_owner_previews'):outer.preview=args
                else:raise AssertionError('forbidden mutation '+sql)
        self.conn=Conn()
        class Pool:
            def acquire(inner):return inner
            async def __aenter__(inner):return outer.conn
            async def __aexit__(inner,*args):pass
        app=FastAPI();app.state.pool=Pool()
        self.endpoint=journey.install(app,lambda key:None,self.secret,[str(uuid.uuid4()) for _ in range(9)],lambda:True,{},
            lambda target,**kw:'https://example.test/owner',lambda target,*args,**kw:(target['service_key'],'subject','body','<p>body</p>','https://example.test/owner'))
    async def test_real_signed_oldseven_research_gate_and_contacted_journey(self):
        await self.setup();old=copy.deepcopy(self.f.rows);recipient=self.packet['recipient']
        # Empty mailbox may discover expected address; final fresh address is mandatory.
        permit=await rolling.no_history(self.conn,dict(recipient,public_email=''),secret=self.secret)
        self.assertEqual(permit['expected_email'],recipient['public_email'])
        await rolling.no_history(self.conn,recipient,recipient['public_email'],self.secret)
        with self.assertRaises(rolling.Held):await rolling.no_history(self.conn,recipient,'wrong@example.test',self.secret)
        with patch.object(journey,'compile_native_packet',return_value=self.packet),patch.object(journey,'seal_export',side_effect=lambda payload,*args:payload):
            result=await self.endpoint('ci-reentry-prepare',str(recipient['candidate_id']),'admin')
        self.assertEqual(result['profile']['state'],'draft');self.assertTrue(result['outreach_held'])
        self.assertEqual(self.f.target['status'],'contactable');self.assertEqual(self.f.target['source_url'],recipient['source_url'])
        self.assertEqual(self.f.target['source_data']['historical_reentry_target_archive']['status'],'contacted')
        self.assertEqual(self.f.rows,old);self.assertEqual(len(self.writes),2)
    async def test_native_compiler_reentry_requires_current_native_and_fresh_email(self):
        await self.setup();recipient=self.packet['recipient'];url=recipient['source_url']
        entity={'@type':'CleaningService','name':recipient['business_name'],'url':url,'email':recipient['public_email'],
            'telephone':recipient['public_phone'],'description':'Commercial cleaning',
            'address':{'streetAddress':'100 Main Street','addressLocality':'Phoenix','addressRegion':'AZ','postalCode':'85004'}}
        document='<script type="application/ld+json">'+json.dumps(entity)+'</script><h2>Office Cleaning</h2>'
        digest=hashlib.sha256(document.encode()).hexdigest()
        recipient.update(research.parse_record(recipient,url,document,digest,self.secret))
        receipt=research.FetchedPageReceipt(url,url,document.encode(),digest,datetime.now(timezone.utc).isoformat(),200,'text/html',())
        with patch.object(research,'fetch_page_receipt',return_value=receipt) as fetch,patch.object(held,'compile_held_packet',return_value=copy.deepcopy(self.packet)):
            result=await held.compile_native_packet(self.conn,recipient['candidate_id'],self.secret,frozenset(),lambda:True,{},25)
        self.assertEqual(result['recipient']['public_email'],self.f.target['public_email']);fetch.assert_called_once()
        self.f.rows[0]['opt_out']=True
        with patch.object(research,'fetch_page_receipt') as fetch:
            with self.assertRaises(ValueError):await held.compile_native_packet(self.conn,recipient['candidate_id'],self.secret,frozenset(),lambda:True,{},25)
            fetch.assert_not_called()

    async def test_noauthorization_optout_or_currentcohort_never_bypass(self):
        for mode in ('missing','optout','current'):
            await self.setup(authorized=mode!='missing')
            if mode=='optout':self.f.rows[0]['opt_out']=True
            if mode=='current':self.f.batch[0]='current-twelve-target'
            recipient=self.packet['recipient'];old=copy.deepcopy(self.f.rows)
            with self.assertRaises(rolling.Held):await rolling.no_history(self.conn,recipient,recipient['public_email'],self.secret)
            with patch.object(journey,'compile_native_packet',return_value=self.packet),patch.object(journey,'seal_export',return_value={}):
                with self.assertRaises(HTTPException):await self.endpoint('ci-reentry-prepare',str(recipient['candidate_id']),'admin')
            self.assertEqual(self.f.rows,old);self.assertEqual(self.writes,[])

if __name__=='__main__':unittest.main()
