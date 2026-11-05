"""Extra pilot-only property-source gate; never a replacement native verifier.

Caller must first fetch real official HTML and run official_research.parse_record
with buyer/Phoenix/property_management. This pure gate neither fetches nor signs,
adds schema, changes inventory, verifies buying intent, or accepts providers.
"""
import json
import re
from html.parser import HTMLParser


def legal(value):
    tokens=re.findall('[a-z0-9]+',str(value).lower())
    while tokens and tokens[-1] in {'llc','inc','incorporated','corp','corporation','ltd','limited'}:tokens.pop()
    return tokens


class Source(HTMLParser):
    BLOCK={'title','h1','h2','h3','h4','h5','h6','p','li','div','section','article','main'}
    VOID={'area','base','br','col','embed','hr','img','input','link','meta','param','source','track','wbr'}
    def __init__(self):
        super().__init__(convert_charrefs=True);self.stack=[];self.blocks=[];self.schemas=[]
    def handle_starttag(self,tag,attrs):
        attrs=dict(attrs);style=re.sub(r'\s+','',attrs.get('style','')).lower()
        hidden=(bool(self.stack and self.stack[-1]['hidden']) or tag in {'script','style','noscript','template'}
            or 'hidden' in attrs or 'inert' in attrs or attrs.get('aria-hidden','').lower()=='true'
            or bool(re.search(r'(?:^|;)(?:display:none|visibility:(?:hidden|collapse)|content-visibility:hidden|opacity:0)(?:!important)?(?:;|$)',style)))
        excluded=(bool(self.stack and self.stack[-1]['excluded']) or tag in {'nav','footer','header','aside','blockquote','q','form'}
            or bool(re.search(r'testimonial|customer[-_ ]?review|review[-_ ]?card|reviews|quote[-_ ]?card',str(attrs),re.I)))
        node={'tag':tag,'hidden':hidden,'excluded':excluded,'parts':[],
              'schema':tag=='script' and attrs.get('type','').lower()=='application/ld+json'}
        if tag not in self.VOID:self.stack.append(node)
    def handle_data(self,data):
        if self.stack and self.stack[-1]['schema']:self.stack[-1]['parts'].append(data);return
        if self.stack and self.stack[-1]['hidden']:return
        for node in reversed(self.stack):
            node['parts'].append(data)
            if node['tag'] in self.BLOCK:break
    def handle_endtag(self,tag):
        i=next((i for i in range(len(self.stack)-1,-1,-1) if self.stack[i]['tag']==tag),None)
        if i is None:return
        node=self.stack[i]
        if node['schema']:
            try:self.schemas.append(json.loads(''.join(node['parts'])))
            except (ValueError,TypeError):pass
        elif tag in self.BLOCK and not node['hidden'] and not node['excluded']:
            text=' '.join(' '.join(node['parts']).split())
            if text:self.blocks.append((tag,text))
        del self.stack[i:]


def countries(value):
    if isinstance(value,dict):
        for key,item in value.items():
            if key=='addressCountry':yield item
            else:yield from countries(item)
    elif isinstance(value,list):
        for item in value:yield from countries(item)


def country_values(value):
    if isinstance(value,str):return [value]
    if isinstance(value,dict):
        found=[value[k] for k in ('name','alternateName','identifier','@id') if value.get(k)]
        if not found or any(not isinstance(x,str) for x in found):raise ValueError('property_country_unproven')
        return found
    raise ValueError('property_country_unproven')


def name_identity(tag,text,expected):
    for segment in re.split(r'[|•]|\s[-–—]\s',text):
        normalized=legal(re.sub(r'^(?:welcome to|about|contact)\s+','',segment,flags=re.I))
        if normalized==expected:return True
    tokens=legal(text)
    for i in range(len(tokens)-len(expected)+1):
        if tokens[i:i+len(expected)]!=expected:continue
        rest=tokens[i+len(expected):]
        while rest and rest[0] in ('llc','inc','corporation','corp','ltd'):rest=rest[1:]
        if rest and rest[0] in ('is','are','offers','provides','manages','specializes','delivers','has','serves'):return True
    return False


def validate_property_source(candidate,document):
    """Require exact visible identity + affirmative operator/community role.

    Returns bounded publication excerpts only, never native/HMAC verification.
    Explicit foreign structured countries anywhere in the source contradict the
    pilot's US-only source policy, even if another entity supplies an AZ address.
    """
    if not isinstance(candidate,dict) or not legal(candidate.get('business_name')):raise ValueError('property_identity_unproven')
    if candidate.get('side','buyer')!='buyer' or candidate.get('category_key','property_management')!='property_management' or str(candidate.get('market','Phoenix')).strip().casefold()!='phoenix':raise ValueError('property_pilot_scope_required')
    if not isinstance(document,str) or not 0<len(document.encode('utf-8'))<=1_000_000:raise ValueError('property_source_size_invalid')
    page=Source();page.feed(document)
    allowed={'us','usa','united states','united states of america'}
    for value in countries(page.schemas):
        for name in country_values(value):
            normalized=' '.join(name.strip().lower().split())
            if normalized.startswith(('https://','http://')):normalized=normalized.rstrip('/').rsplit('/',1)[-1]
            if normalized not in allowed:raise ValueError('property_non_us_country')
    expected=legal(candidate['business_name'])
    identities=[text for tag,text in page.blocks if name_identity(tag,text,expected)]
    if not identities:raise ValueError('property_exact_visible_identity_unproven')
    roles=[]
    for tag,text in page.blocks:
        if tag=='title':continue
        low=text.lower().replace('’',"'")
        role=bool(re.search(r'\bproperty management\b|\b(?:(?:apartment|multifamily) (?:community|communities|complex|complexes|homes)|residential communit(?:y|ies))\b|\bapartments for rent\b',low))
        if not role:continue
        if re.search(r"\bproperty management(?: services)?\b[^.!?;]{0,35}\b(?:not (?:available|offered|provided)|unavailable|discontinued)\b|\b(?:do not|does not|don't|doesn't|no longer|not currently|not presently|never)\b[^.!?;]{0,65}\b(?:offer|provide|perform|manage|handle|specializ|property management)\b|\bno property management\b",low):
            raise ValueError('property_role_declined')
        if re.search(r'\b(?:software|platform|training|courses?|jobs?|careers?|equipment|insurance|cleaning|landscaping|tree care|junk removal)\b',low):continue
        # Mere suppliers/partners/nearby references do not identify an operator.
        if re.search(r'\b(?:work with|serve|serving|suppl(?:y|ier|ies)|for property manag(?:ement|ers?)|property management (?:clients|customers|companies|firms|partners)|near|adjacent to)\b',low):continue
        management=bool(re.search(r'\b(?:we|our|provides?|offers?|specializ\w*|deliver\w*)\b[^.!?;]{0,100}\bproperty management\b',low)
            or (tag in ('h1','h2','h3','h4') and re.search(r'\bproperty management(?: services)?\b',low)
                and not re.search(r'\b(?:what is|how to|guide|article|news|tips)\b',low)))
        community=bool(re.search(r'\b(?:(?:apartment|multifamily) (?:community|communities|complex|complexes|homes)|residential communit(?:y|ies))\b|\bapartments for rent\b',low)
            and (tag in ('h1','h2','h3','h4') or re.search(r'\b(?:we|our|welcome|offers?|is|are|live|located|rent|leasing)\b',low)))
        if management or community:roles.append(('property_management' if management else 'apartment_community',text))
    if not roles:raise ValueError('property_visible_operator_role_unproven')
    return {'published_role':roles[0][0],'identity_excerpt':identities[0][:400],'role_excerpt':roles[0][1][:600],
        'native_verification_performed':False,'confirmed_buying_intent':False,'provider_accepted':False}
