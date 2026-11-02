#!/usr/bin/env python3
"""Territory and checkout invariants, using the production functions."""
import ast,asyncio,re,unittest
from pathlib import Path
class HTTPError(Exception):
    def __init__(self,status,detail):self.status_code=status;super().__init__(detail)
source=ast.parse(Path(__file__).with_name('api').joinpath('app.py').read_text())
names={'clean','growth_territory_markets','growth_request_territory','growth_qualified_territory_candidates','growth_sample_checkout'}
nodes=[n for n in source.body if isinstance(n,(ast.FunctionDef,ast.AsyncFunctionDef)) and n.name in names]
BASE={'re':re,'HTTPException':HTTPError,'DEFAULT_SOURCE_NATIVE_MARKETS':('Flagstaff','Sedona','Cottonwood','Camp Verde','Winslow'), 'GROWTH_SAMPLE_MIN_RESERVE':125}
def namespace(**extra):
    ns=dict(BASE,**extra);exec(compile(ast.Module(body=nodes,type_ignores=[]),'production-territory','exec'),ns);return ns
class Tests(unittest.IsolatedAsyncioTestCase):
    def test_explicit_cities_canonical_and_no_inferred_neighbors(self):
        ns=namespace();self.assertEqual(ns['growth_territory_markets']('Sedona',['Cottonwood','Camp Verde','cottonwood']),['Sedona','Cottonwood','Camp Verde'])
        self.assertEqual(ns['growth_request_territory']({'market':'Sedona','service_area':'100 miles'}),['Sedona'])
    def test_foreign_state_unknown_or_string_scope_rejected(self):
        ns=namespace()
        for cities in (['Henderson'],['Cordes Junction'],'Sedona,Cottonwood',[{'city':'Sedona'}]):
            with self.assertRaises(HTTPError):ns['growth_territory_markets']('Sedona',cities)
    async def test_combined_pool_deduplicates_and_retains_actual_cities(self):
        calls=[]
        async def select(conn,service,market,*args,**kw):
            calls.append(market)
            return [{'business_name':'Shared Company','market':market},*[{'business_name':market+str(i),'market':market} for i in range(79)],{'business_name':'Wrong city injected','market':'Winslow'}]
        ns=namespace(growth_qualified_candidates=select)
        rows=await ns['growth_qualified_territory_candidates'](None,'pressure_washing',['Sedona','Cottonwood'],limit=125)
        self.assertEqual(len(rows),125);self.assertEqual({r['market'] for r in rows},{'Sedona','Cottonwood'})
        self.assertEqual(sum(r['business_name']=='Shared Company' for r in rows),1);self.assertEqual(calls,['Sedona','Cottonwood'])
    async def test_thin_region_not_padded_and_single_city_unchanged(self):
        async def select(conn,service,market,*args,**kw):return [{'market':market,'business_name':market+str(i)} for i in range(4)]
        ns=namespace(growth_qualified_candidates=select)
        self.assertEqual(len(await ns['growth_qualified_territory_candidates'](None,'pressure_washing',['Sedona','Cottonwood'],limit=125)),8)
        self.assertEqual(len(await ns['growth_qualified_territory_candidates'](None,'pressure_washing',['Sedona'],limit=125)),4)
    async def checkout(self,remaining=120,blocked=0,valid=True,status='delivered',email='owner@example.invalid'):
        saved=[dict(candidate_id=str(i),business_name=str(i),market='Sedona') for i in range(5)]
        class Conn:
            async def fetchrow(self,*args):return dict(email='owner@example.invalid',provider_service_key='pressure_washing',status=status,market='Sedona',selected_markets=['Sedona','Cottonwood'],ideal_customer='',exclusions='',business_name='Fixture')
            async def fetch(self,sql,*args):return saved
            async def fetchval(self,sql,*args):return blocked if 'count(*)' in sql else 'https://buy.stripe.com/fixture'
        calls=[]
        async def candidates(conn,service,markets,*args,**kw):calls.append((markets,kw));return [{}]*remaining
        ns=namespace(growth_qualified_territory_candidates=candidates,growth_saved_sample_is_current=lambda *a:valid,growth_recipient_business_key=lambda x:'fixture',growth_checkout_url=lambda *a:'checkout')
        # The source namespace includes the real wrapper; install this selector after compilation.
        ns['growth_qualified_territory_candidates']=candidates
        result=await ns['growth_sample_checkout'](Conn(),email,'id','pressure_washing');return result,calls
    async def test_replay_or_nurture_cannot_offer_underfilled_pool(self):
        self.assertEqual((await self.checkout(119))[0],'');self.assertEqual((await self.checkout(120))[0],'checkout')
    async def test_suppressed_stale_completed_or_wrong_owner_never_get_checkout(self):
        for kw in ({'blocked':1},{'valid':False},{'status':'fulfilled'},{'email':'other@example.invalid'}):self.assertEqual((await self.checkout(**kw))[0],'')
    async def test_checkout_reads_saved_scope_and_excludes_original_five(self):
        _,calls=await self.checkout();self.assertEqual(calls[0][0],['Sedona','Cottonwood']);self.assertEqual(len(calls[0][1]['exclude_ids']),5);self.assertEqual(calls[0][1]['delivery_kind'],'paid')
if __name__=='__main__':unittest.main()
