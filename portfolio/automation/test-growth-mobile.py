#!/usr/bin/env python3
"""Render the production sample component at phone widths without network or sends."""
from pathlib import Path
import os
from playwright.sync_api import sync_playwright
root=Path(__file__).resolve().parents[1]
css=(root/'assets/core.css').read_text()
js=(root/'assets/core.js').read_text()
render=js[js.index('  function showSubmissionSuccess('):js.index('  async function maybeClaimGrowthSample(')]
page_html=(root/'growth-packs/commercial-cleaning/index.html').read_text()
# Use real markup and CSS, but never fetch public services or submit forms.
import re
page_html=re.sub(r'<script\b[^>]*\bsrc=[^>]*>.*?</script>','',page_html,flags=re.S)
page_html=re.sub(r'<link\b[^>]*>','',page_html)
page_html=page_html.replace('</head>','<style>'+css+'</style></head>')
with sync_playwright() as p:
    browser=getattr(p,os.getenv("BMC_TEST_BROWSER","chromium")).launch()
    page=browser.new_page()
    errors=[]
    page.on("pageerror",lambda error:errors.append(str(error)))
    page.on("console",lambda message:errors.append(message.text) if message.type=="error" else None)
    page.route('**/*',lambda route:route.abort())
    page.route('https://bmc.example.test/**',lambda route:route.fulfill(body=page_html,content_type='text/html'))
    for width in (320,375,390,601,768,1280):
        page.set_viewport_size({'width':width,'height':844})
        page.goto('https://bmc.example.test/growth-packs/commercial-cleaning/')
        page.add_script_tag(content=render)
        page.evaluate('''() => { const form=document.querySelector('[data-form-type="growth_snapshot"]');
          [...form.children].forEach(el=>el.hidden=true);
          showSubmissionSuccess(form,{status:'sample_ready',business_name:'Fixture Cleaning Company',research_scope:'Your office, school and church cleaning services in Phoenix.',selected_markets:['Phoenix'],download_filename:'fixture.pdf',download_pdf_base64:'JVBERi0xLjQ=',sample:[
            {business_name:'A long commercial business name in Phoenix',market:'Phoenix',contact_route:'6024389000',fit_reason:'A local commercial property.',source_url:'https://example.test/business',sales_angle:'Ask who manages outside vendors.'},
            {business_name:'Second commercial business',market:'Phoenix',contact_route:'enjoy.tapatiocliffs@hilton.com',fit_reason:'https://example.test/a-very-long-official-business-location-page-without-spaces',sales_angle:'Ask about vendor onboarding.'}
          ]}); }''')
        assert page.evaluate('document.documentElement.scrollWidth')<=width, f'Horizontal overflow at {width}'
        assert page.locator('a[href="tel:+16024389000"]').inner_text()=='Call (602) 438-9000'
        assert page.locator('a[href="mailto:enjoy.tapatiocliffs@hilton.com"]').count()==1
        assert page.evaluate('''() => {const b=document.querySelector('.submission-success button');const s=document.querySelector('.growth-sample-results');return !!(b.compareDocumentPosition(s)&Node.DOCUMENT_POSITION_FOLLOWING)}''')
        page.wait_for_function("document.querySelector('[data-success-card] h3').getBoundingClientRect().top >= document.querySelector('body > nav').getBoundingClientRect().bottom")
        assert 'Fixture Cleaning Company' in page.locator('[data-success-card] h3').inner_text()
        assert page.locator('#your-prospects').is_visible()
        assert not page.locator('#free5').is_visible()
        print(f'PASS {width}px: manual submission results aligned; no overflow; contacts; PDF before sample')
    # Full delayed signed-link flow starts at the old anchor and an old scroll position.
    import json,time
    payload=dict(status='sample_ready',business_name='Verified Phoenix Cleaning',research_scope='Offices and schools in Phoenix.',selected_markets=['Phoenix'],preview=True,checkout_url='https://buy.stripe.com/fixture',download_filename='fixture.pdf',download_pdf_base64='JVBERi0xLjQ=',sample=[dict(business_name='Researched Phoenix Office',market='Phoenix',fit_reason='Office scope.',contact_route='6025550123')])
    def claim(route):
        time.sleep(.25)
        route.fulfill(body=json.dumps(payload),content_type='application/json',headers={'Access-Control-Allow-Origin':'*'})
    page.route('https://hooks.bmcservicenetwork.com/api/growth/claim-free-five',claim)
    for width in (375,390,601,1280):
        page.set_viewport_size(dict(width=width,height=844))
        page.goto('https://bmc.example.test/growth-packs/commercial-cleaning/?target=fixture&claim=fixture&business=Wrong+URL+Name&preview=1#free5')
        assert page.evaluate('window.scrollY')==0
        page.add_script_tag(content=js)
        page.wait_for_selector('#your-prospects .growth-sample-results')
        page.wait_for_function('window.scrollY === 0')
        assert page.locator('.customer-hero').is_visible()
        assert 'verified phoenix cleaning' in page.locator('.customer-hero .editorial-kicker').inner_text().lower(), (page.locator('.customer-hero .editorial-kicker').inner_text(),page.locator('[data-success-card] h3').inner_text(),errors,page.evaluate('({hash:location.hash,y:scrollY,classes:document.body.className})'))
        assert page.evaluate('location.hash')==''
        primary=page.locator('.customer-hero .btn-primary')
        assert primary.inner_text()=='Show me my 5 free targets'
        assert page.evaluate('history.scrollRestoration')=='manual'
        primary.click()
        page.wait_for_function("document.querySelector('[data-success-card] h3').getBoundingClientRect().top >= document.querySelector('body > nav').getBoundingClientRect().bottom && document.querySelector('[data-success-card] h3').getBoundingClientRect().top < 250")
        assert 'Verified Phoenix Cleaning' in page.locator('[data-success-card] h3').inner_text()
        assert 'Wrong URL Name' not in page.locator('#your-prospects').inner_text()
        assert 'Offices and schools' in page.locator('.growth-research-scope').inner_text()
        assert not page.locator('.mobile-sticky-cta').is_visible()
        assert not page.locator('#full-pack').is_visible()
        assert not page.locator('nav a[href="#free5"]').is_visible()
        assert page.get_by_role('link',name='Get the other 95 — $499',exact=True).count()==1
        assert '100 total' in page.locator('[data-success-card]').inner_text()
        assert page.locator('.owner-checkout-warning').is_visible()
        assert page.evaluate('location.hash')=='#your-prospects'
        page.evaluate('window.scrollTo(0,document.body.scrollHeight)')
        page.reload()
        assert page.evaluate('window.scrollY')==0
        page.add_script_tag(content=js)
        page.wait_for_selector('#your-prospects .growth-sample-results')
        page.wait_for_function('window.scrollY === 0')
        assert page.evaluate('location.hash')==''
        assert 'verified phoenix cleaning' in page.locator('.customer-hero .editorial-kicker').inner_text().lower()
        print(f'PASS {width}px: personalized introduction first; deliberate button opens targets; refresh returns to top')
    payload['preview']=False
    page.goto('https://bmc.example.test/growth-packs/commercial-cleaning/?target=fixture&claim=fixture#free5')
    page.add_script_tag(content=js)
    page.wait_for_selector('#your-prospects .growth-sample-results')
    assert page.locator('.owner-checkout-warning').count()==0
    assert page.get_by_role('link',name='Get the other 95 — $499',exact=True).count()==1
    print('PASS customer path: remaining 95 pricing, original five retained, no owner-only warning')
    browser.close()
