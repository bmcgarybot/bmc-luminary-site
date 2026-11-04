#!/usr/bin/env python3
"""Actual mobile rendering with synthetic claim responses; abort every other request."""
from pathlib import Path
import json,os,re,time
from playwright.sync_api import sync_playwright
root=Path(__file__).resolve().parents[1]
css=(root/'assets/core.css').read_text();js=(root/'assets/core.js').read_text()
markup=(root/'growth-packs/commercial-cleaning/index.html').read_text()
markup=re.sub(r'<script\b[^>]*\bsrc=[^>]*>.*?</script>','',markup,flags=re.S)
markup=re.sub(r'<link\b[^>]*>','',markup).replace('</head>','<style>'+css+'</style></head>')
fixtures={25:dict(offer_count=25,offer_amount_cents=14900,upgrade_available=False),100:{}}
failures=[]
with sync_playwright() as p:
    browser=getattr(p,os.getenv('BMC_TEST_BROWSER','chromium')).launch()
    for count,fields in fixtures.items():
        for width in (320,375,390,601,1280):
            page=browser.new_page(viewport=dict(width=width,height=844));errors=[]
            page.on('pageerror',lambda error:errors.append(str(error)))
            page.route('**/*',lambda route:route.abort())
            page.route('https://bmc.example.test/**',lambda route:route.fulfill(body=markup,content_type='text/html'))
            company=f'Synthetic Scoped {count} Cleaning Company'
            payload=dict(status='sample_ready',business_name=company,research_scope='Published office cleaning in Phoenix.',
                selected_markets=['Phoenix'],preview=True,checkout_url=f'https://buy.stripe.com/fixture{count}',
                download_filename='synthetic.pdf',download_pdf_base64='JVBERi0xLjQ=',
                sample=[dict(business_name=f'Synthetic Office {i}',market='Phoenix',fit_reason='Published office premises.',contact_route='6025550123') for i in range(5)],**fields)
            def claim(route):
                time.sleep(.05)
                route.fulfill(body=json.dumps(payload),content_type='application/json',headers={'Access-Control-Allow-Origin':'*'})
            page.route('https://hooks.bmcservicenetwork.com/api/growth/claim-free-five',claim)
            try:
                page.goto('https://bmc.example.test/growth-packs/commercial-cleaning/?target=fixture&claim=fixture&business=Wrong+URL+Name&preview=1#free5')
                page.add_script_tag(content=js)
                page.wait_for_selector('#your-prospects .growth-sample-results')
                page.wait_for_function('window.scrollY===0')
                assert company.lower() in page.locator('.customer-hero .editorial-kicker').inner_text().lower(),'Canonical company missing from hero'
                assert 'Wrong URL Name' not in page.locator('body').inner_text(),'URL company overrode canonical identity'
                assert page.evaluate('document.documentElement.scrollWidth')<=width,'Horizontal overflow'
                assert page.evaluate('location.hash')=='','Response did not reset old hash'
                page.locator('.customer-hero .btn-primary').click()
                page.wait_for_function('location.hash==="#your-prospects"')
                remaining=count-5;price=149 if count==25 else 499
                link=page.get_by_role('link',name=f'Get the other {remaining} — ${price}',exact=True)
                assert link.is_visible(),'Incorrect remaining quantity/price CTA'
                assert link.get_attribute('href')==f'https://buy.stripe.com/fixture{count}','Synthetic checkout URL changed'
                text=page.locator('[data-success-card]').inner_text()
                assert f'{count} total' in text,'Incorrect total promise'
                assert company in page.locator('[data-success-card] h3').inner_text(),'Canonical company missing from sample'
                assert page.locator('.owner-checkout-warning').is_visible(),'Owner inspection warning missing'
                legacy=[]
                if count==25:
                    visible=page.locator('body').inner_text()
                    legacy=[line for line in visible.splitlines() if re.search(r'(?<![0-9–-])\b100\b|\$499|other\s+95',line)]
                page.evaluate('window.scrollTo(0,document.body.scrollHeight)')
                page.reload();page.add_script_tag(content=js)
                page.wait_for_selector('#your-prospects .growth-sample-results')
                page.wait_for_function('window.scrollY===0')
                assert page.evaluate('location.hash')=='','Reload did not return to intro'
                assert company.lower() in page.locator('.customer-hero .editorial-kicker').inner_text().lower(),'Reload lost canonical name'
                assert not errors,errors
                assert not legacy, 'Visible legacy100/$499 promise remains: '+repr(legacy)
                print(f'PASS scoped{count} {width}px: canonical name, remaining{remaining}/${price}, total{count}, owner warning, reload top')
            except Exception as exc:
                message=f'FAIL scoped{count} {width}px: {exc}'
                failures.append(message);print(message)
                qa=os.getenv('BMC_SCOPED_QA_DIR')
                if qa:
                    Path(qa).mkdir(parents=True,exist_ok=True)
                    page.screenshot(path=str(Path(qa)/f'scoped-{count}-{width}.png'),full_page=True)
            finally:page.close()
    # Customer-initiated25 requests use only intercepted synthetic claim/quote APIs.
    for width in (375,390):
        for fail_first in (False,True):
            page=browser.new_page(viewport=dict(width=width,height=844));posts=[];traffic=[]
            page.on('request',lambda request:traffic.append(request.url))
            page.route('**/*',lambda route:route.abort())
            page.route('https://bmc.example.test/**',lambda route:route.fulfill(body=markup,content_type='text/html'))
            sid='12345678-1234-4234-8234-123456789abc';token='synthetic-request-token'
            customer=dict(status='sample_ready',business_name='Synthetic Customer25 Cleaning',research_scope='Published office cleaning in Phoenix.',
                sample_id=sid,small_pack_request_token=token,selected_markets=['Phoenix'],preview=False,
                offer_count=25,offer_amount_cents=14900,upgrade_available=False,checkout_url='',
                sample=[dict(business_name=f'Synthetic Customer Office {i}',market='Phoenix',fit_reason='Published office premises.',contact_route='6025550123') for i in range(5)])
            page.route('https://hooks.bmcservicenetwork.com/api/growth/claim-free-five',lambda route:route.fulfill(body=json.dumps(customer),content_type='application/json',headers={'Access-Control-Allow-Origin':'*'}))
            def request_small(route):
                assert route.request.method=='POST','Quote request was not POST'
                posts.append(route.request.post_data_json)
                failed=fail_first and len(posts)==1
                result=dict(ok=not failed,status='offer_pending_review',checkout_url='',payment_created=False,
                    offer_count=25,amount_cents=14900,message='Your25-prospect request is saved. No payment has been taken.')
                route.fulfill(status=409 if failed else 200,body=json.dumps(result),content_type='application/json',headers={'Access-Control-Allow-Origin':'*'})
            page.route('https://hooks.bmcservicenetwork.com/api/growth/request-small-pack',request_small)
            try:
                page.goto('https://bmc.example.test/growth-packs/commercial-cleaning/?target=fixture&claim=fixture')
                page.add_script_tag(content=js);page.wait_for_selector('#your-prospects .growth-sample-results')
                page.locator('.customer-hero .btn-primary').click()
                request_button=page.get_by_role('button',name='Request the other 20 — $149',exact=True)
                assert request_button.is_visible(),'Customer request action missing'
                assert page.locator('a[href^="https://buy.stripe.com/"]').count()==0,'Customer received a direct Stripe link'
                request_button.click()
                if fail_first:
                    retry=page.get_by_role('button',name='Try the 25-pack request again',exact=True)
                    retry.wait_for();assert retry.is_enabled(),'Failed request cannot retry'
                    assert 'No payment has been taken.' in page.locator('[data-success-card]').inner_text()
                    retry.click()
                done=page.get_by_role('button',name='25-pack requested',exact=True)
                done.wait_for();assert done.is_disabled(),'Confirmed request was not disabled'
                assert 'No payment has been taken.' in page.locator('[data-success-card]').inner_text()
                expected=2 if fail_first else 1
                assert len(posts)==expected,'Unexpected request count'
                for body in posts:
                    assert body==dict(sample_id=sid,request_token=token,confirm=True),'Request binding payload changed'
                done.evaluate('(button)=>button.click()');page.wait_for_timeout(50)
                assert len(posts)==expected,'Disabled button sent duplicate request'
                assert page.url.startswith('https://bmc.example.test/'),'Request navigated away'
                assert not any('stripe.com' in url for url in traffic),'Stripe request occurred'
                assert page.locator('.owner-checkout-warning').count()==0,'Customer sees owner-only warning'
                assert page.evaluate('document.documentElement.scrollWidth')<=width,'Customer horizontal overflow'
                print(f'PASS customer25 {width}px {"retry" if fail_first else "success"}: boundPOST, pendingreview/no payment, disabled after success, no Stripe traffic')
            except Exception as exc:
                message=f'FAIL customer25 {width}px {"retry" if fail_first else "success"}: {exc}'
                failures.append(message);print(message)
            finally:page.close()
    browser.close()
assert not failures,'\n'.join(failures)
