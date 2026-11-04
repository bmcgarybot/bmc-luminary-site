"""Shared evidence predicate: an untouched queue is inventory, never a sent contact."""
import re,uuid


def inert_outreach_sql(alias='o',statuses=('queued',),*,authorized_historical_before=None):
    # SQL identifiers/statuses are server constants, never request input.
    if not re.fullmatch('[a-z][a-z0-9_]*',alias) or not statuses or any(value not in ('queued','superseded') for value in statuses):
        raise ValueError('invalid_history_sql_constant')
    historical=''
    if authorized_historical_before is not None:
        value=str(authorized_historical_before)
        if not re.fullmatch(r'\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}(?:Z|\+00:00)',value):raise ValueError('invalid_historical_cutoff')
        historical=f" and not (se.entity_type='growth_customer' and coalesce(se.payload->>'campaign','')='growth_sales' and se.occurred_at<'{value}'::timestamptz)"
    a=alias
    return f"""({a}.status in ({','.join(repr(value) for value in statuses)}) and {a}.sent_at is null
        and {a}.replied_at is null and coalesce({a}.reply_type,'')='' and {a}.opt_out is false
        and not exists(select 1 from mail_delivery_attempts ma
          where position(':'||{a}.outreach_id::text||':' in lower(ma.delivery_key))>0)
        and not exists(select 1 from events se where se.event_type='outreach_sent'
          and (se.payload->>'outreach_id'={a}.outreach_id::text
            or (coalesce(se.payload->>'outreach_id','')='' and se.entity_id={a}.entity_id and ({a}.created_at is null or se.occurred_at>={a}.created_at){historical}))))"""

async def inert_outreach(conn,row,statuses=('queued',),*,authorized_historical_before=None):
    try:oid=uuid.UUID(str(row['outreach_id']))
    except (ValueError,TypeError,KeyError):return False
    return await conn.fetchval('select '+inert_outreach_sql('o',statuses,authorized_historical_before=authorized_historical_before)+' from outreach o where o.outreach_id=$1',oid) is True


def protected_target_sql(alias='g'):
    if not re.fullmatch('[a-z][a-z0-9_]*',alias):raise ValueError('invalid_history_sql_constant')
    return f"""(coalesce({alias}.status,'') not in ('contactable','discovered','draft')
        or {alias}.source_data->'scoped_offer'->>'state'='approved')"""
