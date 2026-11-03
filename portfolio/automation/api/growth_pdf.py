"""Private, in-memory customer deliverables. Never publish prospect files to Pages."""
import base64
import io
import re
from datetime import datetime, timezone
from html import escape
from urllib.parse import urlsplit
import reportlab
from pathlib import Path
from reportlab.pdfbase import pdfmetrics
from reportlab.pdfbase.ttfonts import TTFont
from reportlab.lib import colors
from reportlab.lib.styles import ParagraphStyle
from reportlab.platypus import SimpleDocTemplate, Paragraph, Spacer, KeepTogether, Table, TableStyle

# Bundle the font inside each private PDF for consistent mobile rendering.
_font_dir = Path(reportlab.__file__).parent / 'fonts'
pdfmetrics.registerFont(TTFont('BMCRegular', str(_font_dir / 'Vera.ttf')))
pdfmetrics.registerFont(TTFont('BMCBold', str(_font_dir / 'VeraBd.ttf')))

NAVY = colors.HexColor('#15334B')
TEAL = colors.HexColor('#007E87')

def safe_website(value):
    value = str(value or '').strip()
    try:
        u = urlsplit(value)
        host = (u.hostname or '').lower()
        if u.scheme not in ('http', 'https') or not host or u.username or u.password:
            return ''
        if host in ('data.cms.gov', 'hsapps.azdhs.gov') or host.endswith('.arcgis.com'):
            return ''
        if re.search(r'\.(json|csv|xml|zip)(?:$|[/?])|/(api|rest|query|download)(?:/|$)', u.path, re.I):
            return ''
        if re.search(r'(?:^|&)(?:f|format)=(?:p?json|csv|xml)(?:&|$)', u.query, re.I):
            return ''
        return value
    except ValueError:
        return ''

def format_business_phone(value):
    text=str(value or '').strip()
    digits=re.sub(r'\D','',text)
    if len(digits)==11 and digits.startswith('1'):digits=digits[1:]
    if len(digits)==10:return '('+digits[:3]+') '+digits[3:6]+'-'+digits[6:]
    return text


def prospect_presentation(row):
    """Customer-readable structure from existing evidence; never add a research claim."""
    text=str(row.get('fit_reason') or '').strip()
    boilerplate=(
      'Research candidate only; no buying interest, outsourcing need, current capacity or safe access confirmed.',
      'Public contact is a routing contact, not confirmed buying intent.',
      'Ask permission to discuss a defined non-specialist cleaning scope; no open job, current outsourcing need or safe access confirmed.')
    for phrase in boilerplate:text=text.replace(phrase,'').strip()
    links=[]
    def collect(match):
        url=match.group(0).rstrip('.,;)')
        if safe_website(url) and url not in [x['url'] for x in links]:
            links.append({'url':url,'label':'Supporting business source'})
        return '[supporting source]'+match.group(0)[len(url):]
    text=re.sub(r'https?://[^\s<>]+',collect,text)
    points=[x.strip() for x in re.split(r'(?<=[.!?])\s+(?=[A-Z])',text) if x.strip()]
    location='';fit=[];notes=[];actions=[]
    for point in points:
        if re.match(r'^Official (?:Phoenix office:|business page confirms|contact page:|location page:|hotel page:)',point):
            location=re.sub(r'^Official (?:Phoenix office:|business page confirms|contact page:|location page:|hotel page:)\s*','',point).rstrip('.')
            if ';' in location:
                location,detail=location.split(';',1)
                if detail.strip():fit.append('Published facility details: '+detail.strip())
        elif re.match(r'^(?:Ask |Offer |Confirm |Check |Lead )',point):actions.append(point)
        elif re.match(r'^(?:Do not |Exclude |Never |Published front-desk |Published general contact |Public general |Shared office line )',point):notes.append(point)
        else:fit.append(point)
    approach=[x.strip() for x in re.split(r'(?<=[.!?])\s+(?=[A-Z])',str(row.get('sales_angle') or '')) if x.strip()]
    supporting_contacts=[]
    if (str(row.get('business_name'))=='CBRE Phoenix' and
        'https://www.cbre.com/people/andi-stjohn' in [x['url'] for x in links]):
        fit=['CBRE’s published Arizona property-management profile provides a relevant contact for inquiries about cleaning vendors for Phoenix managed properties.']
        approach=['Ask the property-management team about vendor onboarding for Phoenix managed properties.',
          'Offer a walkthrough of one property and a written cleaning scope before discussing a wider portfolio.']
        actions=[];notes=['Keep the inquiry focused on Phoenix managed properties.']
        links=[dict(x,label='Arizona property-management contact profile') for x in links]
        supporting_contacts=[{'label':'Published property-management contact','phone':format_business_phone('6027355622')}]
    if not fit:
        # The address alone is location evidence, not proof of cleaning demand.
        fit=['This '+str(row.get('category') or row.get('category_label') or 'commercial property').replace('_',' ')+' is listed in '+str(row.get('market') or 'the selected territory')+'. Review the scope below with its operations team.']
    for point in actions:
        if point not in approach:approach.append(point)
    def pretty_text(value):
        return re.sub(r'(?<!\w)(?:\+?1[ .-]?)?\(?\d{3}\)?[ .-]?\d{3}[ .-]?\d{4}(?!\d)',lambda m:format_business_phone(m.group(0)),value)
    return {'location':pretty_text(location),'fit_points':[pretty_text(x) for x in fit],'approach_points':[pretty_text(x) for x in approach],
      'scope_notes':[pretty_text(x) for x in notes],'supporting_sources':links,'supporting_contacts':supporting_contacts}


def present_prospect_rows(rows):
    return [dict(row,presentation=prospect_presentation(row)) for row in rows]

def render_sample_pdf(rows, business, service, territory, sample_id, prepared_at=None, preview=False, paid=False, paid_count=100):
    """Render only the caller's already authorized five; no database or URL fetching."""
    if paid_count not in (25,100):
        raise ValueError("Unsupported paid pack quantity")
    if len(rows) != (paid_count if paid else 5):
        raise ValueError('A sample PDF requires exactly five prospects')
    out = io.BytesIO()
    doc = SimpleDocTemplate(out, pagesize=(612, 792), rightMargin=45, leftMargin=45,
                           topMargin=64, bottomMargin=58, title='Your commercial prospect brief',
                           author='BMC Service Network', invariant=1)
    styles = {
        'title': ParagraphStyle('title', fontName='BMCBold', fontSize=21, leading=26, textColor=NAVY, spaceAfter=9),
        'heading': ParagraphStyle('heading', fontName='BMCBold', fontSize=13, leading=17, textColor=NAVY, spaceAfter=7, keepWithNext=True),
        'body': ParagraphStyle('body', fontName='BMCRegular', fontSize=9.5, leading=14, textColor=NAVY, spaceAfter=5),
        'small': ParagraphStyle('small', fontName='BMCRegular', fontSize=8, leading=11, textColor=colors.HexColor('#526675'), spaceAfter=4),
        'label': ParagraphStyle('label', fontName='BMCBold', fontSize=8, leading=11, textColor=TEAL, spaceAfter=5),
        'white': ParagraphStyle('white', fontName='BMCBold', fontSize=13, leading=17, textColor=colors.white, spaceAfter=3),
        'meta': ParagraphStyle('meta', fontName='BMCRegular', fontSize=8.5, leading=12, textColor=colors.HexColor('#D8EAEE')),
        'number': ParagraphStyle('number', fontName='BMCBold', fontSize=19, leading=23, textColor=colors.white),
        'bullet': ParagraphStyle('bullet', fontName='BMCRegular', fontSize=9.5, leading=14, textColor=NAVY, leftIndent=9, bulletIndent=0, spaceAfter=4),
    }
    def clean_text(value):
        return str(value or '').replace('\u2014',' - ').replace('\u2013','-').replace('\u2011','-')
    def p(value, style='body'):
        return Paragraph(escape(clean_text(value)).replace('\n', '<br/>'), styles[style])
    def bullets(value):
        # Keep every source-specific fact. Repeated global caveats are stated once above.
        text=clean_text(value)
        text=text.replace('Research candidate only; no buying interest, outsourcing need, current capacity or safe access confirmed.','').strip()
        parts=[x.strip() for x in re.split(r'(?<=[.!?])\s+(?=[A-Z])',text) if x.strip()]
        return [Paragraph(escape(x),styles['bullet'],bulletText='-') for x in parts] or [p('Fit needs review.')]
    def panel(content,background='#F0F6F8'):
        table=Table([[content]],colWidths=[doc.width])
        table.setStyle(TableStyle([('BACKGROUND',(0,0),(-1,-1),colors.HexColor(background)),
          ('BOX',(0,0),(-1,-1),.6,colors.HexColor('#D4E1E8')),
          ('LEFTPADDING',(0,0),(-1,-1),12),('RIGHTPADDING',(0,0),(-1,-1),12),
          ('TOPPADDING',(0,0),(-1,-1),10),('BOTTOMPADDING',(0,0),(-1,-1),10)]))
        return table
    when = str(prepared_at or datetime.now(timezone.utc).date())[:10]
    story = [p(f'Your {paid_count}-prospect Growth Pack' if paid else 'Five prospects. Your researched shortlist.', 'title'),
             p('Prepared for ' + str(business), 'heading'),
             p(f'{service}  |  {", ".join(territory)}  |  {when}', 'small'),Spacer(1,7)]
    if preview:
        story += [panel([p('OWNER REVIEW COPY','label'),p('Review only. No customer sample has been saved or delivered.','small')],'#FFF5DC'),Spacer(1,8)]
    story += [panel([p('RESEARCH, NOT QUOTE REQUESTS','label'),
        p('These businesses have not requested quotes. No buying interest, outsourcing need, current capacity or safe access is confirmed.','small')]),Spacer(1,14)]
    prospect_blocks=[]
    for i, row in enumerate(rows, 1):
        header=Table([[p(f'{i:02d}','number'),[p(row.get('business_name',''),'white'),
            p(f'{row.get("market", "")}  |  {str(row.get("category") or row.get("category_label") or "").replace("_"," ").title()}', 'meta')]]],colWidths=[64,doc.width-64])
        header.setStyle(TableStyle([('BACKGROUND',(0,0),(-1,-1),NAVY),('VALIGN',(0,0),(-1,-1),'TOP'),
            ('LEFTPADDING',(0,0),(-1,-1),11),('RIGHTPADDING',(0,0),(-1,-1),11),
            ('TOPPADDING',(0,0),(-1,-1),11),('BOTTOMPADDING',(0,0),(-1,-1),10)]))
        view=prospect_presentation(row)
        fit=[p('WHY IT FITS','label')]+[p(x) for x in view['fit_points']]
        if view['location']:fit += [p('Location: '+view['location'],'small')]
        opening=[p('HOW TO APPROACH','label')]+[p(x) for x in view['approach_points']]
        if view['scope_notes']:opening += [p('Scope: '+x,'small') for x in view['scope_notes']]
        contact=[p('CONTACT & SOURCE','label')]
        phone=clean_text(row.get('public_phone'));digits=re.sub(r'\D','',phone)
        if len(digits)==11 and digits.startswith('1'):digits=digits[1:]
        if len(digits)==10:phone=f'({digits[:3]}) {digits[3:6]}-{digits[6:]}'
        email_addr=clean_text(row.get('public_email'))
        if phone:
            dial=('1'+digits) if len(digits)==10 else digits
            if 10<=len(dial)<=15:contact.append(Paragraph('Phone: <link href="tel:+'+dial+'" color="#007E87">'+escape(phone)+'</link>',styles['body']))
            else:contact.append(p('Phone: '+phone))
        if email_addr:
            if re.fullmatch(r'[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}',email_addr):contact.append(Paragraph('Email: <link href="mailto:'+escape(email_addr,quote=True)+'" color="#007E87">'+escape(email_addr)+'</link>',styles['body']))
            else:contact.append(p('Email: '+email_addr))
        for detail in view['supporting_contacts']:
            digits=re.sub(r'\D','',detail['phone']);label='('+digits[:3]+') '+digits[3:6]+'-'+digits[6:] if len(digits)==10 else detail['phone']
            contact.append(Paragraph(escape(detail['label'])+': <link href="tel:+1'+digits+'" color="#007E87">'+escape(label)+'</link>',styles['body']))
        if not phone and not email_addr:contact.append(p('Contact: '+clean_text(row.get('contact_route') or 'Contact details need review.')))
        url=safe_website(row.get('website_url') or row.get('source_url'))
        if url:
            host=urlsplit(url).netloc
            contact.append(Paragraph('Website: <link href="'+escape(url,quote=True)+'" color="#007E87">'+escape(host)+' - open official business page</link>',styles['body']))
        else:contact.append(p('Business website requires review; no raw data feed is provided.','small'))
        for source in view['supporting_sources']:
            contact.append(Paragraph('<link href="'+escape(source['url'],quote=True)+'" color="#007E87">'+escape(source['label'])+'</link>',styles['body']))
        card=Table([[header],[fit],[opening],[contact]],colWidths=[doc.width])
        card.setStyle(TableStyle([('VALIGN',(0,0),(-1,-1),'TOP'),
          ('LEFTPADDING',(0,0),(-1,0),0),('RIGHTPADDING',(0,0),(-1,0),0),
          ('TOPPADDING',(0,0),(-1,0),0),('BOTTOMPADDING',(0,0),(-1,0),0),
          ('LEFTPADDING',(0,1),(-1,-1),12),('RIGHTPADDING',(0,1),(-1,-1),12),
          ('TOPPADDING',(0,1),(-1,-1),8),('BOTTOMPADDING',(0,1),(-1,-1),6),
          ('BACKGROUND',(0,1),(-1,2),colors.white),('BACKGROUND',(0,3),(-1,3),colors.HexColor('#EDF6F5')),
          ('BOX',(0,0),(-1,-1),.7,colors.HexColor('#CADBE5')),
          ('LINEABOVE',(0,2),(-1,3),.5,colors.HexColor('#DCE6EB'))]))
        prospect_blocks.append([card,Spacer(1,16)])
    closing=[p('YOUR NEXT STEP','label'),
      p('Review the fit, then use the suggested conversation to ask about needs and the vendor process. Confirm current operations and safe access before a visit.'),
      p(f'Your original five are included in these {paid_count} researched prospects. Reply with qualifying errors for replacement. No guaranteed jobs or sales.' if paid else 'The five are free with no obligation. Where the reviewed territory supports it, the optional $499 pack contains 100 total researched prospects, including these five. No guaranteed jobs or sales.'),
      p('Questions or corrections? contact@bmcservicenetwork.com','small'),
      p('Limited overlap with other samples is possible; these prospects are not exclusive.','small')]
    story += [KeepTogether(block) for block in prospect_blocks[:-1]]
    # Keep the next-step box with the last prospect; never create a mostly empty closing page.
    story.append(KeepTogether(prospect_blocks[-1]+[panel(closing),Spacer(1,9),
      p('BMC Luminary Ventures LLC | 186 E. Sheldon St. #1144, Prescott, AZ 86301','small'),
      p('Sample reference: '+str(sample_id),'small')]))
    def chrome(canvas, document):
        canvas.saveState()
        canvas.setFillColor(TEAL); canvas.rect(0, 774, 612, 18, fill=1, stroke=0)
        canvas.setFillColor(NAVY); canvas.setFont('BMCBold', 10)
        canvas.drawString(45, 748, 'BMC SERVICE NETWORK')
        canvas.setStrokeColor(colors.HexColor('#D4E1E8'));canvas.line(45,50,567,50)
        canvas.setFont('BMCRegular',7);canvas.setFillColor(colors.HexColor('#526675'));canvas.drawString(45,41,'Research prospects - not quote requests')
        canvas.setFillColor(NAVY);canvas.setFont('BMCRegular', 8); canvas.drawString(45, 27, 'Prepared for ' + str(business)[:70])
        canvas.drawRightString(567, 27, f'{document.page}')
        canvas.restoreState()
    doc.build(story, onFirstPage=chrome, onLaterPages=chrome)
    return out.getvalue()

def sample_pdf_response(rows, business, service, territory, sample_id, prepared_at=None, preview=False):
    if len(rows) != 5:
        return {}
    name = re.sub(r'[^a-zA-Z0-9-]+', '-', str(business)).strip('-')[:65] or 'Your-Business'
    data = render_sample_pdf(rows, business, service, territory, sample_id, prepared_at, preview)
    return {'download_filename': f'BMC-{name}-Five-Prospects.pdf',
            'download_pdf_base64': base64.b64encode(data).decode('ascii')}
