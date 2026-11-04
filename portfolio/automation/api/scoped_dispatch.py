"""Server-authorized additive scoped dispatch; legacy target configuration is untouched."""
import hashlib,hmac,json,re
from datetime import datetime,timezone
from scoped_growth import profile_for_target
VERSION='scoped-dispatch-v1'

def mac(value,secret):
    if not secret:raise ValueError('dispatch_signing_unavailable')
    return hmac.new(secret.encode(),('bmc-scoped-dispatch|'+json.dumps(value,sort_keys=True,separators=(',',':'))).encode(),hashlib.sha256).hexdigest()

def authorize_dispatch(target,secret,request_id,wave):
    """Server-only controller calls after current approved scope and owner instruction."""
    if not isinstance(request_id,str) or not re.fullmatch('[A-Za-z0-9][A-Za-z0-9_-]{5,118}',request_id):raise ValueError('dispatch_request_id_required')
    if not isinstance(wave,str) or not re.fullmatch('[A-Za-z0-9][A-Za-z0-9_-]{2,118}',wave):raise ValueError('dispatch_wave_required')
    profile=profile_for_target(target,secret,customer=True)
    if not profile:raise ValueError('approved_scoped_profile_required')
    value=dict(version=VERSION,target_id=str(target['target_id']),profile_signature=profile['signature'],
        service_key=profile['service_key'],market=profile['market'],wave=wave,request_id=request_id,expires_at=profile['expires_at'])
    return dict(value,signature=mac(value,secret))

def dispatch_for_target(target,secret,waves):
    """Fail closed for absent/tampered/expired authorization or changed profile."""
    try:
        if target.get('status') in ('suppressed','bad_fit'):return None
        data=target.get('source_data') or {};data=json.loads(data) if isinstance(data,str) else data
        token=data.get('scoped_dispatch')
        if not isinstance(token,dict):return None
        value=dict(token);signed=value.pop('signature','')
        if not isinstance(signed,str) or not hmac.compare_digest(signed,mac(value,secret)):return None
        profile=profile_for_target(target,secret,customer=True)
        if not profile:return None
        if (value.get('version')!=VERSION or value.get('target_id')!=str(target['target_id'])
            or value.get('profile_signature')!=profile['signature'] or value.get('service_key')!=profile['service_key']
            or value.get('market')!=profile['market'] or value.get('expires_at')!=profile['expires_at']
            or value.get('wave')!=waves.get(profile['service_key'])
            or datetime.fromisoformat(value['expires_at'])<=datetime.now(timezone.utc)):
            return None
        return value['wave']
    except (ValueError,TypeError,KeyError,AttributeError):return None

def target_dispatch_wave(target,secret,legacy_ids,legacy_wave,waves):
    if target.get('status') in ('suppressed','bad_fit'):return None
    if str(target.get('target_id') or '') in legacy_ids:return legacy_wave
    return dispatch_for_target(target,secret,waves)

async def resolve_dispatch_scopes(conn,secret,legacy_ids,legacy_wave,waves):
    """Exact legacy pairs plus only current MAC-authorized additional targets."""
    result={str(target):legacy_wave for target in legacy_ids}
    rows=await conn.fetch("select * from growth_outreach_targets where source_data ? 'scoped_dispatch' and source_data ? 'scoped_offer' and status not in ('suppressed','bad_fit')")
    for raw in rows:
        target=dict(raw)
        if str(target.get('target_id') or '') in result:continue
        wave=dispatch_for_target(target,secret,waves)
        if wave:result[str(target['target_id'])]=wave
    return result
