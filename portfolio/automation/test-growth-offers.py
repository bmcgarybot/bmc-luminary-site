#!/usr/bin/env python3
"""Money/scope regressions for the offer ladder; no Stripe calls or email."""
import copy,io,sys,unittest
from pathlib import Path
from datetime import datetime,timedelta,timezone
sys.path.insert(0,str(Path(__file__).parent/'api'))
import growth_offers as g
from growth_pdf import render_sample_pdf
from pypdf import PdfReader

def rows(n):
    return [dict(business_name=f'Business {i}',market='Phoenix',fit_score=90,source_url=f'https://example.com/{i}',public_phone='6025550100',fit_reason='Official business page.',sales_angle='Ask who manages vendor onboarding.') for i in range(n)]
def parent():
    return dict(product_key='growth_pack_25',payment_status='paid',status='fulfilled',customer_email='owner@example.com',growth_sample_id='sample',currency='usd',amount_cents=14900)
def offer():
    return dict(offer_id='offer',product_key='growth_pack_25',email='owner@example.com',status='approved',approved_at=datetime.now(timezone.utc),expires_at=datetime.now(timezone.utc)+timedelta(days=1))
class Tests(unittest.TestCase):
    def test_quantities_and_originals(self):
        g.validate_rows('growth_pack_25',rows(25),rows(5),['Phoenix'])
        g.validate_rows('growth_upgrade_75',rows(100),rows(25),['Phoenix'])
        for final in (rows(24),rows(26),rows(25)[1:]+[rows(25)[1]]):
            with self.assertRaises(ValueError):g.validate_rows('growth_pack_25',final,rows(5),['Phoenix'])
        changed=rows(25);changed[0]['public_phone']='6025550199'
        with self.assertRaises(ValueError):g.validate_rows('growth_pack_25',changed,rows(5),['Phoenix'])
    def test_upgrade_ownership_refund_and_amount(self):
        g.validate_parent('growth_upgrade_75',parent(),'owner@example.com','sample')
        for field,value in [('customer_email','other@example.com'),('payment_status','partially_refunded'),('status','payment_review'),('amount_cents',1),('growth_sample_id','other'),('product_key','growth_pack_starter')]:
            p=parent();p[field]=value
            with self.assertRaises(ValueError):g.validate_parent('growth_upgrade_75',p,'owner@example.com','sample')
    def test_strategy_requires_full_pack_and_actual_deliverable(self):
        with self.assertRaises(ValueError):g.validate_parent('growth_strategy_addon',parent(),'owner@example.com','sample')
        with self.assertRaises(ValueError):g.validate_strategy({})
        p=parent();p.update(product_key='growth_pack_starter',amount_cents=49900)
        g.validate_parent('growth_strategy_addon',p,'owner@example.com','sample')
    def test_draft_invalid_token_and_expiry_cannot_checkout(self):
        o=offer();token=g.signed_token('secret','offer',o['email'])
        self.assertIn('growth_offer_offer',g.checkout_url(o,'https://buy.stripe.com/test','secret',token))
        for field,value in [('status','draft'),('approved_at',None),('expires_at',datetime.now(timezone.utc)-timedelta(days=1))]:
            bad=dict(o);bad[field]=value
            with self.assertRaises(ValueError):g.checkout_url(bad,'https://buy.stripe.com/test','secret',token)
        with self.assertRaises(ValueError):g.checkout_url(o,'https://buy.stripe.com/test','secret','forged')
        with self.assertRaises(ValueError):g.checkout_url(o,'https://evil.example/test','secret',token)
    def test_payment_replay_price_email_product_currency(self):
        g.validate_payment(offer(),'growth_pack_25','owner@example.com',14900,'usd')
        for key,email,amount,currency in [('growth_upgrade_75','owner@example.com',14900,'usd'),('growth_pack_25','other@example.com',14900,'usd'),('growth_pack_25','owner@example.com',1,'usd'),('growth_pack_25','owner@example.com',14900,'eur')]:
            with self.assertRaises(ValueError):g.validate_payment(offer(),key,email,amount,currency)
        o=offer();o['status']='paid'
        with self.assertRaises(ValueError):g.validate_payment(o,'growth_pack_25','owner@example.com',14900,'usd')
    def test_25_pdf_and_100_upgrade_pdf(self):
        for n in (25,100):
            data=render_sample_pdf(rows(n),'Customer','Cleaning',['Phoenix'],'order',paid=True,paid_count=n,prepared_at='2026-11-03')
            self.assertEqual(data,render_sample_pdf(rows(n),'Customer','Cleaning',['Phoenix'],'order',paid=True,paid_count=n,prepared_at='2026-11-03'))
            text='\n'.join(p.extract_text() for p in PdfReader(io.BytesIO(data)).pages)
            self.assertIn(f'Your {n}-prospect Growth Pack',text)
            self.assertIn(f'Business {n-1}',text)
            self.assertNotIn('optional $499',text)
    def test_email_price_terms_and_suppression_link(self):
        for tier,price in [('growth_pack_25','$149'),('growth_upgrade_75','$350'),('growth_strategy_addon','$250')]:
            m=g.offer_email(tier,'A & B','Phoenix','https://example.com/review','https://example.com/stop')
            for channel in ('html','text'):
                self.assertIn(price,m[channel]);self.assertIn('https://example.com/stop',m[channel]);self.assertIn('not quote requests',m[channel])
            self.assertIn('A &amp; B',m['html'])
    def test_reviewed_recipient_packets_are_distinct_and_scope_bound(self):
        import ast,json
        path=Path(__file__).parent/'api'
        packets=json.loads((path/'growth_review_packets.json').read_text())
        source=ast.parse((path/'app.py').read_text())
        node=next(n for n in source.body if isinstance(n,ast.FunctionDef) and n.name=='growth_outreach_message')
        ns=dict(GROWTH_REVIEW_PACKETS=packets,clean=lambda x:str(x or '').strip(),growth_verified_opener=lambda row:'',
          growth_invitation_url=lambda *a,**kw:'https://example.test/signed-review',
          workflow_email_html=lambda title,lines,*a,**kw:'\n'.join(lines),BUSINESS_POSTAL_ADDRESS='Fixture address')
        exec(compile(ast.Module(body=[node],type_ignores=[]),'real_outreach','exec'),ns)
        sets=[]
        for email,packet in packets.items():
            row=dict(public_email=email,business_name=packet['business'],source_url=packet['source_url'],service_key='commercial_cleaning',market='Phoenix',target_id='fixture')
            service,subject,body,html,url=ns['growth_outreach_message'](row,1,owner_preview=True)
            self.assertEqual(subject,packet['subject']);self.assertIn(packet['example_name'],body);self.assertIn(packet['opener'],html)
            self.assertEqual(len(packet['sample_urls']),5);sets.append(set(packet['sample_urls']))
            row['market']='Prescott'
            with self.assertRaises(ValueError):ns['growth_outreach_message'](row,1,owner_preview=True)
        self.assertEqual(len(sets),8)
        for i,a in enumerate(sets):
            for b in sets[i+1:]:self.assertLessEqual(len(a & b),2)

    def test_offer_invitation_worker_obeys_hold_without_database_access(self):
        import ast,asyncio
        source=ast.parse((Path(__file__).parent/'api/app.py').read_text())
        node=next(n for n in source.body if isinstance(n,ast.AsyncFunctionDef) and n.name=='process_growth_offer_invitations');node.decorator_list=[]
        for hold,enabled in [(True,True),(True,False),(False,False)]:
            ns=dict(Header=lambda **kw:None,require_admin=lambda key:None,OWNER_LAUNCH_HOLD=hold,GROWTH_OUTREACH_ENABLED=enabled)
            exec(compile(ast.Module(body=[node],type_ignores=[]),'real_offer_worker','exec'),ns)
            result=asyncio.run(ns['process_growth_offer_invitations']('fixture'))
            self.assertEqual(result,{'ok':True,'sent':0,'held':True})

    def test_offer_worker_requires_nonempty_exact_scope(self):
        import ast,asyncio
        source=ast.parse((Path(__file__).parent/'api/app.py').read_text())
        node=next(n for n in source.body if isinstance(n,ast.AsyncFunctionDef) and n.name=='process_growth_offer_invitations');node.decorator_list=[]
        ns=dict(Header=lambda **kw:None,require_admin=lambda key:None,OWNER_LAUNCH_HOLD=False,GROWTH_OUTREACH_ENABLED=True,GROWTH_OUTREACH_TARGET_IDS=())
        exec(compile(ast.Module(body=[node],type_ignores=[]),'real_offer_worker','exec'),ns)
        result=asyncio.run(ns['process_growth_offer_invitations']('fixture'))
        self.assertEqual(result['sent'],0);self.assertTrue(result['held'])

    def test_reviewed_facility_openings_and_labels_are_identity_bound(self):
        import ast,json,re
        path=Path(__file__).parent/'api'
        details=json.loads((path/'growth_review_prospects.json').read_text())
        source=ast.parse((path/'app.py').read_text())
        nodes=[n for n in source.body if isinstance(n,ast.FunctionDef) and n.name in ('growth_sales_angle','growth_sample_public_rows')]
        ns=dict(GROWTH_REVIEW_PROSPECTS=details,clean=lambda x:str(x or '').strip(),re=re,growth_customer_url=lambda x:x)
        exec(compile(ast.Module(body=nodes,type_ignores=[]),'reviewed_details','exec'),ns)
        for url,d in details.items():
            row=dict(d,source_url=url,official_site=True,category_key='insurance_professional',category_label='insurance professional')
            row['sales_angle']=ns['growth_sales_angle'](row,'commercial_cleaning')
            public=ns['growth_sample_public_rows']([row])[0]
            self.assertEqual(public['category'],d['category'])
            self.assertEqual(public['sales_angle'],d['sales_angle'])
            for bad in (dict(row,market='Prescott'),dict(row,business_name='Different business'),dict(row,official_site=False)):
                self.assertNotEqual(ns['growth_sales_angle'](bad,'commercial_cleaning'),d['sales_angle'])
        self.assertGreater(len({d['sales_angle'] for d in details.values()}),4)

    def test_live_inventory_owner_full_pack_preserves_five_and_never_writes(self):
        import ast,asyncio,base64,re,uuid,json
        from datetime import datetime,timezone
        source=ast.parse((Path(__file__).parent/'api/app.py').read_text())
        node=next(n for n in source.body if isinstance(n,ast.AsyncFunctionDef) and n.name=='growth_owner_full_pack')
        data=rows(100)
        for i,r in enumerate(data):r.update(candidate_id=str(uuid.UUID(int=i+1)),grade='A',category_label='Office')
        class Conn:
            async def fetchrow(self,*args):return dict(candidate_ids=[r['candidate_id'] for r in data[:5]])
        class HTTPError(Exception):pass
        async def candidates(*args,**kwargs):
            self.assertEqual(kwargs['delivery_kind'],'paid');self.assertEqual(kwargs['recipient_key'],'owner@example.com')
            return data[5:]
        ns=dict(uuid=uuid,datetime=datetime,timezone=timezone,re=re,base64=base64,growth_offers=g,
          HTTPException=HTTPError,GROWTH_SAMPLE_MIN_RESERVE=125,GROWTH_SERVICE_LABELS={'commercial_cleaning':'Cleaning'},
          clean=lambda x:str(x or '').strip(),growth_recipient_business_key=lambda x:x.lower(),
          growth_qualified_territory_candidates=candidates,growth_sample_public_rows=lambda r:r,
          render_sample_pdf=render_sample_pdf,growth_csv_bytes=lambda r:json.dumps(r).encode())
        exec(compile(ast.Module(body=[node],type_ignores=[]),'owner_full_pack','exec'),ns)
        target=dict(target_id='fixture',public_email='owner@example.com',business_name='Fixture Cleaning',service_key='commercial_cleaning')
        sample=dict(preview_id=str(uuid.UUID(int=200)))
        out=asyncio.run(ns['growth_owner_full_pack'](Conn(),target,['Phoenix'],data,sample))
        self.assertEqual(len(out['sample']),100);self.assertEqual(out['sample'][:5],data[:5])
        self.assertFalse(out['customer_order_created']);self.assertFalse(out['customer_delivery_recorded']);self.assertEqual(out['checkout_url'],'')
        text='\n'.join(p.extract_text() for p in PdfReader(io.BytesIO(base64.b64decode(out['download_pdf_base64']))).pages)
        self.assertIn('100-prospect Growth Pack',text);self.assertIn('OWNER REVIEW COPY',text);self.assertIn('Business 99',text)
        data.pop()
        with self.assertRaises(HTTPError):asyncio.run(ns['growth_owner_full_pack'](Conn(),target,['Phoenix'],data,sample))

    def test_digest_binds_content(self):
        a={'rows':rows(25)};b=copy.deepcopy(a);b['rows'][0]['fit_reason']='Changed'
        self.assertNotEqual(g.offer_digest(a),g.offer_digest(b))
if __name__=='__main__':unittest.main()
