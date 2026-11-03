#!/usr/bin/env python3
"""Exercise production qualification filters with synthetic data; no external services."""
import ast
import json
import asyncio
from datetime import datetime, timedelta, timezone
import hashlib
from pathlib import Path
import re
import unittest
import urllib.parse

SOURCE=ast.parse(Path(__file__).with_name("api").joinpath("app.py").read_text())
NAMES={"clean","growth_category_terms","growth_selected_categories","growth_candidate_is_fresh",
       "growth_qualified_candidates","growth_prospect_key","growth_candidate_evidence_valid","json_dict","growth_customer_url","growth_sample_public_rows"}
nodes=[node for node in SOURCE.body if isinstance(node,(ast.FunctionDef,ast.AsyncFunctionDef)) and node.name in NAMES]
async def exposure_passthrough(conn,rows,*args): return rows
import sys
sys.path.insert(0,str(Path(__file__).parent/"api"))
from growth_pdf import present_prospect_rows, format_business_phone
ns={"format_business_phone":format_business_phone,"present_prospect_rows":present_prospect_rows,"json":json,"urllib":urllib,"DEFAULT_SOURCE_NATIVE_MARKETS":("Prescott","Prescott Valley","Sedona","Flagstaff"),"datetime":datetime,"timezone":timezone,"timedelta":timedelta,"hashlib":hashlib,"re":re,
    "GROWTH_BUYER_CATEGORIES":{"pressure_washing":["restaurants","retail"]},
    "GROWTH_SERVICE_LABELS":{"pressure_washing":"Pressure washing"},"GROWTH_SOURCE_BLOCKLIST":("loc8nearme.com","yelp.com"),
    "growth_exposure_filter":exposure_passthrough,
    "growth_candidate_score":lambda row,service:100,
    "growth_fit_reason":lambda row,service:"Synthetic fit",
    "growth_sales_angle":lambda row,service:"Synthetic angle"}
exec(compile(ast.Module(body=nodes,type_ignores=[]),"real_qualification_gates","exec"),ns)

class Connection:
    def __init__(self,rows):self.rows=rows;self.calls=0
    async def fetch(self,*args):self.calls+=1;return self.rows

class Tests(unittest.TestCase):
    def test_excluding_all_categories_never_restores_them(self):
        categories=ns["growth_selected_categories"]("pressure_washing","","restaurants and retail")
        self.assertEqual(categories,[])
        conn=Connection([])
        self.assertEqual(asyncio.run(ns["growth_qualified_candidates"](conn,"pressure_washing","Test",exclusions="restaurants and retail")),[])
        self.assertEqual(conn.calls,0)

    def test_freshness_is_a_hard_gate_even_for_score_100(self):
        now=datetime.now(timezone.utc)
        rows=[]
        for name,verified in (("Fresh",now),("Stale",now-timedelta(days=91)),("Missing",None),("Future",now+timedelta(days=1))):
            rows.append({"business_name":name,"market":"Test","category_key":"restaurants",
                         "source_url":"https://synthetic.example","source_domain":"synthetic.example",
                         "public_phone":"9285550100","official_site":True,"last_verified_at":verified,
                         "last_seen_at":now,"updated_at":now,"evidence":{"artifact_files":["synthetic-reviewed.json"],"researched_by":"assistant_manual_census"}})
        result=asyncio.run(ns["growth_qualified_candidates"](Connection(rows),"pressure_washing","Test"))
        self.assertEqual([row["business_name"] for row in result],["Fresh"])

    def evidence_row(self,**patch):
        row=dict(business_name="Hilton Sedona Resort at Bell Rock",market="Sedona",
            category_key="restaurants",source_url="https://www.hilton.com/en/hotels/sdxsehh/",
            source_domain="hilton.com",official_site=True,public_phone="9282844040",
            last_verified_at=datetime.now(timezone.utc),evidence={"artifact_files":["synthetic-reviewed.json"],"researched_by":"assistant_manual_census"})
        row.update(patch);return row

    def test_chain_indexes_and_recruitment_pages_are_not_property_evidence(self):
        for url in ('https://www.cvs.com/store-locator/cvs-pharmacy-locations/Arizona/Phoenix',
                    'https://www.walgreens.com/storelocator/find.jsp?requestType=locator',
                    'https://www.frysfood.com/stores/grocery/az/phoenix',
                    'https://local.safeway.com/safeway/az/phoenix.html',
                    'https://www.sprouts.com/stores/az/',
                    'https://www.marriott.com/en-us/destinations/united-states/arizona/phoenix/hotels-near-desert-ridge.mi',
                    'https://ro.careers.tsmc.com/job/Phoenix-test/'):
            self.assertFalse(ns['growth_candidate_evidence_valid'](self.evidence_row(source_url=url),'Sedona'),url)

    def test_live_directory_and_wrong_city_regressions(self):
        rows=[self.evidence_row(),self.evidence_row(
            business_name="Grocery Stores in Sedona, AZ with Ratings, Reviews, Hours and ...",
            source_url="https://www.loc8nearme.com/arizona/sedona/grocery-stores/",source_domain="loc8nearme.com"),
            self.evidence_row(business_name="Findlay Toyota in Flagstaff AZ Toyota dealer serving Flagstaff - New and Used Toyota dealership Near Sedona AZ",
                source_url="https://www.findlaytoyotaflagstaff.net/",source_domain="findlaytoyotaflagstaff.net")]
        result=asyncio.run(ns["growth_qualified_candidates"](Connection(rows),"pressure_washing","Sedona"))
        self.assertEqual([r['business_name'] for r in result],[rows[0]['business_name']])

    def test_raw_search_record_cannot_self_approve_with_fresh_date_and_official_flag(self):
        row=self.evidence_row(evidence={"query":"Sedona grocery","engine":"search"})
        self.assertFalse(ns['growth_candidate_evidence_valid'](row,'Sedona'))
    def test_unknown_aggregate_and_near_city_landing_regressions(self):
        for name,url in [('10+ TOP RATED Grocery Store in Sedona Open Now','https://gematos.id/12381-grocery-store-in-sedona/'),
          ('Jones Ford Verde Valley New, Used & Service Near Sedona, AZ','https://jonesfordverdevalley.com/ford-dealer-near-sedona-az')]:
            self.assertFalse(ns['growth_candidate_evidence_valid'](self.evidence_row(business_name=name,source_url=url),'Sedona'))
    def test_structured_government_provenance_or_curated_json_provenance(self):
        row=self.evidence_row(evidence=json.dumps({"artifact_files":["reviewed.json"],"researched_by":"assistant_manual_census"}))
        self.assertTrue(ns['growth_candidate_evidence_valid'](row,'Sedona'))
        row.update(source_url='https://data.cms.gov/record',source_tier='government_registry',verification_status='government_record',evidence={'source_key':'cms_clia'})
        self.assertFalse(ns['growth_candidate_evidence_valid'](row,'Sedona'))
        row['source_url']='https://unreviewed.example/record'
        self.assertFalse(ns['growth_candidate_evidence_valid'](row,'Sedona'))
    def test_actual_url_host_cannot_be_overridden_by_official_flag_or_domain(self):
        for url in ['https://www.loc8nearme.com/a','https://sub.yelp.com/b','javascript:alert(1)']:
            self.assertFalse(ns['growth_candidate_evidence_valid'](self.evidence_row(source_url=url,source_domain='hilton.com'),'Sedona'))

    def test_registry_downloads_never_become_customer_links_or_contacts(self):
        for url in ('https://data.cms.gov/data-viewer.json','https://services1.arcgis.com/a/FeatureServer/0/query?f=json',
                    'https://agency.gov/api/data','https://agency.gov/records.csv','https://agency.gov/records?format=json'):
            row=self.evidence_row(source_url=url,public_email=url,public_phone='{"phone":123}')
            self.assertFalse(ns['growth_candidate_evidence_valid'](row,'Sedona'))
            public=ns['growth_sample_public_rows']([row])[0]
            self.assertEqual(public['source_url'],'')
            self.assertEqual(public['public_email'],'')
            self.assertNotIn(url,public['contact_route'])

    def test_readable_business_site_keeps_real_contact_fields(self):
        row=self.evidence_row(public_email='manager@hotel.example',public_phone='928-555-0100')
        public=ns['growth_sample_public_rows']([row])[0]
        self.assertEqual(public['website_url'],row['source_url'])
        self.assertEqual(public['public_email'],'manager@hotel.example')
        self.assertEqual(public['public_phone'],'(928) 555-0100')

    def test_aggregate_titles_and_paths_fail_on_unknown_domains(self):
        for name,url in [('Restaurants in Sedona','https://unlisted.example/city'),
            ('Best 30 Hotels','https://unlisted.example/hotels'),('Named business','https://unlisted.example/directory/sedona')]:
            self.assertFalse(ns['growth_candidate_evidence_valid'](self.evidence_row(business_name=name,source_url=url),'Sedona'))

    def test_near_or_serving_market_does_not_move_physical_business(self):
        for name in ['Findlay Toyota Flagstaff - Near Sedona','Flagstaff Motors serving Sedona','Toyota in Flagstaff near Sedona']:
            self.assertFalse(ns['growth_candidate_evidence_valid'](self.evidence_row(business_name=name),'Sedona'))

    def test_city_specific_domain_cannot_hide_behind_a_local_seo_title(self):
        row=self.evidence_row(business_name='Toyota dealer serving Sedona',source_url='https://findlaytoyotaflagstaff.net/')
        self.assertFalse(ns['growth_candidate_evidence_valid'](row,'Sedona'))
        row.update(source_url='https://dealer.example/locations/sedona/')
        self.assertTrue(ns['growth_candidate_evidence_valid'](row,'Sedona'))

    def test_explicit_physical_address_wins_over_regional_brand(self):
        row=self.evidence_row(business_name='Flagstaff Regional Clinic',snippet='Registry | address: 123 Main Street, SEDONA, AZ 86336')
        self.assertTrue(ns['growth_candidate_evidence_valid'](row,'Sedona'))
        row['snippet']='Registry | address: 123 Main Street, FLAGSTAFF, AZ 86001'
        self.assertFalse(ns['growth_candidate_evidence_valid'](row,'Sedona'))

    def test_prescott_valley_is_not_prescott_and_hyphen_is_normalized(self):
        row=self.evidence_row(business_name='Prescott-Valley School',market='Prescott Valley')
        self.assertTrue(ns['growth_candidate_evidence_valid'](row,'Prescott Valley'))
        row['market']='Prescott'
        self.assertFalse(ns['growth_candidate_evidence_valid'](row,'Prescott'))

    def test_near_city_marketing_path_is_not_a_local_branch(self):
        row=self.evidence_row(business_name='Flagstaff Regional Clinic',source_url='https://clinic.example/locations/near-sedona/')
        self.assertFalse(ns['growth_candidate_evidence_valid'](row,'Sedona'))
        row['source_url']='https://clinic.example/locations/arizona/sedona/'
        self.assertTrue(ns['growth_candidate_evidence_valid'](row,'Sedona'))

    def test_explicit_local_branch_can_use_regional_domain_and_brand(self):
        row=self.evidence_row(business_name='Flagstaff Regional Clinic',source_url='https://clinic.example/locations/sedona/')
        self.assertTrue(ns['growth_candidate_evidence_valid'](row,'Sedona'))

    def test_manual_research_hold_overrides_official_evidence(self):
        row=self.evidence_row()
        row['evidence']['qualification_hold']=True
        self.assertFalse(ns['growth_candidate_evidence_valid'](row,'Sedona'))

    def test_verification_boundary(self):
        now=datetime(2026,10,28,tzinfo=timezone.utc)
        for age,expected in ((timedelta(days=90),True),(timedelta(days=90,seconds=1),False),(-timedelta(minutes=6),False)):
            with self.subTest(age=age):
                self.assertIs(ns["growth_candidate_is_fresh"]({"last_verified_at":now-age},now),expected)
        self.assertFalse(ns["growth_candidate_is_fresh"]({"last_verified_at":"2026-10-28"},now))

if __name__=="__main__":unittest.main()
