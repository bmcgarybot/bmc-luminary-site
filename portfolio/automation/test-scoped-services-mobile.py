#!/usr/bin/env python3
"""Actual tree+junk pages at375/1280; all HTTP intercepted, no external IO."""
import json,os,re
from pathlib import Path
from playwright.sync_api import sync_playwright
ROOT=Path(__file__).resolve().parents[1]
CSS=(ROOT/'assets/core.css').read_text();JS=(ROOT/'assets/core.js').read_text()
FAILURES=[]
def markup(slug):
    text=(ROOT/f'growth-packs/{slug}/index.html').read_text()
    text=re.sub(r'<script\b[^>]*\bsrc=[^>]*>.*?</script>','',text,flags=re.S)
    return re.sub(r'<link\b[^>]*>','',text).replace('</head>','<style>'+CSS+'</style></head>')
def fulfill(route,payload):route.fulfill(body=json.dumps(payload),content_type='application/json',headers={'Access-Control-Allow-Origin':'*'})
with sync_playwright() as playwright:
    browser=getattr(playwright,os.getenv('BMC_TEST_BROWSER','chromium')).launch()
    for service,slug,label in (('tree_service','tree-service','Tree'),('junk_hauling','junk-hauling','Junk')):
      html=markup(slug)
      for width in (375,1280):
        page=browser.new_page(viewport={'width':width,'height':844},accept_downloads=True)
        errors=[];requests=[];posts=[];intakes=[]
        page.on('pageerror',lambda error:errors.append(str(error)))
        page.on('request',lambda request:requests.append(request.url))
        page.route('**/*',lambda route:route.abort())
        page.route('https://bmc.example.test/**',lambda route:route.fulfill(body=html,content_type='text/html'))
        company=f'Synthetic {label} Contractor';sid='12345678-1234-4234-8234-123456789abc';token='synthetic-bound-request-token'
        response=dict(status='sample_ready',business_name=company,research_scope='Published property-management service scope in Phoenix.',selected_markets=['Phoenix'],
            preview=False,sample_id=sid,small_pack_request_token=token,checkout_url='',offer_count=25,offer_amount_cents=14900,upgrade_available=False,
            download_filename=f'synthetic-{slug}-five.pdf',download_pdf_base64='JVBERi0xLjQ=',
            sample=[dict(business_name=f'Synthetic Property Manager {i}',market='Phoenix',fit_reason='Assess property maintenance authority; no active request assumed.',contact_route='6025550123') for i in range(5)])
        page.route('https://hooks.bmcservicenetwork.com/api/growth/claim-free-five',lambda route:fulfill(route,response))
        def request_small(route):
            assert route.request.method=='POST'
            posts.append(route.request.post_data_json)
            fulfill(route,dict(ok=True,status='offer_pending_review',offer_count=25,amount_cents=14900,checkout_url='',payment_created=False,
                message='Your 25-prospect request is saved. BMC will verify the current list. No payment has been taken.'))
        def intake(route):
            intakes.append(route.request.post_data_json)
            fulfill(route,dict(ok=True,status='verification_pending',message='Synthetic request saved for email confirmation.'))
        page.route('https://hooks.bmcservicenetwork.com/api/growth/request-small-pack',request_small)
        page.route('https://hooks.bmcservicenetwork.com/api/intake',intake)
        try:
            page.goto(f'https://bmc.example.test/growth-packs/{slug}/?target=fixture&claim=fixture&business=Wrong+URL+Company#free5')
            page.add_script_tag(content=JS);page.wait_for_selector('#your-prospects .growth-sample-results');page.wait_for_function('window.scrollY===0')
            assert company.lower() in page.locator('.customer-hero .editorial-kicker').inner_text().lower(),'Canonical personalized company not in top introduction'
            assert 'Wrong URL Company' not in page.locator('body').inner_text(),'URL name overrode canonical company'
            hero=page.locator('.customer-hero .btn-primary');assert hero.inner_text()=='Show me my 5 free targets';assert hero.get_attribute('href')=='#your-prospects'
            assert page.locator('[name=service_key]').input_value()==service,'Claim response changed the service'
            hero.click();page.wait_for_function('location.hash==="#your-prospects"')
            card=page.locator('[data-success-card]');text=card.inner_text()
            assert '25 total' in text and '$149' in text,'Total25/$149 missing'
            button=page.get_by_role('button',name='Request the other 20 — $149',exact=True);assert button.is_visible(),'Remaining20 customer action missing'
            visible=page.locator('body').inner_text()
            assert not [line for line in visible.splitlines() if re.search(r'(?<![0-9–-])\b100\b|\$499|other\s+95',line)],'Legacy100/$499 promise visible'
            pdf=page.get_by_role('button',name='Download your five prospects (PDF)',exact=True)
            assert pdf.is_visible(),'PDF button missing'
            with page.expect_download() as downloaded:pdf.click()
            assert downloaded.value.suggested_filename==response['download_filename'],'PDF download binding changed'
            button.click();done=page.get_by_role('button',name='25-pack requested',exact=True);done.wait_for();assert done.is_disabled()
            assert posts==[dict(sample_id=sid,request_token=token,confirm=True)],'Signed customer request binding changed'
            assert 'No payment has been taken.' in card.inner_text(),'Request incorrectly implied payment'
            assert not page.locator('a[href^="https://buy.stripe.com/"]').count(),'Unexpected direct checkout'
            assert not any('stripe.com' in url for url in requests),'Stripe network request attempted'
            assert page.evaluate('document.documentElement.scrollWidth')<=width,'Horizontal overflow after claim'
            assert not errors,errors
            qa=os.getenv('BMC_SCOPED_QA_DIR')
            if qa:
                Path(qa).mkdir(parents=True,exist_ok=True)
                page.evaluate("document.documentElement.style.scrollBehavior='auto';window.scrollTo(0,0)");page.wait_for_function('window.scrollY===0')
                page.screenshot(path=str(Path(qa)/f'{slug}-{width}.png'),full_page=False)
            # Also exercise the actual form submission serializer independently
            # of one-click claim, proving the service does not become cleaning.
            page.goto(f'https://bmc.example.test/growth-packs/{slug}/');page.add_script_tag(content=JS)
            form=page.locator('form[data-form-type=growth_snapshot]')
            page.locator('[name=business_name]').fill(company);page.locator('[name=contact_name]').fill('Synthetic Owner');page.locator('[name=email]').fill('synthetic@example.test')
            page.locator('[name=market]').select_option('Phoenix');page.locator('[name=consent]').check()
            page.locator('.customer-hero .btn-primary').click();page.wait_for_function('location.hash==="#free5"')
            form.locator('button[type=submit]').click();page.wait_for_function('!!document.querySelector("[data-success-card]")')
            assert len(intakes)==1 and intakes[0]['service_key']==service,'Actual form posted wrong service'
            assert intakes[0]['form_type']=='growth_snapshot' and intakes[0]['selected_markets']==['Phoenix']
            assert page.evaluate('document.documentElement.scrollWidth')<=width,'Form horizontal overflow'
            assert not errors,errors
            print(f'PASS {service} {width}px: personalized top, deliberate free5,25/$149/remaining20, PDF download, bound request, actual service form, no Stripe')
        except Exception as error:
            FAILURES.append(f'{service} {width}px: {error}')
            print('FAIL '+FAILURES[-1])
        finally:page.close()
    browser.close()
assert not FAILURES,'\n'.join(FAILURES)
