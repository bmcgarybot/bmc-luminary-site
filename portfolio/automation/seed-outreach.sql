-- Bootstrap-only vendor outreach queue seed.
-- Safe launch staging should use stage-outreach-wave.sh so a named wave can be previewed first.
-- This seed never sends; it only queues unsuppressed prospect records with public business email.
insert into outreach(entity_type,entity_id,campaign,wave,channel,sequence_step,status,next_followup_at,opt_out)
select 'vendor',v.vendor_id,'vendor_recruitment','backlog','email',0,'queued',now(),false
from vendors v
where v.status='prospect'
  and v.public_email is not null and v.public_email<>''
  and not exists(select 1 from outreach_suppressions s where lower(s.email)=lower(v.public_email))
  and not exists (
    select 1 from outreach o
    where o.entity_type='vendor' and o.entity_id=v.vendor_id and o.campaign='vendor_recruitment'
  );
