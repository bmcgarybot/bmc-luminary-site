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
    def test_digest_binds_content(self):
        a={'rows':rows(25)};b=copy.deepcopy(a);b['rows'][0]['fit_reason']='Changed'
        self.assertNotEqual(g.offer_digest(a),g.offer_digest(b))
if __name__=='__main__':unittest.main()
