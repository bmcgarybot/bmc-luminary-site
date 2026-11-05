"""Current native source binding before provider recruitment; never enrolls/sends."""
import json,re
from datetime import datetime,timedelta,timezone
from official_research import NATIVE_VERSIONS,auto_evidence_valid

MAX_AGE=timedelta(days=7)
SOURCE_SQL="""select * from market_inventory_candidates where side='vendor' and market=$1 and category_key=$2
 and lower(public_email)=lower($3) and status='discovered' and closed_at is null
 and evidence->>'researched_by'=any($4::text[])
 order by last_verified_at desc nulls last,updated_at desc,candidate_id limit 5"""

def legal_name(value):
    words=re.findall(r'[a-z0-9]+',str(value or '').casefold().replace('&',' and '))
    while words:
        if words[-1] in {'llc','inc','incorporated','corp','corporation','ltd','limited'}:words.pop()
        elif words[-3:]==['l','l','c']:del words[-3:]
        else:break
    return words

def matches_source(candidate,recipient,secret,now=None):
    try:
        now=now or datetime.now(timezone.utc)
        email=str(recipient.get('public_email') or '').strip().lower()
        if not email or candidate.get('side')!='vendor' or candidate.get('status')!='discovered' or candidate.get('closed_at') is not None:return False
        if (str(candidate.get('public_email') or '').strip().lower()!=email or candidate.get('market')!=recipient.get('market')
            or candidate.get('category_key')!=recipient.get('service_key')):return False
        name=legal_name(recipient.get('business_name'))
        if not name or legal_name(candidate.get('business_name'))!=name:return False
        evidence=candidate.get('evidence') or {};evidence=json.loads(evidence) if isinstance(evidence,str) else evidence
        if evidence.get('researched_by') not in NATIVE_VERSIONS or evidence.get('qualification_hold'):return False
        checked=datetime.fromisoformat(evidence['vps_verification']['checked_at'])
        if checked.tzinfo is None or not -timedelta(minutes=5)<=now-checked<=MAX_AGE:return False
        return auto_evidence_valid(dict(candidate,evidence=evidence),secret) is True
    except (ValueError,TypeError,KeyError,AttributeError,OverflowError):return False

async def provider_source_gate(conn,recipient,secret):
    if not all(recipient.get(k) for k in ('business_name','public_email','market','service_key')):return False
    rows=await conn.fetch(SOURCE_SQL,recipient['market'],recipient['service_key'],recipient['public_email'],list(NATIVE_VERSIONS))
    return any(matches_source(dict(candidate),recipient,secret) for candidate in rows[:5])
