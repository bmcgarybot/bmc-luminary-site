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
from reportlab.platypus import SimpleDocTemplate, Paragraph, Spacer, KeepTogether

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
        'title': ParagraphStyle('title', fontName='BMCBold', fontSize=24, leading=29, textColor=NAVY, spaceAfter=12),
        'heading': ParagraphStyle('heading', fontName='BMCBold', fontSize=13, leading=17, textColor=NAVY, spaceAfter=7, keepWithNext=True),
        'body': ParagraphStyle('body', fontName='BMCRegular', fontSize=10, leading=15, textColor=NAVY, spaceAfter=8),
        'small': ParagraphStyle('small', fontName='BMCRegular', fontSize=8, leading=12, textColor=colors.HexColor('#526675'), spaceAfter=7),
    }
    def p(value, style='body'):
        return Paragraph(escape(str(value or '')).replace('\n', '<br/>'), styles[style])
    when = str(prepared_at or datetime.now(timezone.utc).date())[:10]
    story = [p(f'Your {paid_count}-prospect Growth Pack' if paid else 'Five prospects. A practical starting point.', 'title'),
             p('Prepared for ' + str(business), 'heading'),
             p(f'{service} | {", ".join(territory)} | Prepared {when}'),
             p('A researched shortlist of businesses to approach. These businesses have not requested quotes, and no job or buying interest is confirmed.'),
             p(('Review shortlist only; no customer sample has been saved or delivered. ' if preview else ('Your purchased research is prepared for your business. ' if paid else 'Your sample is saved for your business. ')) + 'Limited overlap with other samples is possible; these prospects are not exclusive.', 'small')]
    if preview:
        story.append(p('OWNER REVIEW COPY — not a customer delivery or confirmed opportunity.', 'heading'))
    for i, row in enumerate(rows, 1):
        block = [p(f'{i:02d}  {row.get("business_name", "")}', 'heading'),
                 p(f'{row.get("market", "")} | {row.get("category", "")}', 'small'),
                 p('Why this business: ' + str(row.get('fit_reason') or 'Fit needs review.')),
                 p('Suggested first conversation: ' + str(row.get('sales_angle') or 'Confirm who manages this service and whether outside vendors are considered.'))]
        phone = str(row.get('public_phone') or '')
        digits = re.sub(r'\D', '', phone)
        if len(digits) == 11 and digits.startswith('1'): digits = digits[1:]
        if len(digits) == 10: phone = f'({digits[:3]}) {digits[3:6]}-{digits[6:]}'
        contact = ' | '.join(v for v in (str(row.get('public_email') or ''), phone) if v)
        block.append(p('Public contact: ' + (contact or str(row.get('contact_route') or 'Contact details need review.'))))
        url = safe_website(row.get('website_url') or row.get('source_url'))
        if url:
            block.append(Paragraph('Business website: <link href="' + escape(url, quote=True) + '" color="#007E87">' + escape(url) + '</link>', styles['body']))
        else:
            block.append(p('Business website requires review; no raw data feed is provided.', 'small'))
        block.append(Spacer(1, 14))
        story.append(KeepTogether(block))
    story += [p('Your next step', 'heading'),
              p('Review the fit, then use the suggested conversation to ask about their needs and vendor process. Confirm current operations and safe access before arranging a visit.'),
              p(f'Your original five are included in these {paid_count} researched prospects. Reply with any qualifying errors for replacement. No guaranteed jobs or sales.' if paid else 'The five are free with no obligation. Where the reviewed territory supports it, the optional $499 pack contains 100 total researched prospects, including these five. No guaranteed jobs or sales.'),
              p('Questions or corrections? contact@bmcservicenetwork.com'),
              p('BMC Luminary Ventures LLC | 186 E. Sheldon St. #1144, Prescott, AZ 86301', 'small'),
              p('Sample reference: ' + str(sample_id), 'small')]
    def chrome(canvas, document):
        canvas.saveState()
        canvas.setFillColor(TEAL); canvas.rect(0, 774, 612, 18, fill=1, stroke=0)
        canvas.setFillColor(NAVY); canvas.setFont('BMCBold', 10)
        canvas.drawString(45, 748, 'BMC SERVICE NETWORK')
        canvas.setFont('BMCRegular', 8); canvas.drawString(45, 32, 'Prepared for ' + str(business)[:70])
        canvas.drawRightString(567, 32, f'{document.page}')
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
