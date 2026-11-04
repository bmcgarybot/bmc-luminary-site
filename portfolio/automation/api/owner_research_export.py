"""Read-only, fixed-recipient encrypted research transfer over the public relay."""
import base64
import gzip
import hashlib
import json
import os
import re
from datetime import datetime, timezone
from pathlib import Path
from cryptography.hazmat.primitives import hashes, serialization
from cryptography.hazmat.primitives.asymmetric import padding, rsa
from cryptography.hazmat.primitives.ciphers.aead import AESGCM

PINNED_FINGERPRINT = 'e2076ac16d076fdded5f0090e9b3df53ccbe8be859d861371221bd9818818cc6'
VERSION = 'bmc-owner-research-v1'

def seal_export(payload, request_id):
    if not re.fullmatch(r'[A-Za-z0-9][A-Za-z0-9_-]{5,118}', request_id):
        raise ValueError('invalid_request_id')
    key = serialization.load_pem_public_key(Path(__file__).with_name('owner_research_public.pem').read_bytes())
    if not isinstance(key, rsa.RSAPublicKey) or key.key_size < 3072:
        raise ValueError('invalid_owner_public_key')
    fingerprint = hashlib.sha256(key.public_bytes(serialization.Encoding.DER, serialization.PublicFormat.SubjectPublicKeyInfo)).hexdigest()
    if fingerprint != PINNED_FINGERPRINT:
        raise ValueError('owner_public_key_pin_mismatch')
    plain = json.dumps(payload, default=str, separators=(',', ':')).encode()
    if len(plain) > 1_000_000:
        raise ValueError('export_size_exceeded')
    secret = AESGCM.generate_key(bit_length=256)
    nonce = os.urandom(12)
    aad = f'{VERSION}|{request_id}|{fingerprint}'.encode()
    encrypted = AESGCM(secret).encrypt(nonce, gzip.compress(plain, mtime=0), aad)
    wrapped = key.encrypt(secret, padding.OAEP(mgf=padding.MGF1(hashes.SHA256()), algorithm=hashes.SHA256(), label=None))
    encode = lambda value: base64.b64encode(value).decode('ascii')
    return dict(version=VERSION, request_id=request_id, key_fingerprint=fingerprint,
                wrapped_key=encode(wrapped), nonce=encode(nonce), ciphertext=encode(encrypted))

def reviewed_row(row, secret):
    from official_research import auto_evidence_valid
    row = dict(row)
    evidence = row.get('evidence') or {}
    if isinstance(evidence, str):
        evidence = json.loads(evidence)
    valid = auto_evidence_valid(row, secret)
    fields = ('candidate_id','side','market','category_key','category_label','business_name',
              'source_url','public_email','public_phone','snippet')
    result = {k: row.get(k) for k in fields}
    result['readiness'] = 'primary_source_verified' if valid else 'candidate_requires_review'
    if valid:
        signed = evidence.get('vps_verification') or {}
        result['source_facts'] = {k: signed.get(k) for k in
            ('checked_at','physical_address','category_evidence','content_sha256','description')}
    return result

def install(app, require_admin, markets, secret):
    from fastapi import Header, HTTPException
    @app.post('/api/admin/owner-research-export')
    async def export(request_id: str, x_bmc_admin_key: str | None = Header(default=None)):
        require_admin(x_bmc_admin_key)
        if not re.fullmatch(r'[A-Za-z0-9][A-Za-z0-9_-]{5,118}', request_id):
            raise HTTPException(400, 'invalid_request_id')
        async with app.state.pool.acquire() as conn:
            async with conn.transaction(isolation='repeatable_read', readonly=True):
                native = await conn.fetch("""select candidate_id,side,market,category_key,category_label,
                    business_name,source_url,public_email,public_phone,snippet,evidence
                    from market_inventory_candidates where market=any($1::text[]) and status='discovered'
                    and closed_at is null and evidence->>'researched_by'='vps_primary_site_v1'
                    order by last_verified_at desc nulls last,candidate_id limit 500""", list(markets))
                held = await conn.fetch("""with ranked as (select c.*,j.error_code,
                    row_number() over(partition by c.market order by j.last_attempt_at desc,c.candidate_id) pos
                    from market_inventory_candidates c join official_research_jobs j using(candidate_id)
                    where c.market=any($1::text[]) and c.status='discovered' and c.closed_at is null
                    and j.status='needs_review') select candidate_id,side,market,category_key,category_label,
                    business_name,source_url,public_email,public_phone,snippet,evidence,error_code
                    from ranked where pos<=2 order by market,pos""", list(markets))
        records = [reviewed_row(row, secret) for row in native]
        held_records = [dict(reviewed_row(row, secret), review_reason=row['error_code']) for row in held]
        payload = dict(observed_at=datetime.now(timezone.utc).isoformat(), markets=list(markets),
                       native_records=records, held_review_queue=held_records,
                       scope='Research evidence only; no provider acceptance, demand or release authorization')
        return seal_export(payload, request_id)
