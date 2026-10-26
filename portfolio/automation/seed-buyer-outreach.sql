-- Bootstrap-only buyer outreach queue seed.
-- Safe launch staging should use stage-outreach-wave.sh so a named wave can be previewed first.
-- This seed never sends; it only queues unsuppressed new/prospect records with public business email.
insert into outreach(entity_type,entity_id,campaign,wave,channel,sequence_step,status,next_followup_at,opt_out)
select 'buyer',b.buyer_id,coalesce(nullif(b.campaign,''),'buyer_general'),'backlog','email',0,'queued',now(),false
from buyers b
where b.status in ('new','prospect')
  and b.public_email is not null and b.public_email<>''
  and not exists(select 1 from outreach_suppressions s where lower(s.email)=lower(b.public_email))
  and not exists (
    select 1 from outreach o
    where o.entity_type='buyer' and o.entity_id=b.buyer_id
  );
