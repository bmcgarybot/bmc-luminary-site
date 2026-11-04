"""Actual signed frozen25 scope bypasses other-customer budgets only, never duplicates."""
import ast,copy,json,re,runpy,sys,unittest,uuid
from datetime import datetime,timezone,timedelta
from pathlib import Path
sys.path.insert(0,str(Path(__file__).parent/'api'))
from scoped_growth import signature
SECRET='secret'
class Tests(unittest.IsolatedAsyncioTestCase):
    def setup(self):
        f=runpy.run_path(str(Path(__file__).with_name('test-scoped-growth.py')))['Tests']();f.setup();self.target=f.target
        self.profile=self.target['source_data']['scoped_offer'];self.rows=[dict(candidate_id=cid,business_name='Synthetic Office '+str(i),market='Phoenix',category_key='insurance_professional',public_phone=f'602555{i:04}',public_email='') for i,cid in enumerate(self.profile['candidate_ids'])]
        self.extra=dict(self.rows[-1],candidate_id=str(uuid.uuid4()),business_name='Outside Frozen25',public_phone='6025559999')
        self.history=[];self.blocked=[];outer=self
        class Conn:
            async def fetch(self,sql,*args):
                if 'from growth_prospect_suppressions' in sql:return [{'prospect_key':key} for key in outer.blocked]
                if 'from growth_prospect_exposures' in sql:return outer.history
                if 'from growth_outreach_targets' in sql:return [outer.target] if outer.target else []
                raise AssertionError(sql)
        self.conn=Conn()
        tree=ast.parse(Path(__file__).with_name('api').joinpath('app.py').read_text());names={'clean','growth_prospect_key','growth_contact_key','growth_recipient_business_key','growth_exposure_filter'}
        nodes=[n for n in tree.body if isinstance(n,(ast.FunctionDef,ast.AsyncFunctionDef)) and n.name in names]
        self.ns=dict(re=re,datetime=datetime,timezone=timezone,ADMIN_KEY=SECRET,GROWTH_NONEXCLUSIVE_COHORT_IDS=(),GROWTH_FREE_DISTINCT_90D=2,GROWTH_ALL_DISTINCT_90D=3,GROWTH_ALL_DISTINCT_LIFETIME=8,GROWTH_FREE_COOLDOWN_DAYS=30,GROWTH_PAID_COOLDOWN_DAYS=30)
        exec(compile(ast.Module(body=nodes,type_ignores=[]),'actual_scoped_nonexclusive','exec'),self.ns)
    def exposures(self,rows,email='other@example.test',business='business:other',kind='paid'):
        for row in rows:self.history.append(dict(prospect_key=self.ns['growth_prospect_key'](row),contact_key=self.ns['growth_contact_key'](row),recipient_key=email,recipient_business_key=business,delivery_kind=kind,created_at=datetime.now(timezone.utc)))
    async def select(self,rows=None,kind='paid',**overrides):
        return await self.ns['growth_exposure_filter'](self.conn,rows or self.rows,self.profile['email'],kind,overrides.get('business',self.ns['growth_recipient_business_key'](self.profile['business_name'])),overrides.get('service','commercial_cleaning'))
    async def test_draft_and_approved_exact25_survive_other_customer_caps_cooldown(self):
        for state in ('draft','approved'):
            self.setup()
            p=self.profile;p.pop('signature');p['state']=state;p['signature']=signature(p,SECRET)
            for i in range(10):self.exposures(self.rows+[self.extra],email=f'other{i}@example.test',business=f'business:other{i}',kind='free')
            for kind in ('free','paid'):
                eligible=await self.select(self.rows+[self.extra],kind)
                self.assertEqual([r['candidate_id'] for r in eligible],self.profile['candidate_ids'])
                self.assertEqual(eligible[0]['exposure_count_lifetime'],10)
    async def test_own_email_business_shared_contact_and_suppression_still_block(self):
        self.setup();self.exposures(self.rows)
        self.exposures([self.rows[0]],email=self.profile['email'])
        self.exposures([self.rows[1]],business=self.ns['growth_recipient_business_key'](self.profile['business_name']))
        shared=dict(self.rows[2],business_name='Different Site Same Contact');self.exposures([shared],email=self.profile['email'])
        self.blocked=[self.ns['growth_prospect_key'](self.rows[3]),self.ns['growth_contact_key'](self.rows[4])]
        result=await self.select();self.assertEqual([r['candidate_id'] for r in result],self.profile['candidate_ids'][5:])
    async def test_no_profile_tamper_expiry_nonexclusive_false_and_wrong_context_get_no_exception(self):
        for kind in ('missing','tampered','expired','exclusive','business','service','market','category'):
            self.setup();self.exposures(self.rows)
            kwargs={};rows=self.rows
            if kind=='missing':self.target=None
            elif kind=='tampered':self.profile['nonexclusive']=False
            elif kind in ('expired','exclusive'):
                self.profile.pop('signature')
                if kind=='expired':self.profile['expires_at']=(datetime.now(timezone.utc)-timedelta(seconds=1)).isoformat()
                else:self.profile['nonexclusive']=False
                self.profile['signature']=signature(self.profile,SECRET)
            elif kind=='business':kwargs['business']='business:unrelated'
            elif kind=='service':kwargs['service']='pressure_washing'
            elif kind=='market':rows=[dict(r,market='Tucson') for r in rows];self.history=[];self.exposures(rows)
            else:rows=[dict(r,category_key='retail') for r in rows]
            self.assertEqual(await self.select(rows,**kwargs),[],kind)

if __name__=='__main__':unittest.main()
