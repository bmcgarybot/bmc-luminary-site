#!/usr/bin/env python3
"""Verify recipient-specific private PDFs and safe links, without mail or DB access."""
import base64
import io
from pathlib import Path
import sys
import unittest
sys.path.insert(0,str(Path(__file__).parent/'api'))
from growth_pdf import render_sample_pdf, sample_pdf_response, safe_website
from pypdf import PdfReader

def rows(prefix='Fixture'):
    return [dict(business_name=f'{prefix} Business {i}', market='Prescott', category='Office',
                 fit_reason='Official website describes a local office with customer appointments.',
                 sales_angle='Ask who coordinates cleaning and whether outside vendors are considered.',
                 public_phone='928-555-0100',website_url=f'https://example.com/business-{i}') for i in range(1,6)]

class Tests(unittest.TestCase):
    def test_only_selected_five_and_recipient_are_delivered(self):
        result=sample_pdf_response(rows(),'Recipient A','Commercial cleaning',['Prescott'],'sample-a','2026-11-02')
        pdf=PdfReader(io.BytesIO(base64.b64decode(result['download_pdf_base64'])))
        text='\n'.join(p.extract_text() for p in pdf.pages)
        for i in range(1,6): self.assertIn(f'Fixture Business {i}',text)
        self.assertNotIn('Recipient B',text)
        for term in ['Recipient A','sample-a','$499','including these five','not requested quotes']:
            self.assertIn(term,text)
        links=[a.get_object()['/A']['/URI'] for p in pdf.pages for a in p.get('/Annots',[]) if '/A' in a.get_object()]
        self.assertEqual([u for u in links if u.startswith('https://')],[f'https://example.com/business-{i}' for i in range(1,6)])
        self.assertTrue(all(u.startswith(('https://','tel:','mailto:')) for u in links))
        self.assertEqual(result['download_filename'],'BMC-Recipient-A-Five-Prospects.pdf')
    def test_paid_pdf_contains_all_100_without_free_offer(self):
        records=[]
        for i in range(100):
            row=rows()[0].copy();row['business_name']=f'Paid Account {i:03d}'
            records.append(row)
        data=render_sample_pdf(records,'Paid Customer','Cleaning',['Phoenix'],'order-fixture',paid=True)
        text='\n'.join(p.extract_text() for p in PdfReader(io.BytesIO(data)).pages)
        for i in range(100):self.assertIn(f'Paid Account {i:03d}',text)
        self.assertIn('Your 100-prospect Growth Pack',text)
        self.assertRegex(text,r'100\s+Paid Account 099')
        self.assertNotIn('The five are free with no obligation',text)
        with self.assertRaises(ValueError):render_sample_pdf(records[:99],'A','Cleaning',['Phoenix'],'order-fixture',paid=True)

    def test_card_sections_and_last_page_keep_real_prospect_with_next_steps(self):
        pdf=PdfReader(io.BytesIO(render_sample_pdf(rows(),'Layout Review','Cleaning',['Phoenix'],'layout',preview=True)))
        text='\n'.join(p.extract_text() for p in pdf.pages)
        for label in ('WHY IT FITS','HOW TO APPROACH','CONTACT & SOURCE','01'):
            self.assertIn(label,text)
        self.assertIn('Fixture Business 5',pdf.pages[-1].extract_text())
        self.assertIn('YOUR NEXT STEP',pdf.pages[-1].extract_text())
    def test_reject_incomplete_or_excess_sample(self):
        for count in [0,4,6]:
            r=(rows()*2)[:count]
            with self.assertRaises(ValueError):render_sample_pdf(r,'A','Cleaning',['Prescott'],'a')
            self.assertEqual(sample_pdf_response(r,'A','Cleaning',['Prescott'],'a'),{})
    def test_raw_data_and_credential_links_never_embedded(self):
        bad=['https://data.cms.gov/foo','https://services1.arcgis.com/query',
             'https://example.com/file.json','https://example.com/?f=pjson',
             'https://user:secret@example.com','javascript:alert(1)']
        for url in bad:self.assertEqual(safe_website(url),'')
        r=rows();r[0]['website_url']=bad[0]
        pdf=PdfReader(io.BytesIO(render_sample_pdf(r,'A','Cleaning',['Prescott'],'a')))
        self.assertNotIn('data.cms.gov','\n'.join(p.extract_text() for p in pdf.pages))
    def test_markup_escaped_and_preview_identified(self):
        r=rows();r[0]['business_name']='A & B <Office>'
        text='\n'.join(p.extract_text() for p in PdfReader(io.BytesIO(render_sample_pdf(r,'Review only','Cleaning',['Prescott'],'a',preview=True))).pages)
        self.assertIn('A & B <Office>',text);self.assertIn('OWNER REVIEW COPY',text)

if __name__=='__main__':unittest.main()
