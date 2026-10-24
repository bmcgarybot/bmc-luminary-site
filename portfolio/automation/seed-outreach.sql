-- Queue researched vendors that have a public business email.
-- Sending remains disabled unless OUTREACH_ENABLED=true and a real postal address is configured.
insert into outreach(entity_type,entity_id,campaign,channel,sequence_step,status,next_followup_at,opt_out)
select 'vendor',v.vendor_id,'vendor_recruitment','email',0,'queued',now(),false
from vendors v
where v.public_email is not null and v.public_email<>''
  and not exists (
    select 1 from outreach o
    where o.entity_type='vendor' and o.entity_id=v.vendor_id and o.campaign='vendor_recruitment'
  );
