"""Private, evidence-labelled aggregate business readings. No customer actions."""
from datetime import datetime, timezone


async def business_metrics(conn):
    queries = {
        "mail": """select count(*) filter(where direction='outbound') as attempts,
          count(*) filter(where direction='outbound' and status='smtp_accepted') as smtp_accepted,
          count(*) filter(where direction='outbound' and (status='uncertain' or (status='attempting' and created_at<now()-interval '5 minutes'))) as unresolved,
          count(*) filter(where direction='inbound') as received,
          count(*) filter(where classification='positive') as positive_replies,
          count(*) filter(where classification='opt_out') as opt_outs,
          count(*) filter(where classification='delivery_failure') as delivery_failures,
          min(created_at)::text as recording_started_at
          from mail_observations""",
        "outreach": """select count(*) as total_records,
          count(*) filter(where sent_at is not null) as historic_smtp_submissions,
          count(*) filter(where replied_at is not null) as replies,
          count(*) filter(where opt_out=true) as suppressed,
          count(*) filter(where owner_review_required=true) as awaiting_owner_review
          from outreach""",
        "growth": """select count(*) as samples_requested,
          count(*) filter(where status in ('delivered','converted','fulfilled')) as samples_recorded_delivered,
          count(*) filter(where converted_at is not null) as samples_converted,
          count(*) filter(where status='inventory_exception') as inventory_exceptions
          from growth_sample_requests""",
        "orders": """select count(*) as total_orders,
          count(*) filter(where payment_status in ('paid','complete')) as paid_orders,
          count(*) filter(where status='fulfilled') as fulfilled_orders,
          count(*) filter(where payment_status in ('paid','complete') and status<>'fulfilled'
            and product_key like 'growth_%' and updated_at<now()-interval '30 minutes') as growth_paid_unfulfilled_over_30m,
          count(*) filter(where payment_status in ('refunded','partially_refunded','refund_review')) as refund_related_orders
          from orders""",
        "exceptions": """select count(*) filter(where status='open') as open,
          count(*) filter(where status='open' and severity in ('critical','high')) as high_priority,
          count(*) filter(where status='open' and type like '%delivery%') as delivery,
          count(*) filter(where status='open' and created_at<now()-interval '24 hours') as older_than_24h
          from exceptions""",
        "requests": """select count(*) as total,
          count(*) filter(where submitted_at>now()-interval '24 hours') as last_24h
          from leads""",
        "providers": """select count(*) filter(where status='active') as active_records,
          count(*) filter(where status='prospect') as research_prospects from vendors""",
    }
    result={"observed_at":datetime.now(timezone.utc).isoformat(),"read_only":True}
    async with conn.transaction(isolation="repeatable_read",readonly=True):
        for key,sql in queries.items():
            result[key]=dict(await conn.fetchrow(sql))
        result["paid_amounts_by_currency"]=[dict(r) for r in await conn.fetch("""
          select currency,count(*) as orders,coalesce(sum(amount_cents),0)::bigint as amount_cents
          from orders where payment_status in ('paid','complete') group by currency order by currency""")]
        result["open_exception_types"]=[dict(r) for r in await conn.fetch("""
          select type,severity,count(*) as count from exceptions where status='open'
          group by type,severity order by count(*) desc limit 25""")]
        result["durable_delivery_claims"]=[dict(r) for r in await conn.fetch("""
          select status,count(*) as count from mail_delivery_attempts group by status""")]
        result["mailbox_polling"]=[dict(r) for r in await conn.fetch("""
          select created_at::text as baseline_at,updated_at::text as last_position_update from mailbox_poll_state""")]
        result["api_operations"]=[dict(r) for r in await conn.fetch("""
          select route,requests,failures,last_status,last_observed_at::text,last_success_at::text,
            total_duration_ms/NULLIF(requests,0) as mean_duration_ms
          from api_operation_metrics order by route""")]
    result["limits"]={
        "smtp_accepted":"Server acceptance only; not inbox delivery or a human read.",
        "inbox_delivery":None,"email_opens":None,"human_reads":None,
        "mail_history":"Central ledger starts at deployment. UID polling starts at the current mailbox position, regardless of read flags; historic mail is not replayed.",
        "paid_amounts":"Database paid/complete order amounts by currency; not independently reconciled bank settlement or profit.",
        "providers":"Active database records are not proof of current crew availability or complete market coverage.",
        "clicks":"Recorded sample requests are not unique humans; owner probes are excluded from customer sample counts.",
        "api_operations":"Counts include owner checks and scheduled/internal probes; route templates only, no raw queries or request bodies.",
    }
    return result
