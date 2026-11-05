"""Execute actual qualifier with signed V3 fixture and SQL admission simulation."""
import ast,asyncio,copy,json,re,runpy,sys,unittest,urllib.parse
from pathlib import Path
from datetime import datetime,timezone,timedelta
ROOT=Path(__file__).resolve().parent;sys.path[:0]=[str(ROOT/'api'),str(ROOT)]
from official_research import auto_evidence_valid,NATIVE_VERSIONS
fixture=runpy.run_path(str(ROOT/'test-api-pilot-import.py'))['visible_fixture']
class Tests(unittest.IsolatedAsyncioTestCase):
    async def run_qualifier(self,row):
        source=(ROOT/'api/app.py').read_text();tree=ast.parse(source)
        names={'growth_qualified_candidates','growth_candidate_evidence_valid'}
        nodes=[n for n in tree.body if isinstance(n,(ast.FunctionDef,ast.AsyncFunctionDef)) and n.name in names]
        async def exposure(conn,rows,*args):return rows
        ns=dict(ADMIN_KEY='synthetic-import-key',NATIVE_VERSIONS=NATIVE_VERSIONS,re=re,json=json,urllib=urllib,hashlib=__import__('hashlib'),clean=lambda x:str(x or '').strip(),json_dict=lambda x:json.loads(x) if isinstance(x,str) else x,
          auto_evidence_valid=auto_evidence_valid,GROWTH_SOURCE_BLOCKLIST=set(),DEFAULT_SOURCE_NATIVE_MARKETS=['Phoenix','Prescott'],GROWTH_SERVICE_LABELS={'tree_service':'Tree'},growth_selected_categories=lambda *a:['property_management'],growth_customer_url=lambda x:x,
          growth_candidate_is_fresh=lambda r:True,growth_candidate_score=lambda *a:90,growth_fit_reason=lambda *a:'Published role',growth_sales_angle=lambda *a:'Assess fit',growth_exposure_filter=exposure,growth_prospect_key=lambda r:r['business_name'])
        exec(compile(ast.Module(body=nodes,type_ignores=[]),'actual_qualifier','exec'),ns)
        class Conn:
            async def fetch(self,sql,*args):
                self.sql=sql;self.args=args
                assert "side='buyer' and market=$1" in sql and "closed_at is null" in sql
                assert "evidence->>'researched_by'=any($4::text[])" in sql
                return [row] if row['evidence']['researched_by'] in args[3] else []
        conn=Conn();result=await ns['growth_qualified_candidates'](conn,'tree_service','Phoenix')
        return result,conn
    async def test_v3_sql_admitted_then_real_native_validator(self):
        row=fixture()['record'];result,conn=await self.run_qualifier(row)
        self.assertEqual(len(result),1);self.assertIn('vps_property_visible_evidence_v3',conn.args[3])
        row=copy.deepcopy(row);row['evidence']['vps_verification']['signature']='bad'
        self.assertEqual((await self.run_qualifier(row))[0],[])
    async def test_territory_and_source_gates_preserved(self):
        for field,value in [('market','Prescott'),('source_url','https://other.test/')]:
            row=fixture()['record'];row[field]=value
            self.assertEqual((await self.run_qualifier(row))[0],[])
    def test_discovery_cannot_overwrite_v3(self):
        source=(ROOT/'api/app.py').read_text()
        self.assertIn("not in ('assistant_manual_census','vps_primary_site_v1','vps_vendor_published_area_v2','vps_property_visible_evidence_v3')",source)
if __name__=='__main__':unittest.main()
