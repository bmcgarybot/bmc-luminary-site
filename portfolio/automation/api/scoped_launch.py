"""Exact already-authorized rolling batch, independent of the original cohort."""
import re
from scoped_dispatch import dispatch_for_target

def target_ids(payload):
    if not isinstance(payload,dict) or set(payload)!={'target_ids'}:raise ValueError('exact_target_ids_required')
    ids=payload['target_ids']
    if (not isinstance(ids,list) or not 1<=len(ids)<=25
        or any(not isinstance(t,str) or not re.fullmatch(r'inventory:[0-9a-f]{8}(?:-[0-9a-f]{4}){3}-[0-9a-f]{12}',t) for t in ids)
        or len(set(ids))!=len(ids)):raise ValueError('exact_target_ids_required')
    return ids

async def check_batch(conn,payload,secret,waves):
    ids=target_ids(payload)
    for tid in ids:
        row=await conn.fetchrow('select * from growth_outreach_targets where target_id=$1',tid)
        if not row or row['status']!='contactable':raise ValueError('approved_unsent_target_required')
        wave=dispatch_for_target(dict(row),secret,waves)
        if not wave:raise ValueError('approved_scoped_dispatch_required')
        eligible=await conn.fetchval("""select exists(select 1 from outreach o
          join growth_experiment_cells e on e.cell_key=$3
          where o.entity_type='growth_customer' and o.entity_id=$1 and o.wave=$2
          and o.campaign='growth_sales' and o.status='queued' and o.sent_at is null
          and o.opt_out=false and o.owner_review_required=false
          and e.status in ('exploring','winner','challenger')
          and not exists(select 1 from outreach_suppressions s where lower(s.email)=lower($4)))""",
          tid,wave,row['experiment_cell'],row['public_email'])
        if not eligible:raise ValueError('approved_unsent_target_required')
    return {'ok':True,'target_ids':ids,'sent':0,'history_reset':False}
