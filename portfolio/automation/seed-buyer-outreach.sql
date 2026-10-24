-- Queue public-email buyer prospects. Sending is disabled by default.
insert into outreach(entity_type,entity_id,campaign,channel,sequence_step,status,next_followup_at,opt_out)
select 'buyer',b.buyer_id,coalesce(nullif(b.campaign,''),'buyer_general'),'email',0,'queued',now(),false
from buyers b
where b.public_email is not null and b.public_email<>''
  and not exists (
    select 1 from outreach o
    where o.entity_type='buyer' and o.entity_id=b.buyer_id
  );
