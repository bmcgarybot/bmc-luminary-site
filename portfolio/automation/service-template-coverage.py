#!/usr/bin/env python3
"""Offline production-copy coverage audit. Never imports app or sends mail.
AST allowlists extract synchronous renderers and intake receipt assignments only.
All businesses, addresses and URLs are synthetic; no credentials are read.
"""
import argparse
import ast
from collections import Counter
import hashlib
import html
import json
from pathlib import Path
import re
import urllib.parse

HERE=Path(__file__).resolve().parent
SOURCE=HERE/'api/app.py'
REGISTRY=HERE.parent/'data/services.json'
POSTAL='123 FIXTURE ONLY Street, Phoenix, AZ 85001 - NONLIVE'
HOST='https://preview.example.invalid'
MARKET='Phoenix'
FUNCTIONS={'clean','provider_service_label','pilot_activation_url','first_wave_vendor_copy',
           'vendor_recruitment_copy','provider_outreach_parts','provider_outreach_copy','provider_outreach_message','workflow_email_html','buyer_landing','buyer_outreach_copy','growth_invitation_url','growth_outreach_message'}

def production_renderers():
    tree=ast.parse(SOURCE.read_text())
    nodes=[n for n in tree.body if isinstance(n,ast.FunctionDef) and n.name in FUNCTIONS]
    assert {n.name for n in nodes}==FUNCTIONS
    ns=dict(html=html,re=re,urllib=urllib,BUSINESS_POSTAL_ADDRESS=POSTAL,
            PUBLIC_SITE_URL=HOST,PILOT_ACTIVATION_URL=HOST+'/provider-pilot-activate/',
            issue_vendor_activation_token=lambda *args:'NONLIVE-NOT-A-SIGNED-TOKEN',
            growth_claim_token=lambda *args,**kwargs:'NONLIVE-NOT-A-SIGNED-TOKEN')
    constants=[n for n in tree.body if isinstance(n,ast.Assign) and any(isinstance(t,ast.Name) and t.id in ('PROVIDER_JOB_EXAMPLES','GROWTH_LANDING_PATHS') for t in n.targets)]
    assert len(constants)==2
    exec(compile(ast.Module(body=constants+nodes,type_ignores=[]),str(SOURCE),'exec'),ns)
    # Copy precisely the three production receipt assignments, not handwritten copy.
    wanted=('receipt_service_name','receipt_body','receipt_html')
    assignments={}
    for n in ast.walk(tree):
        if isinstance(n,ast.Assign) and len(n.targets)==1 and isinstance(n.targets[0],ast.Name) and n.targets[0].id in wanted:
            assert n.targets[0].id not in assignments
            assignments[n.targets[0].id]=n
    assert set(assignments)==set(wanted)
    receipt=compile(ast.Module(body=[assignments[k] for k in wanted],type_ignores=[]),str(SOURCE),'exec')
    return ns,receipt

def check_marketing(subject,body,rendered,row,route):
    for content in (body,html.unescape(rendered)):
        assert row['business_name'] in content and row['market'] in content
        assert POSTAL in content and 'Reply' in content and 'no' in content
        assert '$499' not in content and 'five free' not in content.lower()
    assert row['market'] in subject
    urls=re.findall(r'https://[^\s<>\"\']+',body)
    assert urls
    for url in urls:
        parsed=urllib.parse.urlparse(html.unescape(url))
        assert parsed.hostname=='preview.example.invalid' and parsed.path==route
        if route=='/provider-pilot-activate/':
            q=urllib.parse.parse_qs(parsed.query)
            assert q['vendor_id']==[row['entity_id']]
            assert q['business_name']==[row['business_name']] and q['market']==[row['market']]
            assert q['activation_token']==['NONLIVE-NOT-A-SIGNED-TOKEN']
    assert 'pressure washing' not in (subject+' '+body).lower() or row['service_key']=='pressure_washing'


def generate(out):
    ns,receipt=production_renderers()
    registry=json.loads(REGISTRY.read_text());services=registry['services']
    assert len({s['service_key'] for s in services})==len(services)==54
    modes=Counter(s['fulfillment_mode'] for s in services)
    records=[];previews=[]
    for service in services:
        key=service['service_key'];name=service['display_name'];mode=service['fulfillment_mode']
        row=dict(entity_id='NONLIVE-'+key,business_name='Fixture '+name+' Co',public_email='fixture@example.invalid',
                 market=MARKET,service_key=key,service_name=name,association_signal='')
        variants=[]
        if mode=='provider_match':
            for family,function in (('pilot','first_wave_vendor_copy'),('recruitment','vendor_recruitment_copy')):
                for step in (1,2,3):
                    row['wave']='pilot1' if family=='pilot' else 'recruitment'
                    subject,body,wrapped=ns['provider_outreach_message'](row,step)
                    assert name.lower() in subject.lower()+' '+body.lower()
                    assert ns['PROVIDER_JOB_EXAMPLES'][key] in body
                    check_marketing(subject,body,wrapped,row,'/provider-pilot-activate/')
                    variants.append(dict(family=family,step=step,subject=subject,plain=body,html=wrapped,
                        html_status='Actual production provider plain/HTML message helper; fixture link only',marketing=True,
                        link_purpose='Provider preferences/application; NOT Growth sample or purchase'))
            status='SERVICE_EXAMPLES_IN_PROVIDER_COPY_REQUIRES_REVIEW'
            gaps=['Specific service job examples are present; licensing limits and recipient suitability still require review.',
                  'Provider campaign and admin preview use the same plain/HTML message helper; actual SMTP delivery is untested.',
                  'Live signed activation path, recipient suitability and fulfillment capacity are not tested.']
        else:
            workflow=('We saved your project details. Research starts after a paid order is linked to this request.'
                      if mode=='internal_delivery' else 'BMC is reviewing the request and will move it to the right next step.')
            local=dict(ns,service=service,service_key=key,market=MARKET,workflow_text=workflow,lead_id='NONLIVE-REFERENCE')
            exec(receipt,local)
            plain=local['receipt_body'];rendered=local['receipt_html']
            assert name in plain and name in html.unescape(rendered) and MARKET in plain
            assert 'pressure washing' not in plain.lower() and '$499' not in plain
            variants.append(dict(family='transactional_intake_receipt',step=1,subject='BMC received your request',
                plain=plain,html=rendered,html_status='Actual production receipt assignments with synthetic context',
                marketing=False,link_purpose='No action link in receipt; customer acknowledgement only'))
            status='TRANSACTIONAL_RECEIPT_ONLY_TAILORED_OUTREACH_GAP'
            gaps=['No verified service-specific acquisition campaign demonstrated; transactional acknowledgement is not outreach coverage.',
                  'Receipt does not name business; business-specific acquisition copy is missing.',
                  'Operational intake/payment routing and fulfillment are not certified by this offline preview.']
            if key=='growth_pack':
                gaps.append('Existing Growth sales/free-five copy is separately niche-gated; this report does not extend $499/free-five offers to any service.')
            if mode=='facility_split':
                buyer=dict(row,buyer_type='facility',campaign='facilities',likely_services='building maintenance')
                for step in (1,2):
                    subject,body=ns['buyer_outreach_copy'](buyer,step)
                    wrapped=ns['workflow_email_html'](subject,body.split('\n\n'),marketing=True)
                    check_marketing(subject,body,wrapped,row,'/facility-maintenance/')
                    variants.append(dict(family='existing_facility_buyer_outreach',step=step,subject=subject,plain=body,
                        html=wrapped,marketing=True,html_status='REVIEW WRAPPER ONLY: buyer campaign sends plain text',
                        link_purpose='Facility request landing, NOT provider activation'))
                status='EXISTING_FACILITY_BUYER_COPY_PLUS_RECEIPT_REQUIRES_REVIEW'
                gaps.append('Facility buyer wording is generic building-vendor copy, not specialized maintenance scope assurance.')
        if key in ('pressure_washing','commercial_cleaning'):
            growth_row=dict(row,target_id='NONLIVE-'+key)
            for step in (1,2):
                _,subject,body,rendered,landing=ns['growth_outreach_message'](growth_row,step)
                assert body.startswith('Hi,\n\n') and row['business_name'] not in body.split('See the five businesses:')[0]
                assert urllib.parse.urlparse(landing).hostname=='preview.example.invalid'
                for content in (body,html.unescape(rendered)):
                    assert '$499' in content and '100 businesses total, including those five' in content
                    assert 'not people who have asked for a quote' in content and 'no obligation' in content
                variants.append(dict(family='supported_niche_growth_outreach',step=step,subject=subject,plain=body,html=rendered,
                    marketing=True,html_status='Actual production Growth plain/HTML helper; fixture claim only',
                    link_purpose='Supported niche free-five invitation; NOT a request for a quote'))
        ids=[]
        for v in variants:
            pid=key+'-'+v['family']+'-'+str(v['step']);ids.append(pid)
            previews.append(dict(id=pid,service_key=key,display_name=name,business_name=row['business_name'],market=MARKET,**v))
        records.append(dict(service_key=key,display_name=name,fulfillment_mode=mode,status=status,
                            registry_offer=service['primary_offer'],preview_count=len(ids),preview_ids=ids,
                            approved_for_send=False,gaps=gaps))
    report=dict(fixture_only=True,network_calls=0,smtp_calls=0,production_records_changed=0,campaigns_enabled=False,
        source_sha256=hashlib.sha256(SOURCE.read_bytes()).hexdigest(),registry_sha256=hashlib.sha256(REGISTRY.read_bytes()).hexdigest(),
        actual_service_count=len(services),registry_declared_count=registry.get('count'),mode_counts=dict(modes),
        preview_count=len(previews),provider_sequence_previews=246,services=records,
        fence_gap='No standalone fence key/display name in registry. Fence research artifacts exist, but do not establish routing, approved scope, price, template, or fulfillment. Do not relabel as handyman/landscaping without review.',
        recovery_priority=['landscaping','junk_hauling','handyman_repairs','fence: missing routable registry key'],
        live_path_status='NOT TESTED: fixture token is intentionally invalid, example.invalid host prevents live action. No SMTP/MIME, DNS, signed activation, payment or production queue validation.')
    out.mkdir(parents=True,exist_ok=True)
    (out/'COVERAGE.json').write_text(json.dumps(report,indent=2)+'\n')
    (out/'PREVIEWS.json').write_text(json.dumps(previews,indent=2)+'\n')
    lines=['# Service template coverage — OFFLINE / NONLIVE','',
       f'{len(services)} actual registry services; registry metadata incorrectly declares {registry.get("count")}. {len(previews)} synthetic previews: 246 service-example provider sequence copies + 13 intake receipts + 2 existing facility buyer copies + 4 supported-niche Growth messages.',
       '', 'No item is approved for sending. No SMTP, network calls, production records, live tokens, campaign enabling or hold changes. All businesses, postal addresses and links are fixture values.',
       '', '41 provider services mechanically render three pilot + three recruitment steps using the real production copy functions. Each includes service-specific job examples, rather than name substitution alone. Production provider sender and admin preview now share the actual plain/HTML renderer. The separate facility buyer HTML remains a review-only wrapper.',
       '', 'The other 13 services have actual production transactional receipt assignment previews. Those receipts do not establish service-specific acquisition/outreach coverage. Facility also has its existing two-step buyer campaign. Transactional receipts do not require marketing opt-outs; marketing previews check plain/HTML fixture address and reply-no text.',
       '', 'Recovery priority: landscaping, junk hauling and handyman render six service-example provider copies each; all still require audience, scope and editorial review. Fence has no standalone registry key: evidence artifacts alone do not establish routable service/template coverage. No automatic substitution as handyman/landscaping.',
       '', 'Provider delivery now uses a durable per-outreach/per-step mail claim. Ambiguous delivery or changed payload moves the outreach to review with a deduplicated critical exception; it is not automatically resent. Unknown service templates are skipped into review rather than substituted or allowed to abort the batch. Offline tests exercise captured sender paths; actual SMTP remains untested.',
       '', 'No new $499/free-five niches are advertised. Growth sales capability stays separate from this provider-pilot coverage. Live signed links, real recipients, send/MIME delivery, suppression execution and fulfillment capacity are not tested.',
       '', '| Service | Mode | Previews | Coverage / remaining gap |','|---|---|---:|---|']
    for r in records:
        lines.append(f"| {r['display_name']} (`{r['service_key']}`) | {r['fulfillment_mode']} | {r['preview_count']} | {r['status']} |")
    lines+=['','Run: `python portfolio/automation/service-template-coverage.py` (stdlib only). Generated outputs are deterministic for a given app/registry source. See `COVERAGE.json` for service-by-service gaps and source hashes; `GALLERY.html` for readable previews.']
    (out/'COVERAGE.md').write_text('\n'.join(lines)+'\n')
    cards=[]
    for p in previews:
        cards.append('<article data-search="'+html.escape((p['display_name']+' '+p['service_key']+' '+p['family']).lower(),quote=True)+'" id="'+p['id']+'"><h2>'+html.escape(p['display_name'])+' · '+html.escape(p['family'])+' '+str(p['step'])+'</h2><p class="tag">NONLIVE FIXTURE · '+html.escape(p['html_status'])+'</p><h3>'+html.escape(p['subject'])+'</h3><p>'+html.escape(p['link_purpose'])+'</p><details open><summary>Plain text from production renderer</summary><pre>'+html.escape(p['plain'])+'</pre></details><details><summary>HTML preview</summary><iframe sandbox srcdoc="'+html.escape(p['html'],quote=True)+'"></iframe></details></article>')
    page='''<!doctype html><html lang="en"><meta charset="utf-8"><title>NONLIVE — all-service copy audit</title><style>body{font:16px system-ui;background:#f2f5fa;color:#172238;max-width:1050px;margin:auto;padding:28px}header{background:#142840;color:white;padding:28px;border-radius:12px}input{padding:12px;width:90%;font:inherit;margin:20px 0}article{background:white;padding:24px;border:1px solid #dbe1e9;border-radius:10px;margin:18px 0}.tag{color:#a43f0b;font-size:13px}pre{white-space:pre-wrap;overflow-wrap:anywhere;line-height:1.55}iframe{border:1px solid #ddd;width:100%;height:800px}summary{cursor:pointer;padding:10px 0}h2{font-size:21px}</style><header><h1>All-service copy coverage · NONLIVE</h1><p>54 services · 265 fixture previews · 0 approved for sending</p><p>41 provider services have six copies with service-specific job examples. 13 other services have transactional acknowledgements, with tailored acquisition gaps. Facility adds its existing two-step buyer copy.</p><p>No SMTP, real recipients, valid activation tokens or live links. Provider plain text and HTML share the actual production renderer. Facility buyer HTML is a labeled review-only wrapper. These previews do not certify autonomy or niche suitability.</p></header><label>Filter by service/key/family <input id="filter" placeholder="landscaping, junk_hauling, handyman…"></label>'''+''.join(cards)+'''<script>document.querySelector('#filter').addEventListener('input',e=>{let q=e.target.value.toLowerCase();document.querySelectorAll('article').forEach(a=>a.hidden=!a.dataset.search.includes(q))})</script></html>'''
    (out/'GALLERY.html').write_text(page)
    print(json.dumps({k:report[k] for k in ('actual_service_count','mode_counts','preview_count','provider_sequence_previews','network_calls','smtp_calls')},indent=2))

if __name__=='__main__':
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output',type=Path,default=HERE/'template-coverage')
    generate(parser.parse_args().output)
