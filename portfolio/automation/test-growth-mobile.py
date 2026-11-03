#!/usr/bin/env python3
"""Render the production sample component at phone widths without network or sends."""
from pathlib import Path
from playwright.sync_api import sync_playwright
root=Path(__file__).resolve().parents[1]
css=(root/'assets/core.css').read_text()
js=(root/'assets/core.js').read_text()
render=js[js.index('  function showSubmissionSuccess('):js.index('  async function maybeClaimGrowthSample(')]
page_html=(root/'growth-packs/commercial-cleaning/index.html').read_text()
# Use real markup and CSS, but never fetch public services or submit forms.
import re
page_html=re.sub(r'<script\b[^>]*>.*?</script>','',page_html,flags=re.S)
page_html=re.sub(r'<link\b[^>]*>','',page_html)
page_html=page_html.replace('</head>','<style>'+css+'</style></head>')
with sync_playwright() as p:
    browser=p.chromium.launch()
    page=browser.new_page()
    page.route('**/*',lambda route:route.abort())
    for width in (320,375,390,768,1280):
        page.set_viewport_size({'width':width,'height':844})
        page.set_content(page_html)
        page.add_script_tag(content=render)
        page.evaluate('''() => { const form=document.querySelector('[data-form-type="growth_snapshot"]');
          [...form.children].forEach(el=>el.hidden=true);
          showSubmissionSuccess(form,{status:'sample_ready',selected_markets:['Phoenix'],download_filename:'fixture.pdf',download_pdf_base64:'JVBERi0xLjQ=',sample:[
            {business_name:'A long commercial business name in Phoenix',market:'Phoenix',contact_route:'6024389000',fit_reason:'A local commercial property.',source_url:'https://example.test/business',sales_angle:'Ask who manages outside vendors.'},
            {business_name:'Second commercial business',market:'Phoenix',contact_route:'enjoy.tapatiocliffs@hilton.com',fit_reason:'https://example.test/a-very-long-official-business-location-page-without-spaces',sales_angle:'Ask about vendor onboarding.'}
          ]}); }''')
        assert page.evaluate('document.documentElement.scrollWidth')<=width, f'Horizontal overflow at {width}'
        assert page.locator('a[href="tel:+16024389000"]').inner_text()=='Call (602) 438-9000'
        assert page.locator('a[href="mailto:enjoy.tapatiocliffs@hilton.com"]').count()==1
        assert page.evaluate('''() => {const b=document.querySelector('.submission-success button');const s=document.querySelector('.growth-sample-results');return !!(b.compareDocumentPosition(s)&Node.DOCUMENT_POSITION_FOLLOWING)}''')
        print(f'PASS {width}px: no overflow; formatted contact links; PDF before sample')
    browser.close()
