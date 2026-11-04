"""Recipient-bound Growth offers. Drafts cannot produce a payment URL.

The original $499 flow remains independent. No automatic discount, approval,
Stripe charge, or marketing send is performed by this module.
"""
import hashlib
import hmac
import json
import re
from datetime import datetime, timezone
from html import escape
from urllib.parse import urlencode, urlsplit

TIERS = {
    'growth_pack_25': {'amount':14900, 'count':25, 'name':'25-prospect Growth Pack'},
    'growth_upgrade_75': {'amount':35000, 'count':100, 'name':'Upgrade from 25 to 100 prospects'},
    'growth_strategy_addon': {'amount':25000, 'count':0, 'name':'Competitor snapshot and outreach plan'},
}
POSTAL='BMC Luminary Ventures LLC · 186 E. Sheldon St. #1144, Prescott, AZ 86301'
TERMS='Researched businesses to approach, not quote requests or guaranteed jobs. Limited overlap with other customers is possible; the research is not exclusive.'

def key(row):
    return re.sub('[^a-z0-9]', '', str(row.get('business_name','')).lower())

def validate_parent(tier, parent, email, sample_id):
    if tier=='growth_pack_25':
        if parent: raise ValueError('The 25-pack does not require a previous purchase')
        return
    if not parent or parent.get('payment_status') not in ('paid','complete') or parent.get('status')!='fulfilled':
        raise ValueError('A paid, fulfilled, unrefunded parent order is required')
    if str(parent.get('customer_email','')).lower()!=email.lower() or str(parent.get('growth_sample_id'))!=str(sample_id):
        raise ValueError('The parent order belongs to another recipient or sample')
    allowed={'growth_pack_25'} if tier=='growth_upgrade_75' else {'growth_pack_starter','growth_upgrade_75'}
    if parent.get('product_key') not in allowed:
        raise ValueError('This purchase is not eligible for the selected upgrade')
    expected={'growth_pack_25':14900,'growth_pack_starter':49900,'growth_upgrade_75':35000}
    if parent.get('currency')!='usd' or int(parent.get('amount_cents',0))!=expected[parent['product_key']]:
        raise ValueError('Parent price or currency requires review')

def validate_rows(tier, rows, originals, territory):
    expected=TIERS[tier]['count']
    if not expected: return
    original_count=25 if tier=='growth_upgrade_75' else 5
    if len(originals)!=original_count or len(rows)!=expected:
        raise ValueError('The promised quantity is incomplete')
    keys=[key(r) for r in rows]
    if '' in keys or len(set(keys))!=expected: raise ValueError('Duplicate or unnamed business')
    original_by_key={key(r):r for r in originals}
    if not set(original_by_key).issubset(keys): raise ValueError('Original prospects must be preserved')
    # Preserve the original research, not merely the same business names.
    fields=('business_name','market','fit_reason','sales_angle','public_email','public_phone','source_url')
    for r in rows:
        if key(r) in original_by_key and any(str(r.get(f) or '')!=str(original_by_key[key(r)].get(f) or '') for f in fields):
            raise ValueError('An original prospect was changed; customer review is required')
        u=urlsplit(str(r.get('source_url','')))
        if r.get('market') not in territory or int(r.get('fit_score',0))<65 or u.scheme not in ('https','http') or not u.hostname:
            raise ValueError('Territory, fit, or source check failed')
        if not (r.get('public_email') or r.get('public_phone')): raise ValueError('A public contact route is required')

def validate_strategy(strategy):
    if not isinstance(strategy,dict): raise ValueError('Strategy deliverable is missing')
    competitors=strategy.get('competitors',[])
    if len(competitors)<3: raise ValueError('At least three source-backed competitor observations are required')
    for c in competitors:
        if not all(c.get(k) for k in ('name','source_url','observed_offer','implication','checked_at')):
            raise ValueError('Competitor evidence is incomplete')
        if urlsplit(c['source_url']).scheme!='https': raise ValueError('Competitor source must be an HTTPS business page')
    if not all(strategy.get(k) for k in ('positioning','priorities','first_email','follow_up','phone_opener','reply_handling','four_week_plan')):
        raise ValueError('The outreach plan is incomplete')

def offer_digest(payload):
    return hashlib.sha256(json.dumps(payload,sort_keys=True,separators=(',',':'),default=str).encode()).hexdigest()

def signed_token(secret,offer_id,email):
    if not secret: return ''
    return hmac.new(secret.encode(),f'growth-offer|{offer_id}|{email.lower()}'.encode(),hashlib.sha256).hexdigest()

def checkout_url(offer, base_url, secret, token):
    expected=signed_token(secret,str(offer['offer_id']),offer['email'])
    if not expected or not hmac.compare_digest(expected,str(token)): raise ValueError('Invalid offer token')
    if offer['status']!='approved' or not offer.get('approved_at'): raise ValueError('Owner approval is required')
    if offer['expires_at']<=datetime.now(timezone.utc): raise ValueError('Offer expired; inventory must be rechecked')
    if urlsplit(base_url).hostname!='buy.stripe.com': raise ValueError('A configured Stripe checkout is required')
    return base_url+('&' if '?' in base_url else '?')+urlencode({
        'locked_prefilled_email':offer['email'],'client_reference_id':'growth_offer_'+str(offer['offer_id'])})

def validate_payment(offer, product_key, email, amount, currency):
    if offer['status']!='approved' or not offer.get('approved_at'): raise ValueError('Offer is not approved or was already paid')
    if product_key!=offer['product_key'] or email.lower()!=offer['email'].lower(): raise ValueError('Payment scope or recipient mismatch')
    if int(amount)!=TIERS[product_key]['amount'] or currency!='usd': raise ValueError('Payment price or currency mismatch')
    if offer['expires_at']<=datetime.now(timezone.utc): raise ValueError('Offer expired before payment')

def offer_email(tier,business,territory,url,unsubscribe_url):
    """One source for HTML/plaintext. Caller decides if/when sending is authorized."""
    if tier=='growth_pack_25':
        subject=f'A smaller first step for {business}'
        lines=[f'If 100 prospects is more than you want to work through right now, start with 25 researched businesses in {territory} for $149.',
          'Your five free prospects are included, so this adds 20. You get a branded PDF and spreadsheet with business websites, public contact routes, fit notes and suggested first conversations.',
          'If you later want the full 100, the upgrade is $350. We keep your original 25 and add 75, so your total is still $499. Availability is checked before purchase.',
          'Keep using the free five if that is enough for now. There is no subscription or obligation.']
        button='Review my 25-prospect pack — $149'
    elif tier=='growth_upgrade_75':
        subject=f'Ready for 75 more prospects in {territory}?'
        lines=['You already have your first 25. If those fit the work you want, we can expand your pack to 100 total for $350.',
          'Your original 25 stay in the pack. The additional 75 follow the agreed service, territory and research standard. Your total spend for all 100 is $499.',
          'The combined 100 arrive as a branded PDF and spreadsheet. There is no recurring charge.']
        button='Review my 75-prospect upgrade — $350'
    else:
        subject=f'A practical outreach plan for {business}'
        lines=['Having a researched list is one step. Deciding what to say and which accounts to approach first is the next.',
          f'The optional $250 strategy add-on pairs your {territory} prospect pack with a snapshot of three local competitors, a positioning recommendation, priority account groups, an opening email, a follow-up, a phone opener, reply guidance and a four-week action plan.',
          'This is a written research and planning deliverable. BMC does not send outreach on your behalf, promise appointments, or enroll you in a subscription. With the $499 pack, the total is $749.']
        button='Review my strategy add-on — $250'
    lines += [TERMS,'Reply with a question or a prospect that fails the agreed standard. Qualifying errors are replaced.']
    body='Hi '+business+' team,\n\n'+'\n\n'.join(lines)+'\n\n'+button+': '+url+'\n\nBrett\nBMC Service Network\ncontact@bmcservicenetwork.com\n'+POSTAL+'\n\nStop these emails: '+unsubscribe_url
    html='<html><meta name="viewport" content="width=device-width,initial-scale=1"><body style="margin:0;background:#f5f7f9;font:16px/1.6 Arial;color:#15334b"><div style="max-width:600px;margin:auto;padding:24px"><p style="font-weight:bold;color:#007e87">BMC SERVICE NETWORK</p><p>Hi '+escape(business)+' team,</p>'+''.join('<p>'+escape(s)+'</p>' for s in lines)+'<p><a style="display:inline-block;background:#007e87;color:white;padding:14px 20px;border-radius:6px;text-decoration:none" href="'+escape(url,quote=True)+'">'+escape(button)+'</a></p><p>Brett<br>BMC Service Network<br><a href="mailto:contact@bmcservicenetwork.com">contact@bmcservicenetwork.com</a></p><p style="font-size:12px;color:#526675">'+escape(POSTAL)+'</p><p style="font-size:12px"><a href="'+escape(unsubscribe_url,quote=True)+'">Stop these emails</a></p></div></body></html>'
    return {'subject':subject,'text':body,'html':html,'button':button}

def strategy_pdf(payload, reference, preview=False):
    import io,re
    from reportlab.platypus import SimpleDocTemplate, Paragraph, Spacer, Table, TableStyle, KeepTogether
    from reportlab.lib.styles import getSampleStyleSheet
    from reportlab.lib.pagesizes import letter
    from reportlab.lib import colors
    from growth_pdf import NAVY, TEAL, safe_website
    validate_strategy(payload['strategy'])
    out=io.BytesIO();styles=getSampleStyleSheet();s=payload['strategy']
    for name in ('BodyText','Title','Heading1','Heading2'):
        styles[name].fontName='BMCRegular' if name=='BodyText' else 'BMCBold'
        styles[name].textColor=NAVY
    styles['BodyText'].fontSize=10;styles['BodyText'].leading=15
    styles['Title'].textColor=TEAL;styles['Title'].fontSize=23
    styles['Heading2'].fontSize=13;styles['Heading2'].spaceBefore=14;styles['Heading2'].keepWithNext=True
    story=[]
    def paragraph(text,style='BodyText'):
        text=str(text);parts=[];last=0
        for match in re.finditer(r'https?://[^\s]+',text):
            parts.append(escape(text[last:match.start()]).replace('\n','<br/>'))
            url=match.group(0);safe=safe_website(url)
            parts.append('<link href="'+escape(safe,quote=True)+'" color="#007e87"><u>'+escape(url)+'</u></link>' if safe else escape(url))
            last=match.end()
        parts.append(escape(text[last:]).replace('\n','<br/>'))
        return Paragraph(''.join(parts),styles[style])
    def add(text,style='BodyText'):
        story.append(paragraph(text,style));story.append(Spacer(1,8))
    def card(lines):
        content=[]
        for line in lines:content.extend([paragraph(line),Spacer(1,6)])
        table=Table([[content]],colWidths=[526],hAlign="LEFT");table.setStyle(TableStyle([
          ('BACKGROUND',(0,0),(-1,-1),colors.HexColor('#eef5f3')),('BOX',(0,0),(-1,-1),.6,colors.HexColor('#d1dfe3')),
          ('LEFTPADDING',(0,0),(-1,-1),12),('RIGHTPADDING',(0,0),(-1,-1),12),('TOPPADDING',(0,0),(-1,-1),10),('BOTTOMPADDING',(0,0),(-1,-1),6)]))
        story.extend([KeepTogether(table),Spacer(1,10)])
    add('BMC SERVICE NETWORK','Title');add('Competitor snapshot & outreach plan','Heading1')
    add('Prepared for '+payload['business'],'Heading2');add('Territory: '+', '.join(payload['territory']))
    if preview:card(['OWNER REVIEW DRAFT — no order or customer delivery has been created.'])
    add('Public observations describe published offers. Recommendations are hypotheses to test; they do not establish competitor performance or buyer demand. This document does not send outreach on your behalf.')
    add('1. Local competitor observations','Heading2')
    for c in s['competitors']:
        add(c['name'],'Heading2')
        card(['Published offer: '+c['observed_offer'],'What to test: '+c['implication'],'Source: '+c['source_url'],'Source reviewed: '+c['checked_at']])
    for field,title in [('positioning','2. Positioning to test'),('priorities','3. Priority accounts'),('first_email','4. Company introduction'),('follow_up','5. One follow-up'),('phone_opener','6. Phone introduction'),('reply_handling','7. Reply guidance'),('four_week_plan','8. Four-week plan')]:
        add(title,'Heading2')
        for block in s[field].split('\n\n'):
            if field in ('priorities','four_week_plan'):card([block])
            else:add(block)
    add(POSTAL);story.append(Paragraph('Questions: <link href="mailto:contact@bmcservicenetwork.com" color="#007e87">contact@bmcservicenetwork.com</link>',styles['BodyText']))
    def footer(canvas,doc):
        canvas.saveState();canvas.setFont('BMCRegular',7);canvas.setFillColor(NAVY)
        canvas.drawString(43,27,('OWNER REVIEW · ' if preview else '')+payload['business'])
        canvas.drawRightString(569,27,str(doc.page));canvas.drawString(43,16,'Reference: '+reference);canvas.restoreState()
    SimpleDocTemplate(out,pagesize=letter,title='BMC strategy plan',author='BMC Service Network',invariant=1,leftMargin=43,rightMargin=43,topMargin=40,bottomMargin=43).build(story,onFirstPage=footer,onLaterPages=footer)
    return out.getvalue()


def offer_page(offer,payload,url):
    tier=offer['product_key'];product=TIERS[tier]
    description={'growth_pack_25':'25 total prospects, including your five free prospects. Branded PDF and CSV. One-time payment of $149.',
      'growth_upgrade_75':'Keep your original 25 and add 75: 100 total. Branded PDF and CSV. One-time upgrade of $350; total paid for all 100 is $499.',
      'growth_strategy_addon':'Three-competitor snapshot, positioning, account priorities, opening email, follow-up, phone opener, reply guidance and four-week plan. Branded PDF. One-time payment of $250; $749 total with the full prospect pack.'}[tier]
    return '<!doctype html><html><head><meta name="viewport" content="width=device-width,initial-scale=1"><title>BMC Growth offer</title></head><body style="margin:0;background:#f5f7f9;font:16px/1.6 Arial;color:#15334b"><main style="max-width:620px;margin:auto;padding:24px;overflow-wrap:anywhere"><p style="color:#007e87;font-weight:bold">BMC SERVICE NETWORK</p><h1 style="font-size:28px">'+escape(product['name'])+'</h1><p>Prepared for '+escape(payload['business'])+' · '+escape(', '.join(payload['territory']))+'</p><p>'+escape(description)+'</p><p>'+escape(TERMS)+'</p><p>Your reviewed deliverable is prepared before payment. It will be submitted to your verified email after Stripe confirms payment. Reply to contact@bmcservicenetwork.com for delivery help or qualifying-error replacements.</p><p><a href="'+escape(url,quote=True)+'" style="display:inline-block;background:#007e87;color:white;text-decoration:none;padding:14px 20px;border-radius:6px">Continue to secure checkout — $'+str(product['amount']//100)+'</a></p><p>No subscription. No automatic upgrade.</p><p style="font-size:12px">'+escape(POSTAL)+'</p></main></body></html>'
