-- Public-business vendor seed generated from the BMC Master Operations sheet.
-- Safety: reruns refresh prospect research only; applicant/pending/pilot/active/paused/suppressed records preserve live provider-submitted state.
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_prescott_tree_morgan','Morgan Tree Service','info@morgantreeaz.com','928-232-0011','https://morgantreeaz.com/','https://morgantreeaz.com/contact','4.9 / 18','prospect',0,NULL,'Prescott + surrounding towns',NULL,NULL,'Veteran-owned; public site lists tree work',NULL,'Seed from public business/site data')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_prescott_tree_morgan','Prescott') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_tree_morgan','tree_service' where exists(select 1 from services where service_key='tree_service') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_prescott_landscape_aspen','Aspen Landscaping',NULL,'928-832-2590',NULL,NULL,'4.9 / 467','prospect',0,NULL,'Yavapai County',NULL,NULL,NULL,NULL,'Seed from local business result')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_prescott_landscape_aspen','Prescott') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_landscape_aspen','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_prescott_junk_chuckit','Chuck It! Junk Removal',NULL,'928-308-0414',NULL,NULL,'5.0 / 191','prospect',0,NULL,'Prescott / Prescott Valley / Chino Valley',NULL,NULL,NULL,NULL,'Seed from local business result')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_prescott_junk_chuckit','Prescott') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_junk_chuckit','junk_hauling' where exists(select 1 from services where service_key='junk_hauling') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_prescott_tow_tricity','Tri-City Towing and Off-Road Recovery',NULL,'928-636-8307',NULL,NULL,'4.6 / 423','prospect',0,NULL,'Prescott + Northern Arizona',NULL,NULL,NULL,NULL,'24/7; towing/recovery')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_prescott_tow_tricity','Prescott') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_tow_tricity','towing_roadside' where exists(select 1 from services where service_key='towing_roadside') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_pv_pet_scoop','Scoop & Skedaddle','scoopskedaddle@outlook.com','928-308-9621','https://scoopskedaddle.com/','https://scoopskedaddle.com/contact-us/','5.0 / 1','prospect',0,NULL,'Prescott / Prescott Valley / Chino Valley / Dewey / Mayer / Williamson Valley',NULL,NULL,NULL,NULL,'Residential + HOA/commercial pet-waste stations')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_pv_pet_scoop','Prescott Valley') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_pv_pet_scoop','pet_waste' where exists(select 1 from services where service_key='pet_waste') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_prescott_tree_jonny','Jonny''s Tree and Landscaping Co., LLC','jonny@jonnystreeandlandscaping.com','928-830-4977','https://www.jonnystreeandlandscaping.com/','https://www.jonnystreeandlandscaping.com/','3.6 / 29','prospect',0,NULL,'Yavapai County + Sedona/Camp Verde/Cottonwood/Chino Valley',NULL,NULL,'Certified arborist / Firewise positioning',NULL,'Tree + landscape + snow')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_prescott_tree_jonny','Prescott') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_tree_jonny','tree_service' where exists(select 1 from services where service_key='tree_service') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_tree_jonny','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_prescott_tree_ac','A and C Tree Services','aandcservicesaz@gmail.com','928-800-0452','https://aandctree.com/','https://aandctree.com/services/',NULL,'prospect',0,NULL,'Prescott Valley / surrounding',NULL,NULL,'Public page lists Lic # 2024BL1117',NULL,'24/7 availability stated')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_prescott_tree_ac','Prescott Valley') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_tree_ac','tree_service' where exists(select 1 from services where service_key='tree_service') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_tree_ac','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_tree_ac','junk_hauling' where exists(select 1 from services where service_key='junk_hauling') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_tree_ac','snow_service' where exists(select 1 from services where service_key='snow_service') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_prescott_landscape_mountain','Mountain Country Landscaping LLC','mountaincountry.az@gmail.com','509-834-0718','https://www.mountaincountrylandscaping.com/','https://www.mountaincountrylandscaping.com/',NULL,'prospect',0,NULL,'Prescott area',NULL,NULL,NULL,NULL,'Lists tree removal, Fire Wise, snow removal')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_prescott_landscape_mountain','Prescott') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_landscape_mountain','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_landscape_mountain','tree_service' where exists(select 1 from services where service_key='tree_service') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_landscape_mountain','snow_service' where exists(select 1 from services where service_key='snow_service') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_prescott_junk_donny','Donny''s Services','donaldmata@icloud.com','928-356-2672',NULL,'https://nextdoor.com/pages/donnys-services-ni31ax/',NULL,'prospect',0,NULL,'Prescott / Prescott Valley / surrounding',NULL,NULL,NULL,NULL,'Junk, moving, yard cleanup, handyman')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_prescott_junk_donny','Prescott') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_junk_donny','junk_hauling' where exists(select 1 from services where service_key='junk_hauling') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_junk_donny','property_services' where exists(select 1 from services where service_key='property_services') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_prescott_landscape_prescottscapes','Prescottscapes','kyle.prescottscapes@gmail.com','928-848-8146',NULL,'https://nextdoor.com/pages/prescottscapes/',NULL,'prospect',0,NULL,'Prescott',NULL,NULL,NULL,NULL,'Landscape + junk/hauling')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_prescott_landscape_prescottscapes','Prescott') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_landscape_prescottscapes','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_landscape_prescottscapes','junk_hauling' where exists(select 1 from services where service_key='junk_hauling') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_yavapai_tree_bobs','Bob''s Tree & Landscape',NULL,'928-778-7100',NULL,'https://extension.arizona.edu/sites/default/files/2024-10/Yavapai2024-2025DefensibleSpaceContractorsList.pdf',NULL,'prospect',0,'Yavapai defensible-space / Firewise listing','Prescott / Sedona',NULL,NULL,'Defensible-space contractor list',NULL,'Hazard tree, Firewise, hauling/chipping')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_yavapai_tree_bobs','Prescott') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_yavapai_tree_bobs','tree_service' where exists(select 1 from services where service_key='tree_service') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_yavapai_tree_bobs','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_yavapai_firewise_bradshaw','Bradshaw Fuel Mitigation LLC','bradshawfuelmitigation@gmail.com','928-499-7129',NULL,'https://extension.arizona.edu/sites/default/files/2024-10/Yavapai2024-2025DefensibleSpaceContractorsList.pdf',NULL,'prospect',0,'Yavapai defensible-space / Firewise listing','Yavapai area',NULL,NULL,'Firewise specialist / sawyer/feller credentials listed',NULL,'Fuel mitigation')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_yavapai_firewise_bradshaw','Prescott') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_yavapai_firewise_bradshaw','tree_service' where exists(select 1 from services where service_key='tree_service') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_prescott_zebrascapes','ZebraScapes Landscaping & Services','info@zebrascapes.com','928-830-4061','https://zebrascapes.com/','https://zebrascapes.com/','Large regional operator; high visibility','prospect',0,'Yavapai defensible-space / Firewise listing','Prescott + surrounding Yavapai County',NULL,NULL,'Yavapai Firewise-listed for defensible space',NULL,'High-value territory prospect; larger operator')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_prescott_zebrascapes','Prescott') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_zebrascapes','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_zebrascapes','tree_service' where exists(select 1 from services where service_key='tree_service') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_zebrascapes','snow_service' where exists(select 1 from services where service_key='snow_service') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_prescott_thumbbutte','Thumb Butte Tree Service',NULL,'928-642-8659','https://thumbbuttetreeservice.com/firewise-services/','https://extension.arizona.edu/sites/default/files/2024-10/Yavapai2024-2025DefensibleSpaceContractorsList.pdf',NULL,'prospect',0,'Yavapai defensible-space / Firewise listing','Prescott area',NULL,NULL,'Yavapai Firewise-listed',NULL,'Defensible space / tree service')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_prescott_thumbbutte','Prescott') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_thumbbutte','tree_service' where exists(select 1 from services where service_key='tree_service') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_prescott_yavapai_land','Yavapai Landscaping','office@yavapailandscaping.com','928-910-4147','https://yavapailandscaping.com/','https://yavapailandscaping.com/contact-us/',NULL,'prospect',0,'Yavapai defensible-space / Firewise listing','Prescott / Prescott Valley',NULL,NULL,'Yavapai Firewise-listed',NULL,'Brush clearing, stump grinding, defensible space')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_prescott_yavapai_land','Prescott') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_yavapai_land','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_yavapai_land','tree_service' where exists(select 1 from services where service_key='tree_service') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_chino_vicente','Vicente Landscaping','service@vicentelandscaping.com','928-636-1601','https://vicentelandscaping.com/','https://vicentelandscaping.com/contact/',NULL,'prospect',0,'Yavapai defensible-space / Firewise listing','Chino Valley / Quad Cities',NULL,NULL,'Yavapai Firewise-listed',NULL,'Landscape + defensible space')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_chino_vicente','Chino Valley') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_chino_vicente','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_chino_vicente','tree_service' where exists(select 1 from services where service_key='tree_service') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_prescott_justintime','Just-In-Time Landscaping',NULL,'928-899-7725',NULL,NULL,'4.8 / 105','prospect',0,NULL,'Prescott Valley / Prescott / Dewey / Williamson Valley',NULL,NULL,NULL,NULL,'24/7 listing; strong review signal')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_prescott_justintime','Prescott Valley') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_justintime','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_pv_kings_tree','The Kings'' Tree Care, LLC',NULL,'928-499-7111',NULL,NULL,'5.0 / 96','prospect',0,NULL,'Prescott Valley / Dewey region',NULL,NULL,NULL,NULL,'Arborist-focused')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_pv_kings_tree','Prescott Valley') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_pv_kings_tree','tree_service' where exists(select 1 from services where service_key='tree_service') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_pv_89a','89A Haul Away',NULL,'928-925-0893',NULL,NULL,'4.9 / 46','prospect',0,NULL,'Prescott / Prescott Valley / Chino Valley / Dewey',NULL,NULL,NULL,NULL,'Family-owned hauling')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_pv_89a','Prescott Valley') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_pv_89a','junk_hauling' where exists(select 1 from services where service_key='junk_hauling') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_pv_dustdevil','Dust Devil Towing',NULL,'928-277-3048',NULL,NULL,'5.0 / 11','prospect',0,NULL,'Prescott Valley / rural surrounding area',NULL,NULL,NULL,NULL,'24/7 towing prospect')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_pv_dustdevil','Prescott Valley') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_pv_dustdevil','towing_roadside' where exists(select 1 from services where service_key='towing_roadside') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_prescott_septic','Prescott Septic Services',NULL,'928-320-3700',NULL,NULL,'4.9 / 37','prospect',0,NULL,'Greater Quad Cities / Yavapai County',NULL,NULL,NULL,NULL,'Septic pumping/service')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_prescott_septic','Prescott') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_septic','rural_property' where exists(select 1 from services where service_key='rural_property') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_septic','grease_drain' where exists(select 1 from services where service_key='grease_drain') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_pv_lassila','Lassila Liquid Waste Disposal',NULL,'928-772-8015',NULL,NULL,'4.3 / 6','prospect',0,NULL,'Yavapai County',NULL,NULL,NULL,NULL,'Long-running septic/liquid waste')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_pv_lassila','Prescott Valley') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_pv_lassila','rural_property' where exists(select 1 from services where service_key='rural_property') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_pv_affordable_exc','Affordable Excavation LLC',NULL,'928-224-8060',NULL,'https://www.yellowpages.com/prescott-valley-az/excavation-contractors',NULL,'prospect',0,NULL,'Prescott Valley',NULL,NULL,NULL,NULL,'Excavation')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_pv_affordable_exc','Prescott Valley') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_pv_affordable_exc','rural_property' where exists(select 1 from services where service_key='rural_property') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_pv_millers_dirt','Miller''s Dirt Works',NULL,'928-300-0812',NULL,'https://www.yellowpages.com/prescott-valley-az/excavation-contractors',NULL,'prospect',0,NULL,'Prescott Valley',NULL,NULL,NULL,NULL,'Road building, grading, trenching')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_pv_millers_dirt','Prescott Valley') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_pv_millers_dirt','rural_property' where exists(select 1 from services where service_key='rural_property') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_pv_highland','Highland Grading & Excavating',NULL,'928-533-7031',NULL,'https://www.yellowpages.com/prescott-valley-az/excavation-contractors',NULL,'prospect',0,NULL,'Prescott Valley',NULL,NULL,NULL,NULL,'Grading/excavation')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_pv_highland','Prescott Valley') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_pv_highland','rural_property' where exists(select 1 from services where service_key='rural_property') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_chino_cm_land','C&M''s Landscaping',NULL,'928-963-4705',NULL,'https://arizonalandscapecompanies.com/directory/arizona/chino-valley/','4.9 / 123','prospect',0,'Arizona landscaping contractor directory','Chino Valley',NULL,NULL,'CR-21 listed by directory',NULL,'Large review signal')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_chino_cm_land','Chino Valley') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_chino_cm_land','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_chino_manzanita','Manzanita Landscaping',NULL,'928-848-8025',NULL,'https://arizonalandscapecompanies.com/directory/arizona/chino-valley/',NULL,'prospect',0,'Arizona landscaping contractor directory','Prescott / Prescott Valley / Chino Valley',NULL,NULL,'CR-21 listed by directory',NULL,'Design/install/maintenance')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_chino_manzanita','Chino Valley') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_chino_manzanita','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_chino_kbd','KBD Contracting LLC','KBDContracting1@gmail.com','928-458-3475','https://www.kbdcontracting.com/','https://www.kbdcontracting.com/',NULL,'prospect',0,NULL,'Tri-City / Verde Valley / North Valley',NULL,NULL,'ROC 350053 / 366633 listed on public site','Licensed/bonded/insured stated','Excavation, grading, hauling, land clearing')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_chino_kbd','Chino Valley') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_chino_kbd','rural_property' where exists(select 1 from services where service_key='rural_property') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_chino_kbd','junk_hauling' where exists(select 1 from services where service_key='junk_hauling') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_chino_milehi','Mile Hi Excavation',NULL,'928-777-8070',NULL,'https://www.yellowpages.com/chino-valley-az/excavation-contractors',NULL,'prospect',0,NULL,'Chino Valley',NULL,NULL,NULL,NULL,'Excavation + septic')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_chino_milehi','Chino Valley') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_chino_milehi','rural_property' where exists(select 1 from services where service_key='rural_property') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_chino_creativeyard','Creative Yard Works',NULL,'928-420-0240',NULL,'https://www.yellowpages.com/chino-valley-az/tree-service',NULL,'prospect',0,NULL,'Chino Valley',NULL,NULL,NULL,NULL,'Landscape/tree/snow')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_chino_creativeyard','Chino Valley') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_chino_creativeyard','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_chino_creativeyard','tree_service' where exists(select 1 from services where service_key='tree_service') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_chino_creativeyard','snow_service' where exists(select 1 from services where service_key='snow_service') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_chino_eagleseye','Eagle''s Eye Landscaping',NULL,'928-642-0196',NULL,'https://arizonalandscapecompanies.com/directory/arizona/chino-valley/',NULL,'prospect',0,'Arizona landscaping contractor directory','Chino Valley',NULL,NULL,'CR-21 listed by directory',NULL,'Design/maintenance/hardscape')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_chino_eagleseye','Chino Valley') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_chino_eagleseye','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_cottonwood_arborist','Arborist Standards Tree Care',NULL,'928-592-3477',NULL,NULL,'4.9 / 61','prospect',0,NULL,'Sedona / Cottonwood / Verde Valley',NULL,NULL,NULL,NULL,'Technical removals + fire-safety thinning')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_cottonwood_arborist','Cottonwood') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_cottonwood_arborist','tree_service' where exists(select 1 from services where service_key='tree_service') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_cottonwood_lukas','Lukas Scape LLC',NULL,'928-284-8866',NULL,NULL,'5.0 / 32','prospect',0,NULL,'Cottonwood / Northern Arizona',NULL,NULL,NULL,NULL,'Design/build landscape')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_cottonwood_lukas','Cottonwood') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_cottonwood_lukas','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_cottonwood_gotjunk','Got Junk LLC-Cottonwood/Prescott Valley AZ',NULL,'928-499-9210',NULL,NULL,'5.0 / 137','prospect',0,NULL,'Cottonwood / Verde Valley / Prescott Valley',NULL,NULL,NULL,NULL,'Junk removal + dumpsters')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_cottonwood_gotjunk','Cottonwood') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_cottonwood_gotjunk','junk_hauling' where exists(select 1 from services where service_key='junk_hauling') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_cottonwood_blackhills','Blackhills Towing',NULL,'928-649-5799',NULL,NULL,'4.5 / 69','prospect',0,NULL,'Cottonwood / Sedona / Verde Valley',NULL,NULL,NULL,NULL,'24/7 towing')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_cottonwood_blackhills','Cottonwood') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_cottonwood_blackhills','towing_roadside' where exists(select 1 from services where service_key='towing_roadside') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_cottonwood_advseptic','Advanced Septic Service',NULL,'928-821-5114',NULL,NULL,'4.9 / 63','prospect',0,NULL,'Verde Valley + Prescott side of Mingus',NULL,NULL,NULL,NULL,'Full-service septic')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_cottonwood_advseptic','Cottonwood') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_cottonwood_advseptic','rural_property' where exists(select 1 from services where service_key='rural_property') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_cottonwood_merrell','Merrell Excavating',NULL,'928-899-3807',NULL,NULL,'5.0 / 17','prospect',0,NULL,'Cottonwood / Verde Valley',NULL,NULL,NULL,NULL,'Excavation/grading')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_cottonwood_merrell','Cottonwood') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_cottonwood_merrell','rural_property' where exists(select 1 from services where service_key='rural_property') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_cottonwood_star','Star Maintenance',NULL,'928-451-6839',NULL,NULL,'No/limited review signal','prospect',0,NULL,'Cottonwood / Camp Verde / Sedona / Verde Valley',NULL,NULL,'Bonded and insured stated',NULL,'Commercial cleaning, carpet, windows')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_cottonwood_star','Cottonwood') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_cottonwood_star','commercial_cleaning' where exists(select 1 from services where service_key='commercial_cleaning') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_campverde_bluz','Bluz affordable tree service',NULL,'928-301-7003',NULL,NULL,'5.0 / 16','prospect',0,NULL,'Camp Verde / Verde Valley',NULL,NULL,NULL,NULL,'Small/local tree prospect')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_campverde_bluz','Camp Verde') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_campverde_bluz','tree_service' where exists(select 1 from services where service_key='tree_service') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_campverde_mario','Mario and Mario Landscaping',NULL,'928-282-3118',NULL,'https://verdevalleydirectory.com/camp-verde/landscaping/','4.0 / 25','prospect',0,'Verde Valley business directory','Verde Valley',NULL,NULL,'ROC 165704 listed by directory',NULL,'Landscape/masonry/tree')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_campverde_mario','Camp Verde') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_campverde_mario','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_campverde_mario','tree_service' where exists(select 1 from services where service_key='tree_service') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_campverde_notrace','No Trace Hauling',NULL,'602-859-0842',NULL,NULL,'5.0 / 15','prospect',0,NULL,'Camp Verde / Verde Valley',NULL,NULL,NULL,NULL,'Small/local hauling')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_campverde_notrace','Camp Verde') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_campverde_notrace','junk_hauling' where exists(select 1 from services where service_key='junk_hauling') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_campverde_atow','A Tow Truck',NULL,'928-254-8145',NULL,NULL,'4.7 / 26','prospect',0,NULL,'Camp Verde / Cottonwood / Sedona / Rimrock / Flagstaff corridor',NULL,NULL,NULL,NULL,'24/7 local tow')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_campverde_atow','Camp Verde') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_campverde_atow','towing_roadside' where exists(select 1 from services where service_key='towing_roadside') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_campverde_joshua','The Joshua Tree & Landscape Company','joshuatreescape@gmail.com','928-567-4064','https://joshuatreescape.com/','https://verdevalleydirectory.com/listing/the-joshua-tree-and-landscape-company-camp-verde/','4.7 / 53','prospect',0,'Verde Valley business directory','Cottonwood / Camp Verde / Sedona / Clarkdale / Cornville / Rimrock / VOC',NULL,NULL,'ROC 173539 verified by directory','Licensed/insured stated','Strong regional landscape/tree prospect')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_campverde_joshua','Camp Verde') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_campverde_joshua','tree_service' where exists(select 1 from services where service_key='tree_service') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_campverde_joshua','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_campverde_kpventures','KP Ventures Well Drilling & Pump Co',NULL,'928-639-1709',NULL,'https://campverdebiz.com/hwy-260-west',NULL,'prospect',0,'Camp Verde local business directory','Camp Verde / Verde Valley',NULL,NULL,NULL,NULL,'Facebook-first; wells/pumps')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_campverde_kpventures','Camp Verde') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_campverde_kpventures','rural_property' where exists(select 1 from services where service_key='rural_property') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_campverde_ligon','Ligon Excavation Inc',NULL,NULL,NULL,'https://campverdebiz.com/hwy-260-west',NULL,'prospect',0,'Camp Verde local business directory','Camp Verde',NULL,NULL,NULL,NULL,'Facebook-first; excavation/septic/hauling')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_campverde_ligon','Camp Verde') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_campverde_ligon','rural_property' where exists(select 1 from services where service_key='rural_property') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_campverde_ligon','junk_hauling' where exists(select 1 from services where service_key='junk_hauling') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_campverde_aid','A.I.D. Development Inc',NULL,'928-300-4578',NULL,'https://campverdebiz.com/downtown',NULL,'prospect',0,'Camp Verde local business directory','Camp Verde',NULL,NULL,NULL,NULL,'Facebook/local-directory; excavation/grading/hauling')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_campverde_aid','Camp Verde') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_campverde_aid','rural_property' where exists(select 1 from services where service_key='rural_property') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_campverde_aid','junk_hauling' where exists(select 1 from services where service_key='junk_hauling') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_campverde_greenriver','Green River Hauling LLC',NULL,'928-300-0991',NULL,'https://campverdebiz.com/rimrock-1',NULL,'prospect',0,'Camp Verde local business directory','Camp Verde / Verde Valley',NULL,NULL,NULL,NULL,'Local-directory hauling')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_campverde_greenriver','Camp Verde') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_campverde_greenriver','junk_hauling' where exists(select 1 from services where service_key='junk_hauling') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_campverde_kmdrilling','Km Drilling Inc',NULL,'928-567-3633',NULL,'https://campverdebiz.com/rimrock-1',NULL,'prospect',0,'Camp Verde local business directory','Camp Verde / Arizona',NULL,NULL,NULL,NULL,'Water wells/pump service; 24/7 emergency listed')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_campverde_kmdrilling','Camp Verde') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_campverde_kmdrilling','rural_property' where exists(select 1 from services where service_key='rural_property') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_sedona_squeaky','Squeaky Clean Services',NULL,'928-325-5865','https://squeakycleanjunkremoval.com/','https://squeakycleanjunkremoval.com/',NULL,'prospect',0,NULL,'Sedona / VOC / Verde Valley',NULL,NULL,NULL,NULL,'Junk removal + light demolition')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_sedona_squeaky','Sedona') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_sedona_squeaky','junk_hauling' where exists(select 1 from services where service_key='junk_hauling') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_flagstaff_apex','Apex Arbor Services','apexarborservices@gmail.com','928-814-2304','https://apexarborservices.com/','https://apexarborservices.com/','5.0 / 5','prospect',0,NULL,'Flagstaff / Kachina / Williams',NULL,NULL,NULL,NULL,'Tree removal/trimming/arborist')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_flagstaff_apex','Flagstaff') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flagstaff_apex','tree_service' where exists(select 1 from services where service_key='tree_service') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_flagstaff_kaibab','Kaibab Landscaping','c@kaibablandscaping.com','928-214-4397','https://www.landscapingflagstaff.com/','https://www.landscapingflagstaff.com/contact-us/','5.0 / 118','prospect',0,NULL,'Flagstaff / Northern Arizona',NULL,NULL,NULL,NULL,'Strong design/build prospect')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_flagstaff_kaibab','Flagstaff') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flagstaff_kaibab','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_flagstaff_pinecountry','Pine Country Window Cleaning Flagstaff',NULL,'928-527-0671',NULL,NULL,'4.4 / 34','prospect',0,NULL,'Flagstaff / Sedona / Williams / Munds Park',NULL,NULL,NULL,NULL,'Windows/pressure/gutters/snow')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_flagstaff_pinecountry','Flagstaff') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flagstaff_pinecountry','commercial_cleaning' where exists(select 1 from services where service_key='commercial_cleaning') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flagstaff_pinecountry','snow_service' where exists(select 1 from services where service_key='snow_service') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_flagstaff_johnson','Johnson''s Heavy Towing Inc',NULL,'928-526-9393',NULL,NULL,'4.8 / 17','prospect',0,NULL,'Flagstaff / Williams / Camp Verde / Cottonwood',NULL,NULL,NULL,NULL,'Heavy/light towing and recovery')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_flagstaff_johnson','Flagstaff') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flagstaff_johnson','towing_roadside' where exists(select 1 from services where service_key='towing_roadside') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_flagstaff_junk','Flagstaff Junk Removal',NULL,'928-310-0789',NULL,NULL,'5.0 / 196','prospect',0,NULL,'Flagstaff / Northern Arizona',NULL,NULL,NULL,NULL,'Large local review signal')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_flagstaff_junk','Flagstaff') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flagstaff_junk','junk_hauling' where exists(select 1 from services where service_key='junk_hauling') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_flagstaff_clean','Flagstaff Cleaning Company LLC','support@flagstaffcleaning.com','928-275-3907','https://www.flagstaffcleaning.com/','https://www.flagstaffcleaning.com/','4.9 / 28','prospect',0,NULL,'Flagstaff',NULL,NULL,NULL,NULL,'STR + recurring/commercial cleaning')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_flagstaff_clean','Flagstaff') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flagstaff_clean','commercial_cleaning' where exists(select 1 from services where service_key='commercial_cleaning') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flagstaff_clean','str_property_care' where exists(select 1 from services where service_key='str_property_care') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_flagstaff_pinnacle','Pinnacle Building Services','sales@pinnacleflag.com','928-395-9852','https://pinnaclecleaningaz.com/','https://pinnaclecleaningaz.com/contact-us/','5.0 / 1','prospect',0,NULL,'Northern Arizona',NULL,NULL,NULL,NULL,'Large commercial cleaning/maintenance provider')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_flagstaff_pinnacle','Flagstaff') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flagstaff_pinnacle','commercial_cleaning' where exists(select 1 from services where service_key='commercial_cleaning') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_flagstaff_supertree','Supertree Services LLC',NULL,'928-526-2287',NULL,'https://www.bbb.org/us/az/flagstaff/category/tree-service',NULL,'prospect',0,'BBB directory / rating signal','Coconino/Mohave/Navajo/Yavapai Counties',NULL,NULL,'BBB A+ shown on directory',NULL,'Regional tree provider')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_flagstaff_supertree','Flagstaff') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flagstaff_supertree','tree_service' where exists(select 1 from services where service_key='tree_service') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_flagstaff_aztree','Arizona Tree Service',NULL,'928-606-8125',NULL,'https://clearmylanddirectory.com/arizona/flagstaff','4.9 / 22','prospect',0,NULL,'Flagstaff',NULL,NULL,NULL,NULL,'Directory-listed tree provider')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_flagstaff_aztree','Flagstaff') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flagstaff_aztree','tree_service' where exists(select 1 from services where service_key='tree_service') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_flagstaff_gts','GTS Gaun''s Tree Service LLC',NULL,'928-606-4371',NULL,'https://clearmylanddirectory.com/arizona/flagstaff','4.9','prospect',0,NULL,'Flagstaff',NULL,NULL,NULL,NULL,'Tree provider')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_flagstaff_gts','Flagstaff') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flagstaff_gts','tree_service' where exists(select 1 from services where service_key='tree_service') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_flagstaff_revolver','Revolver Hauling & Sitework',NULL,'928-814-9363',NULL,'https://clearmylanddirectory.com/arizona/flagstaff','5.0','prospect',0,NULL,'Flagstaff',NULL,NULL,NULL,NULL,'Hauling/sitework')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_flagstaff_revolver','Flagstaff') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flagstaff_revolver','junk_hauling' where exists(select 1 from services where service_key='junk_hauling') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flagstaff_revolver','rural_property' where exists(select 1 from services where service_key='rural_property') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_flagstaff_ponderosa','Ponderosa Pathways',NULL,'928-202-0713',NULL,'https://clearmylanddirectory.com/arizona/flagstaff','4.8','prospect',0,NULL,'Flagstaff',NULL,NULL,NULL,NULL,'Landscape + snow')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_flagstaff_ponderosa','Flagstaff') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flagstaff_ponderosa','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flagstaff_ponderosa','snow_service' where exists(select 1 from services where service_key='snow_service') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_flagstaff_morningdew','Morning Dew Landscaping','info@morningdewlandscaping.com','928-779-3125','https://www.morningdewlandscaping.com/','https://www.morningdewlandscaping.com/startproject',NULL,'prospect',0,NULL,'Flagstaff',NULL,NULL,'ROC 276527 / 153463 listed on site',NULL,'Large licensed team; commercial snow')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_flagstaff_morningdew','Flagstaff') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flagstaff_morningdew','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flagstaff_morningdew','snow_service' where exists(select 1 from services where service_key='snow_service') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_flagstaff_grandslam','Grand Slam Janitorial','info@grandslamjanitorial.com','928-588-3828','https://www.grandslamjanitorial.com/','https://www.grandslamjanitorial.com/contact',NULL,'prospect',0,'Greater Flagstaff Chamber directory','Flagstaff',NULL,NULL,NULL,NULL,'Chamber-listed commercial cleaner')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_flagstaff_grandslam','Flagstaff') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flagstaff_grandslam','commercial_cleaning' where exists(select 1 from services where service_key='commercial_cleaning') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_flagstaff_twilight','Twilight Janitorial Service, Inc.',NULL,'928-853-8064',NULL,'https://business.flagstaffchamber.com/list/category/janitorial-cleaning-janitorial-services-1142',NULL,'prospect',0,'Greater Flagstaff Chamber directory','Flagstaff',NULL,NULL,NULL,NULL,'Chamber-listed commercial cleaner')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_flagstaff_twilight','Flagstaff') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flagstaff_twilight','commercial_cleaning' where exists(select 1 from services where service_key='commercial_cleaning') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_winslow_trir','Tri-R Towing - Winslow',NULL,'928-289-4239',NULL,NULL,'4.0 / 8','prospect',0,NULL,'Winslow / Navajo County',NULL,NULL,NULL,NULL,'Light/medium/heavy towing')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_winslow_trir','Winslow') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_winslow_trir','towing_roadside' where exists(select 1 from services where service_key='towing_roadside') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_winslow_dalton','Dalton Motors',NULL,'928-289-2241',NULL,'https://npc.libguides.com/newbies/lcc',NULL,'prospect',0,NULL,'Winslow',NULL,NULL,NULL,NULL,'Local towing/auto source')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_winslow_dalton','Winslow') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_winslow_dalton','towing_roadside' where exists(select 1 from services where service_key='towing_roadside') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_winslow_dalton','vehicle_services' where exists(select 1 from services where service_key='vehicle_services') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_winslow_ohaco','O''Haco Tire & Auto',NULL,'928-289-3611',NULL,NULL,'3.9 / 297','prospect',0,NULL,'Winslow / I-40',NULL,NULL,NULL,NULL,'Tires + auto repair')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_winslow_ohaco','Winslow') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_winslow_ohaco','vehicle_services' where exists(select 1 from services where service_key='vehicle_services') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_winslow_akal','Akal truck trailer repair',NULL,'928-951-5130',NULL,NULL,'4.3 / 21','prospect',0,NULL,'Winslow / I-40',NULL,NULL,NULL,NULL,'Truck/trailer repair')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_winslow_akal','Winslow') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_winslow_akal','vehicle_services' where exists(select 1 from services where service_key='vehicle_services') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_winslow_goodyear','Goodyear Commercial Tire & Service Center',NULL,'928-289-1112',NULL,'https://npc.libguides.com/newbies/lcc',NULL,'prospect',0,NULL,'Winslow / I-40',NULL,NULL,NULL,NULL,'Commercial tire at Flying J')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_winslow_goodyear','Winslow') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_winslow_goodyear','vehicle_services' where exists(select 1 from services where service_key='vehicle_services') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_kingman_a1septic','A1 Septic Tanks and Systems','kh364536@gmail.com','928-377-3173',NULL,'https://www.mohave.gov/departments/development-services/environmental-qualitywaste-disposal/documents/contractor-list-for-installations/',NULL,'prospect',0,'Mohave County contractor / onsite-wastewater list','Kingman / Mohave County',NULL,NULL,'Mohave County onsite-wastewater contractor list',NULL,'Official county list')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_kingman_a1septic','Kingman') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_kingman_a1septic','rural_property' where exists(select 1 from services where service_key='rural_property') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_kingman_mohaveground','Mohave Ground Work LLC','doug@mohavegroundwork.com','928-565-0987',NULL,'https://www.mohave.gov/departments/development-services/environmental-qualitywaste-disposal/documents/contractor-list-for-installations/',NULL,'prospect',0,'Mohave County contractor / onsite-wastewater list','Kingman / Mohave County',NULL,NULL,'Mohave County onsite-wastewater contractor list',NULL,'Official county list')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_kingman_mohaveground','Kingman') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_kingman_mohaveground','rural_property' where exists(select 1 from services where service_key='rural_property') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_kingman_mohaveseptic','Mohave Septic & Excavating',NULL,'928-716-0763',NULL,'https://www.mohave.gov/departments/development-services/environmental-qualitywaste-disposal/documents/contractor-list-for-installations/',NULL,'prospect',0,'Mohave County contractor / onsite-wastewater list','Kingman / Mohave County',NULL,NULL,'Mohave County onsite-wastewater contractor list',NULL,'Official county list')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_kingman_mohaveseptic','Kingman') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_kingman_mohaveseptic','rural_property' where exists(select 1 from services where service_key='rural_property') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_kingman_tlc','TLC Excavating Inc','tlcexcavating@gmail.com','928-692-6451',NULL,'https://www.mohave.gov/departments/development-services/environmental-qualitywaste-disposal/documents/contractor-list-for-installations/',NULL,'prospect',0,'Mohave County contractor / onsite-wastewater list','Kingman / Mohave County',NULL,NULL,'Mohave County onsite-wastewater contractor list',NULL,'Official county list')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_kingman_tlc','Kingman') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_kingman_tlc','rural_property' where exists(select 1 from services where service_key='rural_property') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_kingman_gleason','Gleason and Sons Excavating & Grading LLC','gleasonandsonsllc@gmail.com','928-279-1674',NULL,'https://www.mohave.gov/departments/development-services/environmental-qualitywaste-disposal/documents/contractor-list-for-installations/',NULL,'prospect',0,'Mohave County contractor / onsite-wastewater list','Kingman / Mohave County',NULL,NULL,'Mohave County onsite-wastewater contractor list',NULL,'Official county list')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_kingman_gleason','Kingman') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_kingman_gleason','rural_property' where exists(select 1 from services where service_key='rural_property') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_kingman_js','J & S Excavation LLC','joshmillergbrsla@gmail.com','928-499-7232',NULL,'https://www.mohave.gov/departments/development-services/environmental-qualitywaste-disposal/documents/contractor-list-for-installations/',NULL,'prospect',0,'Mohave County contractor / onsite-wastewater list','Kingman / Mohave County',NULL,NULL,'Mohave County onsite-wastewater contractor list',NULL,'Official county list')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_kingman_js','Kingman') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_kingman_js','rural_property' where exists(select 1 from services where service_key='rural_property') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_kingman_main','Main Construction & Landscape LLC','mainconstructionandlandscape@hotmail.com','928-757-7188',NULL,'https://www.mohave.gov/departments/development-services/environmental-qualitywaste-disposal/documents/contractor-list-for-installations/',NULL,'prospect',0,'Mohave County contractor / onsite-wastewater list','Kingman / Mohave County',NULL,NULL,'Mohave County contractor list',NULL,'Construction + landscape')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_kingman_main','Kingman') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_kingman_main','rural_property' where exists(select 1 from services where service_key='rural_property') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_kingman_main','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_kingman_lewis','Lewis Equipment Services LLC','dslewis@citlink.net','928-757-9200',NULL,'https://www.mohave.gov/departments/development-services/environmental-qualitywaste-disposal/documents/contractor-list-for-installations/',NULL,'prospect',0,'Mohave County contractor / onsite-wastewater list','Kingman / Mohave County',NULL,NULL,'Mohave County contractor list',NULL,'Grading, septic, utilities')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_kingman_lewis','Kingman') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_kingman_lewis','rural_property' where exists(select 1 from services where service_key='rural_property') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_kingman_mcfadyen','McFadyen Siteworx LLC','m.siteworx@gmail.com','928-715-9616',NULL,'https://extension.arizona.edu/sites/default/files/2024-10/Yavapai2024-2025DefensibleSpaceContractorsList.pdf',NULL,'prospect',0,'Yavapai defensible-space / Firewise listing','Kingman / Mohave County',NULL,NULL,'Official county contractor list source in separate Mohave PDF',NULL,'Sitework')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_kingman_mcfadyen','Kingman') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_kingman_mcfadyen','rural_property' where exists(select 1 from services where service_key='rural_property') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_kingman_signature','Signature Plumbing LLC','Joshbudka@live.com','928-716-3713',NULL,'https://www.mohave.gov/departments/development-services/environmental-qualitywaste-disposal/documents/contractor-list-for-installations/',NULL,'prospect',0,'Mohave County contractor / onsite-wastewater list','Kingman / Mohave County',NULL,NULL,'Mohave County onsite-wastewater contractor list',NULL,'Plumbing/septic-related')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_kingman_signature','Kingman') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_kingman_signature','rural_property' where exists(select 1 from services where service_key='rural_property') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_kingman_aes','Advanced Environmental Systems LLC','Louie@aes.earth','928-377-3173',NULL,'https://www.mohave.gov/departments/development-services/environmental-qualitywaste-disposal/documents/contractor-list-for-installations/',NULL,'prospect',0,'Mohave County contractor / onsite-wastewater list','Kingman / Mohave County',NULL,NULL,'Mohave County onsite-wastewater contractor list',NULL,'Onsite wastewater')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_kingman_aes','Kingman') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_kingman_aes','rural_property' where exists(select 1 from services where service_key='rural_property') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_kingman_mcintosh','McIntosh Potable Water LLC',NULL,'928-279-4136',NULL,NULL,'5.0 / 2','prospect',0,NULL,'Kingman region',NULL,NULL,NULL,NULL,'Potable bulk water delivery')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_kingman_mcintosh','Kingman') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_kingman_mcintosh','rural_property' where exists(select 1 from services where service_key='rural_property') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_kingman_oasis','Oasis Pump',NULL,'928-293-0186',NULL,NULL,'4.6 / 21','prospect',0,NULL,'Western Arizona',NULL,NULL,NULL,NULL,'Pump systems + bulk water hauling')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_kingman_oasis','Kingman') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_kingman_oasis','rural_property' where exists(select 1 from services where service_key='rural_property') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_kingman_thomaswater','Thomas Water Trucks LLC',NULL,'316-371-5441',NULL,'https://wheresmywater.org/',NULL,'prospect',0,NULL,'Kingman',NULL,NULL,NULL,NULL,'Water hauler directory')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_kingman_thomaswater','Kingman') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_kingman_thomaswater','rural_property' where exists(select 1 from services where service_key='rural_property') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_kingman_ranchwater','Ranch Water Service, Inc.',NULL,'928-757-9027',NULL,'https://www.bbb.org/us/az/kingman/category/water-hauling-truck',NULL,'prospect',0,'BBB directory / rating signal','Kingman',NULL,NULL,'BBB A+ listed',NULL,'Water hauling + wells')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_kingman_ranchwater','Kingman') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_kingman_ranchwater','rural_property' where exists(select 1 from services where service_key='rural_property') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_kingman_junkout','Junk Out Services','junkoutservices@yahoo.com','928-529-7512','https://junkoutserviceskingman.com/','https://junkoutserviceskingman.com/','5.0 / 206','prospect',0,NULL,'Kingman / Mohave County',NULL,NULL,'Local licenses stated on public profile',NULL,'Strong local junk operator')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_kingman_junkout','Kingman') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_kingman_junkout','junk_hauling' where exists(select 1 from services where service_key='junk_hauling') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_kingman_ontime','On Time & Ready Rubbish Cleanup',NULL,'928-681-7070',NULL,NULL,'4.7 / 23','prospect',0,NULL,'Kingman / Mohave County',NULL,NULL,'Kingman license stated on profile',NULL,'Real-estate/property cleanup angle')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_kingman_ontime','Kingman') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_kingman_ontime','junk_hauling' where exists(select 1 from services where service_key='junk_hauling') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_kingman_dumpsters','Kingman Dumpsters',NULL,'928-716-8895',NULL,NULL,'5.0 / 58','prospect',0,NULL,'Kingman area',NULL,NULL,NULL,NULL,'Dumpster + junk removal')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_kingman_dumpsters','Kingman') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_kingman_dumpsters','junk_hauling' where exists(select 1 from services where service_key='junk_hauling') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_kingman_patriot','Patriot Emergency Roadside','contact@patriotemergencyroadside.com','928-488-3029','https://patriotemergencyroadside.com/','https://patriotemergencyroadside.com/contact-us','4.9 / 290','prospect',0,NULL,'Kingman / Mohave County / travel corridors',NULL,NULL,NULL,NULL,'Large review signal')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_kingman_patriot','Kingman') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_kingman_patriot','towing_roadside' where exists(select 1 from services where service_key='towing_roadside') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_kingman_citytow','City Towing LLC','citytowingllc@outlook.com','928-692-2489','https://citytowingllc247.com/','https://citytowingllc247.com/','4.6 / 50','prospect',0,NULL,'Kingman / Mohave County',NULL,NULL,NULL,NULL,'24/7 light/medium/heavy towing')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_kingman_citytow','Kingman') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_kingman_citytow','towing_roadside' where exists(select 1 from services where service_key='towing_roadside') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_kingman_allamericanland','All American Landscape',NULL,'928-715-3065',NULL,NULL,'4.9 / 134','prospect',0,NULL,'Kingman',NULL,NULL,NULL,NULL,'Desert landscape/hardscape')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_kingman_allamericanland','Kingman') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_kingman_allamericanland','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_kingman_lightning','Lightning Enterprises Landscape',NULL,'928-715-4610',NULL,NULL,'4.9 / 127','prospect',0,NULL,'Kingman',NULL,NULL,NULL,NULL,'Desert landscape/design-build')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_kingman_lightning','Kingman') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_kingman_lightning','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_sedona_ontime','On Time Landscape & Masonry, LLC',NULL,'928-202-8492',NULL,'business:turn707243business1','5.0 / 40','prospect',0,'Greater Sedona market presence','Sedona / nearby',NULL,NULL,NULL,NULL,'Sedona landscaping/hardscape')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_sedona_ontime','Sedona') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_sedona_ontime','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_sedona_crystal','Sedona Crystal Clean',NULL,'928-284-7886',NULL,'business:turn707243business3','4.8 / 45','prospect',0,'Sedona local service visibility','Sedona / Verde Valley',NULL,NULL,NULL,NULL,'Commercial + Airbnb/Vrbo cleaning')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_sedona_crystal','Sedona') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_sedona_crystal','commercial_cleaning' where exists(select 1 from services where service_key='commercial_cleaning') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_sedona_crystal','str_property_care' where exists(select 1 from services where service_key='str_property_care') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_sedona_alpha','Alpha Towing & Transport',NULL,'928-567-5130',NULL,'business:turn707243business4','4.2 / 42','prospect',0,'Sedona local service visibility','Sedona / Verde Valley',NULL,NULL,NULL,NULL,'24/7 towing')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_sedona_alpha','Sedona') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_sedona_alpha','towing_roadside' where exists(select 1 from services where service_key='towing_roadside') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_sedona_desertscape','Desert Scape, LLC',NULL,'928-282-2194',NULL,'https://gz.sedonachamber.com/directory/Search/landscaping-home-garden-668013?cid=660427',NULL,'prospect',0,'Greater Sedona Chamber directory','Sedona',NULL,NULL,NULL,NULL,'Chamber directory listing')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_sedona_desertscape','Sedona') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_sedona_desertscape','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_sedona_landscapemagic','Landscape Magic',NULL,'928-284-9314',NULL,'https://gz.sedonachamber.com/directory/Search/landscaping-home-garden-668013?cid=660427',NULL,'prospect',0,'Greater Sedona Chamber directory','Sedona',NULL,NULL,NULL,NULL,'Chamber directory listing')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_sedona_landscapemagic','Sedona') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_sedona_landscapemagic','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_sedona_reandsons','R.E. And Sons Landscaping',NULL,'928-433-7527',NULL,'https://gz.sedonachamber.com/directory/Search/landscaping-home-garden-668013?cid=660427',NULL,'prospect',0,'Greater Sedona Chamber directory','Sedona',NULL,NULL,NULL,NULL,'Chamber directory listing')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_sedona_reandsons','Sedona') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_sedona_reandsons','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_phx_reliance','Reliance Heating & Air Conditioning',NULL,'602-607-2150',NULL,'business:turn707243business5','4.7 / 71','prospect',0,'High local reputation','Phoenix / Scottsdale / Cave Creek / Carefree / Anthem',NULL,NULL,NULL,NULL,'Family-owned, long-running HVAC company')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_phx_reliance','Phoenix') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_phx_reliance','hvac_heat' where exists(select 1 from services where service_key='hvac_heat') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_phx_anago','Anago Cleaning Systems of Phoenix',NULL,'480-771-2703',NULL,'https://business.phoenixchamber.com/list/category/commercial-12066',NULL,'prospect',0,'Greater Phoenix Chamber directory','Phoenix metro',NULL,NULL,NULL,NULL,'Commercial cleaning')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_phx_anago','Phoenix') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_phx_anago','commercial_cleaning' where exists(select 1 from services where service_key='commercial_cleaning') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_phx_janiking','Jani-King of Phoenix',NULL,'602-433-0550',NULL,'https://business.phoenixchamber.com/list/category/commercial-12066',NULL,'prospect',0,'Greater Phoenix Chamber directory','Phoenix metro',NULL,NULL,NULL,NULL,'Large commercial cleaning operator')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_phx_janiking','Phoenix') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_phx_janiking','commercial_cleaning' where exists(select 1 from services where service_key='commercial_cleaning') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_phx_integrity','Integrity A/C & Heating, LLC',NULL,'602-971-0567',NULL,'https://business.phoenixchamber.com/list/ql/business-professional-services-5',NULL,'prospect',0,'Greater Phoenix Chamber directory','Phoenix metro',NULL,NULL,NULL,NULL,'Chamber-listed HVAC')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_phx_integrity','Phoenix') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_phx_integrity','hvac_heat' where exists(select 1 from services where service_key='hvac_heat') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_phx_ammechanical','A & M Mechanical, LLC',NULL,'602-405-8289',NULL,'https://business.phoenixchamber.com/list/ql/business-professional-services-5',NULL,'prospect',0,'Greater Phoenix Chamber directory','Phoenix metro',NULL,NULL,NULL,NULL,'Mechanical/HVAC prospect')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_phx_ammechanical','Phoenix') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_phx_ammechanical','hvac_heat' where exists(select 1 from services where service_key='hvac_heat') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_scotts_clearvalue','Clear Value Pools',NULL,'480-602-7665','https://clearvaluepools.com/','https://business.scottsdalechamber.com/list/member/clear-value-pools-40416',NULL,'prospect',0,'Scottsdale Chamber member','Scottsdale / Paradise Valley / Fountain Hills / Tempe / Gilbert / Chandler / Phoenix',NULL,NULL,'AZ ROC #358895; licensed/bonded/insured stated',NULL,'Pool service/repair/remodel')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_scotts_clearvalue','Scottsdale') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_scotts_clearvalue','pool_desert_property' where exists(select 1 from services where service_key='pool_desert_property') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_scotts_green2','GREEN 2 CRYSTAL CLEAR POOLS',NULL,'480-589-1672',NULL,'business:turn284249business0','4.7 / 689','prospect',0,'Strong public reputation','Scottsdale / Phoenix metro',NULL,NULL,'AZROC253250 listed',NULL,'Large review base')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_scotts_green2','Scottsdale') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_scotts_green2','pool_desert_property' where exists(select 1 from services where service_key='pool_desert_property') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_scotts_luxe','Luxe Outdoor Environments of Scottsdale',NULL,'480-725-3751',NULL,'business:turn284249business1','4.3 / 37','prospect',0,'Established Scottsdale operator','Scottsdale / nearby metro',NULL,NULL,NULL,NULL,'Landscape + pool/outdoor living')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_scotts_luxe','Scottsdale') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_scotts_luxe','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_scotts_luxe','pool_desert_property' where exists(select 1 from services where service_key='pool_desert_property') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_scotts_towncountry','Town & Country Office Cleaning',NULL,'480-905-5590','http://thecleanguys.com/','business:turn284249business2','5.0 / 1','prospect',0,'Long-established Scottsdale operator','Scottsdale / surrounding metro',NULL,NULL,NULL,NULL,'Commercial janitorial')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_scotts_towncountry','Scottsdale') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_scotts_towncountry','commercial_cleaning' where exists(select 1 from services where service_key='commercial_cleaning') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_phx_prime_detail','Prime Mobile Detailing',NULL,'602-849-2649',NULL,'business:turn284249business3','5.0 / 350','prospect',0,'Strong review signal','Phoenix metro / Scottsdale',NULL,NULL,NULL,NULL,'Mobile detailing')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_phx_prime_detail','Phoenix') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_phx_prime_detail','vehicle_services' where exists(select 1 from services where service_key='vehicle_services') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_tuc_tempcontrol','Temperature Control, Inc.',NULL,'520-775-3566',NULL,'business:turn284249business4','4.2 / 5','prospect',0,'Established Tucson home-services operator','Tucson / Oro Valley / Pima County',NULL,NULL,NULL,NULL,'24/7 HVAC/plumbing/electrical')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_tuc_tempcontrol','Tucson') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_tuc_tempcontrol','hvac_heat' where exists(select 1 from services where service_key='hvac_heat') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_tuc_ambiance','Ambiance Pool Service',NULL,'520-467-6262',NULL,'business:turn284249business5','4.8 / 679','prospect',0,'Large review signal','Tucson / Oro Valley / Marana / Foothills',NULL,NULL,NULL,NULL,'Pool service/repair')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_tuc_ambiance','Tucson') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_tuc_ambiance','pool_desert_property' where exists(select 1 from services where service_key='pool_desert_property') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_tuc_joesyard','Joe''s Yard, Tree, & Irrigation',NULL,'520-849-7676',NULL,'business:turn284249business6','5.0 / 117','prospect',0,'Strong local reputation','Tucson',NULL,NULL,NULL,NULL,'Landscape/tree/irrigation/property maintenance')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_tuc_joesyard','Tucson') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_tuc_joesyard','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_tuc_joesyard','tree_service' where exists(select 1 from services where service_key='tree_service') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_phx_environment','Environment Control',NULL,'602-864-1825',NULL,'https://business.phoenixchamber.com/list/category/janitorial-services-814',NULL,'prospect',0,'Greater Phoenix Chamber directory','Phoenix metro',NULL,NULL,NULL,NULL,'Commercial cleaning')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_phx_environment','Phoenix') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_phx_environment','commercial_cleaning' where exists(select 1 from services where service_key='commercial_cleaning') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_pv_sweptaway','Swept Away AZ, LLC','office@sweptawayaz.com','928-775-0405','https://sweptawayaz.com/','https://sweptawayaz.com/','Large commercial property-maintenance operator','prospect',0,'Established commercial operator','Prescott Quad Cities / Verde Valley / Flagstaff / Northern Arizona',NULL,NULL,NULL,NULL,'Commercial-only; 24/7 crews; sweeping, fleet wash, pressure wash, porter, landscape, snow')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_pv_sweptaway','Prescott Valley') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_pv_sweptaway','parking_lot' where exists(select 1 from services where service_key='parking_lot') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_pv_sweptaway','pressure_washing' where exists(select 1 from services where service_key='pressure_washing') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_pv_sweptaway','fleet_washing' where exists(select 1 from services where service_key='fleet_washing') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_pv_sweptaway','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_pv_sweptaway','snow_service' where exists(select 1 from services where service_key='snow_service') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_pv_sweptaway','commercial_cleaning' where exists(select 1 from services where service_key='commercial_cleaning') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_prescott_windowwranglers','Window Wranglers','windowwranglers@gmail.com','928-463-5393','https://windowwranglers.com/','https://windowwranglers.com/','Family-owned local exterior cleaning','prospect',0,'Local multi-city operator','Prescott / Prescott Valley / Chino Valley / Yavapai County',NULL,NULL,NULL,NULL,'Commercial window + pressure washing')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_prescott_windowwranglers','Prescott') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_windowwranglers','window_cleaning' where exists(select 1 from services where service_key='window_cleaning') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_windowwranglers','pressure_washing' where exists(select 1 from services where service_key='pressure_washing') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_pv_wisewindow','Wise Window Washing','wisewindowwashing@outlook.com','602-881-6702','https://wisewindowwashing.com/','https://wisewindowwashing.com/service-area/prescott-az','5.0 / 105','prospect',0,'Strong public review signal','Greater Prescott / Quad Cities',NULL,NULL,NULL,NULL,'Commercial windows, pressure washing, post-construction')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_pv_wisewindow','Prescott Valley') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_pv_wisewindow','window_cleaning' where exists(select 1 from services where service_key='window_cleaning') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_pv_wisewindow','pressure_washing' where exists(select 1 from services where service_key='pressure_washing') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_prescott_platinumedge','Platinum Edge Services','info@platinumedgeservices.com','928-227-5725','https://platinumedgeservices.com/','https://platinumedgeservices.com/contact.html','Commercial fleet specialist','prospect',0,'Documented commercial vendor readiness','Northern Arizona / Phoenix for larger fleet accounts',NULL,NULL,'Licensed & insured stated','$2M general liability stated','Fleet washing, commercial windows, pressure washing')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_prescott_platinumedge','Prescott') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_platinumedge','fleet_washing' where exists(select 1 from services where service_key='fleet_washing') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_platinumedge','window_cleaning' where exists(select 1 from services where service_key='window_cleaning') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_platinumedge','pressure_washing' where exists(select 1 from services where service_key='pressure_washing') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_prescott_americancrown','American Crown Commercial Cleaning','donna@americancrowncc.com','928-250-0490','https://americancrowncc.com/','https://americancrowncc.com/','Commercial-focused; event/venue and kitchen exhaust','prospect',0,'Commercial + kitchen compliance credibility','Yavapai County / Prescott / PV / Sedona / Cottonwood / Camp Verde / Chino Valley',NULL,NULL,'NFPA 96 / MFS certification stated',NULL,'Commercial cleaning, windows, pressure wash, hood/exhaust, venue cleaning')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_prescott_americancrown','Prescott') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_americancrown','commercial_cleaning' where exists(select 1 from services where service_key='commercial_cleaning') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_americancrown','window_cleaning' where exists(select 1 from services where service_key='window_cleaning') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_americancrown','pressure_washing' where exists(select 1 from services where service_key='pressure_washing') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_americancrown','hood_exhaust' where exists(select 1 from services where service_key='hood_exhaust') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_americancrown','floor_carpet' where exists(select 1 from services where service_key='floor_carpet') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_prescott_patriotpest','Patriot Pest & Termite Control',NULL,'928-985-3098',NULL,'business:turn696638business2','4.3 / 40','prospect',0,'Long-standing local operator','Prescott / PV / Chino Valley / Dewey-Humboldt / broader Yavapai',NULL,NULL,'Arizona licensed; NPMA/APCA membership stated',NULL,'Commercial/residential pest and termite')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_prescott_patriotpest','Prescott') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_patriotpest','pest_control' where exists(select 1 from services where service_key='pest_control') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_prescott_tccarpet','T.C. Carpet Care',NULL,'928-550-8900',NULL,'business:turn696638business3','4.7 / 12','prospect',0,'Veteran-owned commercial-capable','Prescott region',NULL,NULL,NULL,NULL,'Commercial carpet, tile/grout, strip/wax, medical buildings')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_prescott_tccarpet','Prescott') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_tccarpet','floor_carpet' where exists(select 1 from services where service_key='floor_carpet') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_prescott_lifeproperty','Life & Property Safety',NULL,'928-910-6213',NULL,'business:turn696638business4','5.0 / 1','prospect',0,'Compliance-service specialist','Prescott / PV / Yavapai / parts of Maricopa',NULL,NULL,'NFPA-compliant fire protection / backflow service stated',NULL,'Fire protection inspections/service and backflow')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_prescott_lifeproperty','Prescott') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_lifeproperty','fire_safety' where exists(select 1 from services where service_key='fire_safety') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_lifeproperty','backflow_plumbing' where exists(select 1 from services where service_key='backflow_plumbing') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_prescott_highdesertlock','High Desert Lock and Safe',NULL,'928-445-0197',NULL,'business:turn696638business5','4.9 / 50','prospect',0,'Established local locksmith','Prescott Quad Cities',NULL,NULL,'Certified master locksmith stated',NULL,'Commercial/residential/automotive locksmith and safes')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_prescott_highdesertlock','Prescott') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_highdesertlock','locksmith_access' where exists(select 1 from services where service_key='locksmith_access') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_prescott_ventpro','Vent Pro: Duct & Vent Care',NULL,'928-800-2727',NULL,'business:turn696638business6','5.0 / 1118','prospect',0,'Very strong review/certification signal','Yavapai County / Prescott region',NULL,NULL,'NADCA member / ASCS personnel stated',NULL,'Air duct, dryer vent, HVAC system cleaning')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_prescott_ventpro','Prescott') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_ventpro','duct_vent' where exists(select 1 from services where service_key='duct_vent') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_ventpro','hvac_heat' where exists(select 1 from services where service_key='hvac_heat') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_prescott_maurer','Maurer Sealing & Striping LLC',NULL,'928-499-8875',NULL,'business:turn696638business7','5.0 / 32','prospect',0,'Strong local review signal','Prescott / regional',NULL,NULL,NULL,NULL,'Striping, pavement markings, wheel stops, sealing')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_prescott_maurer','Prescott') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_maurer','parking_lot' where exists(select 1 from services where service_key='parking_lot') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_pv_neumann','Neumann High Country Doors',NULL,'928-772-9738',NULL,'business:turn696638business8','4.3 / 25','prospect',0,'Family-owned since 1975','Prescott / PV / Chino Valley / Verde Valley',NULL,NULL,NULL,NULL,'Commercial and residential garage/overhead door install/repair')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_pv_neumann','Prescott Valley') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_pv_neumann','garage_door' where exists(select 1 from services where service_key='garage_door') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_prescott_pristine','Pristine Auto Detail',NULL,'928-433-2660',NULL,'business:turn696638business9','4.6 / 7','prospect',0,'Mobile regional operator','Prescott Quad Cities / Sedona / Cottonwood',NULL,NULL,NULL,NULL,'Mobile detailing, ceramic coating, RV/boat/vehicle')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_prescott_pristine','Prescott') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_pristine','mobile_detailing' where exists(select 1 from services where service_key='mobile_detailing') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_prescott_pressurewash','Prescott Pressure Washing','Prescottpressurewashing@gmail.com','928-925-9940','https://prescott-pressure-washing.com/','https://prescott-pressure-washing.com/','Local Prescott/Yavapai operator','prospect',0,'Local multi-service exterior cleaner','Prescott / PV / Chino Valley / Dewey-Humboldt / Mayer',NULL,NULL,NULL,NULL,'Pressure wash, fleet/auto detail, gutters')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_prescott_pressurewash','Prescott') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_pressurewash','pressure_washing' where exists(select 1 from services where service_key='pressure_washing') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_pressurewash','fleet_washing' where exists(select 1 from services where service_key='fleet_washing') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_pressurewash','mobile_detailing' where exists(select 1 from services where service_key='mobile_detailing') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_prescott_servpro','SERVPRO of Prescott',NULL,NULL,NULL,'https://www.servpro.com/locations/az/servpro-of-prescott/services/commercial','National franchise / local commercial restoration branch','prospect',0,'Large restoration/cleaning network','Prescott / Prescott Valley region',NULL,NULL,'IICRC training stated',NULL,'Commercial specialty cleaning, carpet, duct/HVAC cleaning')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_prescott_servpro','Prescott Valley') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_servpro','commercial_cleaning' where exists(select 1 from services where service_key='commercial_cleaning') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_servpro','floor_carpet' where exists(select 1 from services where service_key='floor_carpet') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_servpro','duct_vent' where exists(select 1 from services where service_key='duct_vent') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_prescott_crrs','CRRS, LLC - Commercial Refrigeration & Restaurant Service',NULL,'928-237-8383','https://prescottrepairs.com/','business:turn534389business0','4.5 / 8','prospect',0,'Specialized commercial kitchen repair','Prescott / Prescott Valley / Quad Cities',NULL,'After-hours / emergency stated','Licensed & insured stated',NULL,'Commercial refrigeration and hot/cold restaurant equipment')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_prescott_crrs','Prescott Valley') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_crrs','restaurant_repair' where exists(select 1 from services where service_key='restaurant_repair') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_crrs','restaurant_equipment' where exists(select 1 from services where service_key='restaurant_equipment') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_crrs','ice_machine' where exists(select 1 from services where service_key='ice_machine') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_crrs','hvac_heat' where exists(select 1 from services where service_key='hvac_heat') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_prescott_sourceone','Source One Supply','INFO@SOURCEONERS.COM','928-778-3591','https://www.sourceonerestaurantsupply.com/','https://www.sourceonerestaurantsupply.com/','4.6 / 26','prospect',0,'Local foodservice supply specialist','Prescott Quad Cities / Verde Valley / Sedona / Camp Verde / Flagstaff / Northern AZ',NULL,NULL,NULL,NULL,'New/used commercial restaurant equipment, sourcing, delivery, install')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_prescott_sourceone','Prescott') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_sourceone','used_equipment' where exists(select 1 from services where service_key='used_equipment') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_sourceone','equipment_quotes' where exists(select 1 from services where service_key='equipment_quotes') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_sourceone','restaurant_equipment' where exists(select 1 from services where service_key='restaurant_equipment') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_pv_pcrefrigeration','PC Refrigeration',NULL,'928-356-8060',NULL,'https://www.yellowpages.com/prescott-az/refrigerating-equipment-commercial-industrial-servicing',NULL,'prospect',0,'Long-running refrigeration listing','Prescott Valley / Prescott region',NULL,NULL,NULL,NULL,'Commercial refrigeration, freezers and ice-making equipment')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_pv_pcrefrigeration','Prescott Valley') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_pv_pcrefrigeration','restaurant_repair' where exists(select 1 from services where service_key='restaurant_repair') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_pv_pcrefrigeration','ice_machine' where exists(select 1 from services where service_key='ice_machine') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_az_cfe','Commercial Food Equipment Co. (CFE)','office@cfeservice.com','480-927-9262','https://www.cfeservice.com/','https://www.cfeservice.com/','Statewide Arizona commercial foodservice operator','prospect',0,'Arizona-wide commercial service since 1968','Arizona statewide; out-of-area fees may apply',NULL,'24/7 emergency stated','ROC #365903 stated',NULL,'Hot/cold commercial kitchen equipment, refrigeration, ice, HVAC, PM')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_az_cfe','Phoenix Metro / Statewide') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_az_cfe','restaurant_repair' where exists(select 1 from services where service_key='restaurant_repair') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_az_cfe','restaurant_equipment' where exists(select 1 from services where service_key='restaurant_equipment') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_az_cfe','ice_machine' where exists(select 1 from services where service_key='ice_machine') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_az_cfe','hvac_heat' where exists(select 1 from services where service_key='hvac_heat') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_az_tech24','Tech24 Commercial Foodservice Repair',NULL,'602-234-2443','https://www.mytech24.com/','https://www.mytech24.com/locations/prescott-food-service-equipment-repair/','Factory-authorized / planned maintenance capability','prospect',0,'Large foodservice repair network','Prescott and surrounding / Arizona service network',NULL,NULL,'Licensed and insured stated',NULL,'Cooking, refrigeration, ice, beverage and foodservice equipment')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_az_tech24','Phoenix / Statewide') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_az_tech24','restaurant_repair' where exists(select 1 from services where service_key='restaurant_repair') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_az_tech24','restaurant_equipment' where exists(select 1 from services where service_key='restaurant_equipment') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_az_tech24','ice_machine' where exists(select 1 from services where service_key='ice_machine') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_prescott_cookairclean','Cook Air Clean',NULL,'602-854-4990','https://cookairclean.com/','https://cookairclean.com/prescott-az/','Commercial hood/exhaust specialist','prospect',0,'Specialized kitchen compliance service','Prescott / PV / Chino / Dewey / Yavapai County',NULL,NULL,'NFPA 96 compliant service stated',NULL,'Kitchen exhaust, duct, fan, filter and grease-containment cleaning')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_prescott_cookairclean','Prescott / Yavapai') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_cookairclean','hood_exhaust' where exists(select 1 from services where service_key='hood_exhaust') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_pv_dovestires','Dove''s Tires Mobile Service',NULL,'928-600-4606',NULL,'business:turn534389business5','5.0 / 5','prospect',0,'24-hour mobile operator','Prescott / PV / Chino / Yavapai County',NULL,'24/7',NULL,NULL,'Mobile tire, flat repair, balancing, rotations, gas, jump starts')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_pv_dovestires','Prescott Valley') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_pv_dovestires','mobile_tire_battery' where exists(select 1 from services where service_key='mobile_tire_battery') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_pv_dovestires','towing_roadside' where exists(select 1 from services where service_key='towing_roadside') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_prescott_magicglass','Magic Glass Prescott',NULL,'928-910-7262',NULL,'business:turn534389business6','4.9 / 41','prospect',0,'Established local auto-glass operator','Prescott / greater area',NULL,NULL,'National Glass Association certified installers stated',NULL,'Windshield repair/replacement and mobile auto glass')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_prescott_magicglass','Prescott') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_magicglass','auto_glass' where exists(select 1 from services where service_key='auto_glass') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_prescott_doggedly','Doggedly Devoted',NULL,'928-771-0111',NULL,'business:turn534389business7','5.0 / 16','prospect',0,'Independent professional pet sitter','Select Prescott areas',NULL,NULL,NULL,NULL,'In-home pet sitting and dog walking')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_prescott_doggedly','Prescott') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_doggedly','pet_sitting' where exists(select 1 from services where service_key='pet_sitting') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_prescott_morgan_groom','Morgan Mobile Pet Grooming',NULL,'928-277-6664',NULL,'business:turn534389business8','5.0 / 220','prospect',0,'Large review signal','Prescott / mobile service area',NULL,NULL,NULL,NULL,'Mobile dog grooming')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_prescott_morgan_groom','Prescott') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_morgan_groom','mobile_pet_grooming' where exists(select 1 from services where service_key='mobile_pet_grooming') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_prescott_optimyze','Optimyze Cleaning Services',NULL,'928-800-1703',NULL,'business:turn534389business9','4.9 / 28','prospect',0,'Strong move-out/turnover fit','Prescott region',NULL,NULL,NULL,NULL,'Move in/out, window, garage detail, STR/pre-sale cleaning')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_prescott_optimyze','Prescott') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_optimyze','turnover_cleaning' where exists(select 1 from services where service_key='turnover_cleaning') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_optimyze','window_cleaning' where exists(select 1 from services where service_key='window_cleaning') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_optimyze','commercial_cleaning' where exists(select 1 from services where service_key='commercial_cleaning') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_flagstaff_ae_refrig','A&E Refrigeration',NULL,'928-323-0812',NULL,'business:turn534389business10','4.9 / 14','prospect',0,'Flagstaff commercial kitchen specialist','Flagstaff / Northern Arizona',NULL,NULL,NULL,NULL,'Commercial HVACR, kitchen equipment and hood support')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_flagstaff_ae_refrig','Flagstaff') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flagstaff_ae_refrig','restaurant_repair' where exists(select 1 from services where service_key='restaurant_repair') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flagstaff_ae_refrig','restaurant_equipment' where exists(select 1 from services where service_key='restaurant_equipment') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flagstaff_ae_refrig','ice_machine' where exists(select 1 from services where service_key='ice_machine') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flagstaff_ae_refrig','hood_exhaust' where exists(select 1 from services where service_key='hood_exhaust') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flagstaff_ae_refrig','hvac_heat' where exists(select 1 from services where service_key='hvac_heat') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_flagstaff_bareclean','Bare Carpet Care / Bare Clean',NULL,'928-202-7979',NULL,'business:turn534389business13','5.0 / 196','prospect',0,'High-review Northern Arizona cleaner','Flagstaff / Kachina / Williams / Munds Park / Sedona / Cottonwood / Camp Verde',NULL,NULL,NULL,NULL,'Commercial carpet/floor, duct, windows and cleaning')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_flagstaff_bareclean','Flagstaff') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flagstaff_bareclean','floor_carpet' where exists(select 1 from services where service_key='floor_carpet') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flagstaff_bareclean','duct_vent' where exists(select 1 from services where service_key='duct_vent') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flagstaff_bareclean','window_cleaning' where exists(select 1 from services where service_key='window_cleaning') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flagstaff_bareclean','turnover_cleaning' where exists(select 1 from services where service_key='turnover_cleaning') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_flagstaff_arizonaespresso','Arizona Espresso',NULL,'928-284-8100',NULL,'business:turn534389business12','Equipment/service supplier','prospect',0,'Specialty beverage equipment','Flagstaff / Northern Arizona',NULL,NULL,NULL,NULL,'Coffee/espresso equipment supply, service and program support')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_flagstaff_arizonaespresso','Flagstaff') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flagstaff_arizonaespresso','restaurant_equipment' where exists(select 1 from services where service_key='restaurant_equipment') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flagstaff_arizonaespresso','equipment_quotes' where exists(select 1 from services where service_key='equipment_quotes') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flagstaff_arizonaespresso','coffee_water' where exists(select 1 from services where service_key='coffee_water') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_kingman_comfortair','Comfort Air Solutions LLC','office.comfortairsolutions@gmail.com','928-450-5534','https://comfortairsolutionsaz.com/','https://comfortairsolutionsaz.com/commercial','Commercial HVACR + ice machine','prospect',0,'Licensed commercial HVACR operator','Kingman / Golden Valley / Lake Havasu / Mohave County',NULL,'After-hours may be available','ROC #350951; BBB A stated',NULL,'Commercial refrigeration, ice cleaning/repair, HVAC, duct work')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_kingman_comfortair','Kingman / Mohave County') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_kingman_comfortair','restaurant_repair' where exists(select 1 from services where service_key='restaurant_repair') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_kingman_comfortair','ice_machine' where exists(select 1 from services where service_key='ice_machine') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_kingman_comfortair','hvac_heat' where exists(select 1 from services where service_key='hvac_heat') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_kingman_comfortair','duct_vent' where exists(select 1 from services where service_key='duct_vent') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_prescott_underdog','Underdog Towing',NULL,'928-533-1909',NULL,'https://www.ustowalliance.com/city/arizona/prescott/','4.8 registry','prospect',0,NULL,'Prescott / surrounding',NULL,NULL,NULL,NULL,'US Tow Alliance Prescott listing')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_prescott_underdog','Prescott') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_underdog','towing_roadside' where exists(select 1 from services where service_key='towing_roadside') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_prescott_nastow','Nastow Towing & Recovery',NULL,'928-778-4357',NULL,'https://www.ustowalliance.com/city/arizona/prescott/','4.3 registry','prospect',0,NULL,'Prescott / surrounding',NULL,NULL,NULL,NULL,'US Tow Alliance Prescott listing')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_prescott_nastow','Prescott') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_nastow','towing_roadside' where exists(select 1 from services where service_key='towing_roadside') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_prescott_american_tow','American Towing of Prescott',NULL,'928-772-4200','https://americantowingaz.com/','https://americantowingaz.com/contact-us/',NULL,'prospect',0,NULL,'Prescott / Quad Cities',NULL,NULL,NULL,NULL,'24/7 towing; public website')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_prescott_american_tow','Prescott') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_american_tow','towing_roadside' where exists(select 1 from services where service_key='towing_roadside') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_prescott_dashhound','Dash Hound Towing & Off Road Recovery',NULL,'928-533-4024',NULL,'https://www.ustowalliance.com/city/arizona/prescott/','4.5 registry','prospect',0,NULL,'Prescott / surrounding',NULL,NULL,NULL,NULL,'Towing/off-road recovery')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_prescott_dashhound','Prescott') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_dashhound','towing_roadside' where exists(select 1 from services where service_key='towing_roadside') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_prescott_hoist','Hoist Towing & Off Road Recovery',NULL,'928-660-0606',NULL,'business:turn800373business7','4.8 / 23','prospect',0,NULL,'Prescott / Dewey / Northern Arizona',NULL,NULL,NULL,NULL,'24/7 towing/off-road recovery')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_prescott_hoist','Prescott') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_prescott_hoist','towing_roadside' where exists(select 1 from services where service_key='towing_roadside') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_flag_naztowing','Northern Arizona Towing & Off Road Recovery LLC',NULL,'928-266-5420',NULL,'https://www.ustowalliance.com/city/arizona/flagstaff/','4.9 registry','prospect',0,NULL,'Flagstaff / Northern Arizona',NULL,NULL,NULL,NULL,'24-hour listing signal')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_flag_naztowing','Flagstaff') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flag_naztowing','towing_roadside' where exists(select 1 from services where service_key='towing_roadside') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_flag_ampm','AM PM Towing & Recovery','flagstaffampmdispatch@gmail.com','928-526-4357','https://ampmtowing.com/','https://ampmtowing.com/contact-us/',NULL,'prospect',0,NULL,'Flagstaff / Northern Arizona',NULL,NULL,NULL,NULL,'Light/medium/heavy towing and roadside')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_flag_ampm','Flagstaff') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flag_ampm','towing_roadside' where exists(select 1 from services where service_key='towing_roadside') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_flag_jett','JETT LLC Towing',NULL,'928-714-0354','https://www.jetttowing.com/','https://www.jetttowing.com/',NULL,'prospect',0,NULL,'Flagstaff / Northern Arizona',NULL,NULL,NULL,NULL,'Light/medium/heavy towing, recovery, transport')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_flag_jett','Flagstaff') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flag_jett','towing_roadside' where exists(select 1 from services where service_key='towing_roadside') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_flag_countryclub','Country Club Towing & Recovery',NULL,'928-527-8697',NULL,'https://www.ustowalliance.com/city/arizona/flagstaff/','4.4 registry','prospect',0,NULL,'Flagstaff / surrounding',NULL,NULL,NULL,NULL,'US Tow Alliance Flagstaff listing')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_flag_countryclub','Flagstaff') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flag_countryclub','towing_roadside' where exists(select 1 from services where service_key='towing_roadside') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_flag_united','United Towing',NULL,'928-526-1839','https://unitedtowingflagstaff.com/','https://unitedtowingflagstaff.com/',NULL,'prospect',0,NULL,'Flagstaff / Northern Arizona',NULL,NULL,NULL,NULL,'Light-duty towing, roadside, fleet/accounts')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_flag_united','Flagstaff') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flag_united','towing_roadside' where exists(select 1 from services where service_key='towing_roadside') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_flag_murphys','Murphys Heavy Towing & Semi Truck Repair','murphysdispatch@outlook.com','928-853-5202','https://mtaz.com/','https://mtaz.com/contact/',NULL,'prospect',0,NULL,'Flagstaff / Northern Arizona',NULL,NULL,NULL,NULL,'Heavy towing, roadside, diesel/repair')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_flag_murphys','Flagstaff') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flag_murphys','towing_roadside' where exists(select 1 from services where service_key='towing_roadside') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flag_murphys','vehicle_services' where exists(select 1 from services where service_key='vehicle_services') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flag_murphys','mobile_tire_battery' where exists(select 1 from services where service_key='mobile_tire_battery') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_flag_noz','NOZ Towing','flagstafftowingco@gmail.com','928-396-3581','https://www.towingflagstaff.com/','https://www.towingflagstaff.com/',NULL,'prospect',0,NULL,'Flagstaff / Northern Arizona',NULL,NULL,NULL,NULL,'24/7 towing and recovery')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_flag_noz','Flagstaff') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_flag_noz','towing_roadside' where exists(select 1 from services where service_key='towing_roadside') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_kingman_adan','Adan Repair & Towing LLC','ADANREPAIR@HOTMAIL.COM','928-279-5846','https://www.adanrepair.com/','https://www.truckstopsandservices.com/location_details.php?id=52406',NULL,'prospect',0,NULL,'Kingman / 300-mile radius',NULL,NULL,NULL,NULL,'Mobile repair, tires, towing, fleet maintenance')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_kingman_adan','Kingman') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_kingman_adan','vehicle_services' where exists(select 1 from services where service_key='vehicle_services') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_kingman_adan','towing_roadside' where exists(select 1 from services where service_key='towing_roadside') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_kingman_adan','mobile_tire_battery' where exists(select 1 from services where service_key='mobile_tire_battery') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_kingman_ac24','AC 24hr Roadside Repair LLC',NULL,'951-575-8552',NULL,'business:turn800373business2','5.0 / 52','prospect',0,NULL,'Kingman / surrounding',NULL,NULL,NULL,NULL,'24/7 mobile mechanic and roadside')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_kingman_ac24','Kingman') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_kingman_ac24','vehicle_services' where exists(select 1 from services where service_key='vehicle_services') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_kingman_ac24','mobile_tire_battery' where exists(select 1 from services where service_key='mobile_tire_battery') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_kingman_ac24','towing_roadside' where exists(select 1 from services where service_key='towing_roadside') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_kingman_roadservice','Kingman Road Service','Roadside@KingmanRoadService.com','844-293-4948','https://www.kingmanroadservice.com/','https://www.kingmanroadservice.com/',NULL,'prospect',0,NULL,'Kingman / I-40 / Northern AZ',NULL,NULL,NULL,NULL,'24/7 road service, semi tires, batteries, roadside')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_kingman_roadservice','Kingman') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_kingman_roadservice','vehicle_services' where exists(select 1 from services where service_key='vehicle_services') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_kingman_roadservice','mobile_tire_battery' where exists(select 1 from services where service_key='mobile_tire_battery') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_kingman_roadservice','towing_roadside' where exists(select 1 from services where service_key='towing_roadside') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_phx_swimhappy','SwimHappy Pool Service & Repair',NULL,'602-638-2400',NULL,'business:turn800373business4','4.8 / 485','prospect',0,NULL,'Phoenix metro',NULL,NULL,NULL,NULL,'Large weekly pool-service operation')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_phx_swimhappy','Phoenix') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_phx_swimhappy','pool_desert_property' where exists(select 1 from services where service_key='pool_desert_property') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_phx_poolfix','Swimming Pool Service & Repair',NULL,'602-267-7203','https://www.poolfix.com/','https://www.poolfix.com/',NULL,'prospect',0,NULL,'Phoenix metro',NULL,NULL,'ROC 048408 / 070761 / 173638',NULL,'Licensed/bonded/insured stated; repair/remodel')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_phx_poolfix','Phoenix') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_phx_poolfix','pool_desert_property' where exists(select 1 from services where service_key='pool_desert_property') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_sedona_totalproperty','Total Property Care Arizona','propertycareaz@mail.com','928-274-2277','https://totalpropertycareaz.com/','https://totalpropertycareaz.com/',NULL,'prospect',0,NULL,'Sedona',NULL,NULL,NULL,NULL,'STR management, cleaning, maintenance, vendor coordination')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_sedona_totalproperty','Sedona') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_sedona_totalproperty','str_property_care' where exists(select 1 from services where service_key='str_property_care') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_sedona_totalproperty','turnover_cleaning' where exists(select 1 from services where service_key='turnover_cleaning') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_sedona_deserthaven','Desert Haven Home Management','hello@sedonadeserthaven.com','928-301-2892','https://sedonadeserthaven.com/','https://verdevalleydirectory.com/listing/desert-haven-home-management-sedona/',NULL,'prospect',0,NULL,'Sedona / Cottonwood / Cornville / VOC',NULL,NULL,'License not confirmed by directory','Business states insured','Vacation-rental turnovers, home watch, vendor visits')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_sedona_deserthaven','Sedona') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_sedona_deserthaven','str_property_care' where exists(select 1 from services where service_key='str_property_care') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_sedona_deserthaven','turnover_cleaning' where exists(select 1 from services where service_key='turnover_cleaning') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_sedona_rentredrock','Rent Red Rocks',NULL,NULL,'https://www.rentredrock.com/','https://www.rentredrock.com/',NULL,'prospect',0,NULL,'Sedona',NULL,NULL,NULL,NULL,'STR management, cleaning/provider coordination')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_sedona_rentredrock','Sedona') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_sedona_rentredrock','str_property_care' where exists(select 1 from services where service_key='str_property_care') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_sedona_premier','Sedona Premier',NULL,'928-399-7888',NULL,'business:turn800373business5','5.0 / 69','prospect',0,NULL,'Sedona',NULL,NULL,NULL,NULL,'Full-service STR management with in-house cleaning/maintenance')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_sedona_premier','Sedona') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_sedona_premier','str_property_care' where exists(select 1 from services where service_key='str_property_care') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_sedona_premier','turnover_cleaning' where exists(select 1 from services where service_key='turnover_cleaning') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_sedona_hostco','TheHostCo','tj@thehostco.com','928-499-8066','https://thehostco.com/','https://thehostco.com/',NULL,'prospect',0,NULL,'Prescott Quad-City / Sedona Verde Valley',NULL,NULL,NULL,NULL,'Full-service STR management and vendor coordination')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_sedona_hostco','Sedona') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_sedona_hostco','str_property_care' where exists(select 1 from services where service_key='str_property_care') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_sedona_hostco','turnover_cleaning' where exists(select 1 from services where service_key='turnover_cleaning') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_scotts_roadrunner','Roadrunner Escapes',NULL,'602-345-1379',NULL,'business:turn800373business6','5.0 / 138','prospect',0,NULL,'Scottsdale / Phoenix metro',NULL,NULL,NULL,NULL,'Vacation rental management, property maintenance, hot tubs/pools')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_scotts_roadrunner','Scottsdale') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_scotts_roadrunner','str_property_care' where exists(select 1 from services where service_key='str_property_care') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_scotts_roadrunner','pool_desert_property' where exists(select 1 from services where service_key='pool_desert_property') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_sedona_verdevalleytree','Verde Valley Tree Care','VVTreeCare@proton.me','928-224-9387','https://www.verdevalleytreecare.com/','https://www.verdevalleytreecare.com/contact-us/',NULL,'prospect',0,NULL,'Sedona / Cottonwood / Camp Verde / Cornville / Rimrock / VOC',NULL,NULL,NULL,NULL,'Tree pruning/removal, fire mitigation, wildfire risk assessments')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_sedona_verdevalleytree','Sedona') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_sedona_verdevalleytree','tree_service' where exists(select 1 from services where service_key='tree_service') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_sedona_aznorth','Arizona North Tree Service','paul@aznorthtree.com','928-286-2522','https://aznorthtree.com/','https://aznorthtree.com/contact/',NULL,'prospect',0,NULL,'Flagstaff / Sedona / VOC / Camp Verde / Rimrock',NULL,NULL,'Insurance stated publicly',NULL,'Tree removal, pruning, brush/fuel mitigation, storm cleanup')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_sedona_aznorth','Sedona') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_sedona_aznorth','tree_service' where exists(select 1 from services where service_key='tree_service') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_sedona_tree_landscape','Sedona Tree and Landscape','Sedonatree@gmail.com','928-300-0773','https://sedonatree.com/','https://sedonatree.com/',NULL,'prospect',0,NULL,'Sedona / Verde Valley',NULL,NULL,'Licensed/insured stated publicly',NULL,'Tree + landscape; free estimates')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_sedona_tree_landscape','Sedona') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_sedona_tree_landscape','tree_service' where exists(select 1 from services where service_key='tree_service') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_sedona_tree_landscape','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_scotts_sunkissed','The Sun Kissed Group','info@thesunkissedgroup.com','602-689-6570','https://thesunkissedgroup.com/','https://thesunkissedgroup.com/',NULL,'prospect',0,NULL,'Scottsdale / Phoenix metro',NULL,NULL,NULL,NULL,'STR management, setup, operations and property care')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_scotts_sunkissed','Scottsdale') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_scotts_sunkissed','str_property_care' where exists(select 1 from services where service_key='str_property_care') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_scotts_sunkissed','turnover_cleaning' where exists(select 1 from services where service_key='turnover_cleaning') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_scotts_veranza','Veranza','hello@stayveranza.com','602-281-0003','https://stayveranza.com/','https://stayveranza.com/contact',NULL,'prospect',0,NULL,'Scottsdale / Phoenix metro',NULL,NULL,NULL,NULL,'Boutique vacation-rental property management')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_scotts_veranza','Scottsdale') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_scotts_veranza','str_property_care' where exists(select 1 from services where service_key='str_property_care') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_scotts_veranza','turnover_cleaning' where exists(select 1 from services where service_key='turnover_cleaning') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_scotts_ark','ARK Rentals','gus@arkrentals.co','760-578-7854','https://arkrentals.co/','https://arkrentals.co/contact-us/',NULL,'prospect',0,NULL,'Scottsdale / greater Phoenix',NULL,NULL,NULL,NULL,'Full-service short-term rental management')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_scotts_ark','Scottsdale') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_scotts_ark','str_property_care' where exists(select 1 from services where service_key='str_property_care') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_scotts_ark','turnover_cleaning' where exists(select 1 from services where service_key='turnover_cleaning') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_scotts_sway','Sway Vacation Rental Management','hello@swayvrm.com','602-643-0293','https://www.swayvrm.com/','https://www.swayvrm.com/contact',NULL,'prospect',0,NULL,'Scottsdale / Arizona',NULL,NULL,NULL,NULL,'Vacation-rental management/concierge')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_scotts_sway','Scottsdale') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_scotts_sway','str_property_care' where exists(select 1 from services where service_key='str_property_care') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_scotts_sway','turnover_cleaning' where exists(select 1 from services where service_key='turnover_cleaning') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_scotts_bellapalazzo','Bella Palazzo','bellateam@bellapalazzo.com','480-725-8858','https://www.bellapalazzo.com/','https://www.bellapalazzo.com/contact-us',NULL,'prospect',0,NULL,'Scottsdale / Arizona',NULL,NULL,NULL,NULL,'Vacation-rental management, homeowner/property support')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_scotts_bellapalazzo','Scottsdale') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_scotts_bellapalazzo','str_property_care' where exists(select 1 from services where service_key='str_property_care') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_scotts_bellapalazzo','turnover_cleaning' where exists(select 1 from services where service_key='turnover_cleaning') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_scotts_itrip','iTrip Scottsdale','scottsdaleinfo@itrip.net','602-900-1833','https://www.itrip.net/property-management/scottsdale','https://www.itrip.net/property-management/scottsdale/contact',NULL,'prospect',0,NULL,'Scottsdale / Cave Creek / Paradise Valley / Phoenix metro',NULL,NULL,NULL,NULL,'Vacation-rental management and cleaning coordination')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_scotts_itrip','Scottsdale') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_scotts_itrip','str_property_care' where exists(select 1 from services where service_key='str_property_care') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_scotts_itrip','turnover_cleaning' where exists(select 1 from services where service_key='turnover_cleaning') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_scotts_baro','Baro Stays','rk@staybaro.com',NULL,'https://staybaro.com/','https://staybaro.com/',NULL,'prospect',0,NULL,'Scottsdale / Cave Creek / Phoenix',NULL,NULL,NULL,NULL,'Boutique STR management and property operations')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_scotts_baro','Scottsdale') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_scotts_baro','str_property_care' where exists(select 1 from services where service_key='str_property_care') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_scotts_baro','turnover_cleaning' where exists(select 1 from services where service_key='turnover_cleaning') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_scotts_nadine','Nadine Duncan STR Management','nadineduncan.rei@gmail.com',NULL,'https://nadine-duncan.my.canva.site/','https://nadine-duncan.my.canva.site/',NULL,'prospect',0,NULL,'Scottsdale',NULL,NULL,NULL,NULL,'Boutique STR management/co-hosting and property oversight')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_scotts_nadine','Scottsdale') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_scotts_nadine','str_property_care' where exists(select 1 from services where service_key='str_property_care') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_scotts_nadine','turnover_cleaning' where exists(select 1 from services where service_key='turnover_cleaning') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_phx_hghauling','HG Hauling Services','angelhg@hghaulingservices.com','602-918-4792','https://hghaulingservices-social-links.base44.app/','https://nextdoor.com/pages/hg-hauling-services/',NULL,'prospect',0,NULL,'Phoenix / Maricopa County',NULL,NULL,NULL,NULL,'Owner-operated junk removal, cleanouts, material delivery')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_phx_hghauling','Phoenix') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_phx_hghauling','junk_hauling' where exists(select 1 from services where service_key='junk_hauling') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_phx_junkking','Junk King Phoenix',NULL,'480-719-0467','https://www.junk-king.com/locations/phoenix','business:turn882767business8',NULL,'prospect',0,NULL,'Phoenix metro',NULL,NULL,NULL,NULL,'Full-service junk removal and hauling')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_phx_junkking','Phoenix') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_phx_junkking','junk_hauling' where exists(select 1 from services where service_key='junk_hauling') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_phx_dryheat','Dry Heat Junk Removal & Dumpster Rentals',NULL,'602-793-5959',NULL,'business:turn882767business9','5.0 / 2','prospect',0,NULL,'Phoenix / Maricopa County',NULL,NULL,'Licensed/insured stated publicly',NULL,'Junk removal, property trash-outs, dumpster rentals')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_phx_dryheat','Phoenix') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_phx_dryheat','junk_hauling' where exists(select 1 from services where service_key='junk_hauling') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_tuc_pestfriends','Pest Friends',NULL,'520-999-2847','https://pestfriends.com/','business:turn882767business10','4.7 / 24','prospect',0,NULL,'Tucson / Oro Valley / Pima County',NULL,NULL,'Public profile references AZ pest business licensing',NULL,'Residential/commercial pest, rodents, termites, birds')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_tuc_pestfriends','Tucson') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_tuc_pestfriends','pest_control' where exists(select 1 from services where service_key='pest_control') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_winslow_joesglass','Joe''s Glass and Locksmith Shop, Inc.','joesglass@cybertrails.com','928-289-4149',NULL,'https://winslowarizona.org/the-chamber/chamber-members/','4.6 / 10','prospect',0,'Winslow Chamber member','Winslow',NULL,NULL,NULL,NULL,'Family-owned since 1965; windshield/auto glass + locksmith')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_winslow_joesglass','Winslow') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_winslow_joesglass','auto_glass' where exists(select 1 from services where service_key='auto_glass') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_winslow_joesglass','locksmith_access' where exists(select 1 from services where service_key='locksmith_access') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_winslow_southerntire','Southern Tire Mart at Pilot',NULL,'928-289-1112',NULL,'https://locations.stmtires.com/az/winslow/412-transcon-ln/',NULL,'prospect',0,NULL,'Winslow / I-40 commercial corridor',NULL,NULL,NULL,NULL,'Commercial tire, roadside, jump starts/battery and fleet service')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_winslow_southerntire','Winslow') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_winslow_southerntire','mobile_tire_battery' where exists(select 1 from services where service_key='mobile_tire_battery') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_winslow_southerntire','vehicle_services' where exists(select 1 from services where service_key='vehicle_services') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_phx_landcom','LandCom Landscaping','landcom.us@gmail.com','602-849-3879','https://landcomlandscaping.com/','https://landcomlandscaping.com/contact/',NULL,'prospect',0,NULL,'Phoenix / Valleywide / HOA-commercial',NULL,NULL,'ROC 339162 listed on public site',NULL,'Commercial and HOA landscape management')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_phx_landcom','Phoenix') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_phx_landcom','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_phx_desertgreen','Desert Green Land Care','mike@dglandcare.com','602-500-1663','https://dglandcare.com/','https://dglandcare.com/contact-us/',NULL,'prospect',0,NULL,'Phoenix metro / HOA-commercial',NULL,NULL,NULL,NULL,'Commercial and HOA landscape management')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_phx_desertgreen','Phoenix') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_phx_desertgreen','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_phx_patriotland','Patriot Landscaping & Design LLC','jmattie@pldaz.com','623-606-8224','https://pldaz.com/','https://pldaz.com/contact/',NULL,'prospect',0,NULL,'Phoenix / West Valley / Scottsdale metro',NULL,NULL,'ROC 326144 listed',NULL,'Residential, commercial and government landscape contracts')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_phx_patriotland','Phoenix') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_phx_patriotland','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_phx_keepers','Keepers Landscape','carlos@keeperslandscapeaz.com','480-306-7100','https://www.keeperslandscapeaz.com/','https://www.keeperslandscapeaz.com/contact-us/',NULL,'prospect',0,NULL,'Phoenix / Scottsdale metro',NULL,NULL,NULL,NULL,'Commercial landscape and maintenance')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_phx_keepers','Phoenix') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_phx_keepers','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_phx_mikesland','Mikes Land Enhancements LLC','mikeslandscape2019@gmail.com','602-717-5291','https://mikeslandenhancementsaz.com/','https://mikeslandenhancementsaz.com/',NULL,'prospect',0,NULL,'Phoenix / Scottsdale / Paradise Valley / Cave Creek / Fountain Hills',NULL,NULL,'ROC 350684 listed; active/bonded stated',NULL,'Residential/commercial landscape, tree, hardscape, maintenance')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_phx_mikesland','Phoenix') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_phx_mikesland','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_phx_mikesland','tree_service' where exists(select 1 from services where service_key='tree_service') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_phx_safari','Safari Pools & Landscaping','office@safaripools.com','480-633-6494','https://safaripools.com/','https://safaripools.com/',NULL,'prospect',0,NULL,'Phoenix / Scottsdale / greater Valley',NULL,NULL,NULL,NULL,'Commercial landscape, HOA grounds, pool service/repair')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_phx_safari','Phoenix') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_phx_safari','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_phx_safari','pool_desert_property' where exists(select 1 from services where service_key='pool_desert_property') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_cottonwood_jaybobs','Jaybobs Landscaping','JAYBOBSLANDSCAPING@GMAIL.COM','928-202-1271','https://www.jaybobslandscaping.com/','https://www.jaybobslandscaping.com/',NULL,'prospect',0,NULL,'Cottonwood / Clarkdale / Camp Verde / Cornville / Sedona / Rimrock / VOC',NULL,NULL,NULL,NULL,'Scheduled landscaping maintenance and tree trimming')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_cottonwood_jaybobs','Cottonwood') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_cottonwood_jaybobs','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_cottonwood_jaybobs','tree_service' where exists(select 1 from services where service_key='tree_service') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_campverde_sj','S & J Landscaping and Maintenance LLC','admin@landscapercottonwood.com','928-218-4012','https://landscapercottonwood.com/','https://verdevalleydirectory.com/listing/s-and-j-landscaping-and-maintenance-llc-camp-verde/',NULL,'prospect',0,NULL,'Camp Verde / Cottonwood / Clarkdale / Jerome / Cornville / Rimrock / Sedona / VOC',NULL,NULL,'License not confirmed by directory',NULL,'Landscape, tree removal, property cleanup and small jobs')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_campverde_sj','Camp Verde') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_campverde_sj','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_campverde_sj','tree_service' where exists(select 1 from services where service_key='tree_service') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_campverde_sj','junk_hauling' where exists(select 1 from services where service_key='junk_hauling') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_chino_copperstatejunk','Copper State Junk Removal & Hauling','junk@copperstatejunkremoval.com','928-224-9381','https://www.copperstatejunkremoval.com/','https://www.copperstatejunkremoval.com/',NULL,'prospect',0,NULL,'Chino Valley / Prescott / Prescott Valley / Camp Verde / Cottonwood / Sedona / Yavapai County',NULL,NULL,NULL,NULL,'Junk removal, cleanouts, yard waste and hauling')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_chino_copperstatejunk','Chino Valley') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_chino_copperstatejunk','junk_hauling' where exists(select 1 from services where service_key='junk_hauling') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_chino_husbandwife','Husband & Wife Junk Removal LLC','husbandwifejunkteam@gmail.com','928-632-2035','https://husbandwifejunkteam.com/','https://husbandwifejunkteam.com/',NULL,'prospect',0,NULL,'Chino Valley / Prescott / Prescott Valley / Cottonwood / Camp Verde / Yavapai County',NULL,NULL,NULL,NULL,'Family-owned junk removal and cleanouts')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_chino_husbandwife','Chino Valley') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_chino_husbandwife','junk_hauling' where exists(select 1 from services where service_key='junk_hauling') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_pv_clickapro','Clickapro',NULL,'928-224-2884',NULL,'business:turn787615business6','5.0 / 20','prospect',0,NULL,'Prescott / Prescott Valley / Chino Valley / Dewey-Humboldt / surrounding',NULL,NULL,NULL,NULL,'Recurring pet waste removal and property maintenance')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_pv_clickapro','Prescott Valley') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_pv_clickapro','pet_waste' where exists(select 1 from services where service_key='pet_waste') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_pv_clickapro','property_services' where exists(select 1 from services where service_key='property_services') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_tuc_clearpool','Clear Pool Solutions','tucson@clearpoolsolutions.com','520-777-9131','https://clearpooltucson.com/','https://www.clearpoolsolutions.com/contact-us',NULL,'prospect',0,NULL,'Tucson / Phoenix',NULL,NULL,'Licensed/bonded/insured; ROC 317993/334221 stated',NULL,'Weekly pool service, repairs and equipment')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_tuc_clearpool','Tucson') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_tuc_clearpool','pool_desert_property' where exists(select 1 from services where service_key='pool_desert_property') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_tuc_pimachem','Arizona Pima Chemical Pool Service','arizonapimachemical@gmail.com','520-740-1100','https://www.arizonapimachemical.com/','https://www.arizonapimachemical.com/contact-us',NULL,'prospect',0,'BBB / U.S. Chamber presence stated','Tucson',NULL,NULL,'BBB/US Chamber memberships stated publicly',NULL,'Pool chemical/water treatment and recurring service')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_tuc_pimachem','Tucson') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_tuc_pimachem','pool_desert_property' where exists(select 1 from services where service_key='pool_desert_property') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_tuc_azpooldesigns','Arizona Pool Designs LLC','arizonapooldesigns@gmail.com','520-499-8979','https://azpooldesignstucson.com/','https://azpooldesignstucson.com/services/',NULL,'prospect',0,NULL,'Tucson',NULL,NULL,'ROC 329129 stated',NULL,'Weekly pool/spa service and repairs')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_tuc_azpooldesigns','Tucson') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_tuc_azpooldesigns','pool_desert_property' where exists(select 1 from services where service_key='pool_desert_property') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_tuc_perfectionpools','Perfection Pools','perfectionpools@cox.net','520-885-8835','https://www.perfectionpoolstucson.com/','https://www.perfectionpoolstucson.com/',NULL,'prospect',0,NULL,'Tucson / Oro Valley',NULL,NULL,NULL,NULL,'Pool cleaning, repair, supplies and equipment')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_tuc_perfectionpools','Tucson') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_tuc_perfectionpools','pool_desert_property' where exists(select 1 from services where service_key='pool_desert_property') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_tuc_splashpool','Splash Pool Service','office@splashpoolservice.com','520-623-2213','https://splashpoolservice.com/','https://splashpoolservice.com/contact/',NULL,'prospect',0,NULL,'Tucson',NULL,NULL,'ROC 327706; licensed/bonded/insured stated',NULL,'Pool service, repair and evaluations')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_tuc_splashpool','Tucson') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_tuc_splashpool','pool_desert_property' where exists(select 1 from services where service_key='pool_desert_property') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_tuc_preservation','Preservation Pros Inc.','PreservationPros1@gmail.com','520-477-7067','https://poolservicestucsonaz.com/','https://poolservicestucsonaz.com/contact/',NULL,'prospect',0,NULL,'Tucson',NULL,NULL,NULL,NULL,'Weekly pool cleaning, repair and upgrades')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_tuc_preservation','Tucson') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_tuc_preservation','pool_desert_property' where exists(select 1 from services where service_key='pool_desert_property') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_tuc_legacyland','Legacy Landscaping and Design',NULL,'520-488-2537',NULL,'business:turn579317business9','5.0 / 122','prospect',0,NULL,'Tucson / Marana / Oro Valley / Vail / Catalina Foothills',NULL,NULL,NULL,NULL,'Landscape/hardscape design and commercial/residential work')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_tuc_legacyland','Tucson') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_tuc_legacyland','landscaping' where exists(select 1 from services where service_key='landscaping') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_tuc_greenshield','GreenShield Pest Control',NULL,'520-393-3352',NULL,'business:turn579317business10','4.3 / 95','prospect',0,NULL,'Tucson / Marana / Oro Valley / Vail / Sahuarita / surrounding',NULL,NULL,'AZ pest license signal 9008 in public profile',NULL,'Recurring residential/commercial pest control')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_tuc_greenshield','Tucson') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_tuc_greenshield','pest_control' where exists(select 1 from services where service_key='pest_control') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_tuc_apollo','Apollo Air Conditioning Systems','teamapollo@apolloacs.com','520-525-5585','https://apolloacs.com/','https://apolloacs.com/',NULL,'prospect',0,NULL,'Tucson / Southern Arizona',NULL,NULL,'ROC 327181 CR-39; licensed/bonded/insured stated',NULL,'Commercial mechanical/HVAC contractor')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_tuc_apollo','Tucson') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_tuc_apollo','hvac_heat' where exists(select 1 from services where service_key='hvac_heat') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_tuc_capstone','Capstone Cooling & Heating LLC','info@capstonecooling.com','520-808-8092','https://capstonecooling.com/','https://capstonecooling.com/contact-us/',NULL,'prospect',0,NULL,'Tucson / Oro Valley / Marana / Sahuarita / Green Valley',NULL,NULL,NULL,NULL,'Residential/commercial HVAC and service agreements')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_tuc_capstone','Tucson') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_tuc_capstone','hvac_heat' where exists(select 1 from services where service_key='hvac_heat') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_tuc_affordableair','American Affordable Air','officemanager@americanaffordaleair.com','520-220-5489','https://www.americanaffordableair.com/','https://www.americanaffordableair.com/contact-us',NULL,'prospect',0,NULL,'Tucson',NULL,NULL,'ROC 357178; licensed/bonded/insured stated',NULL,'HVAC repair, installation and maintenance')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_tuc_affordableair','Tucson') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_tuc_affordableair','hvac_heat' where exists(select 1 from services where service_key='hvac_heat') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_tuc_airzona','AirZona Heating Cooling & Plumbing','airzonahvac@gmail.com','520-337-0220','https://zonahcp.com/','https://zonahcp.com/request-quote/',NULL,'prospect',0,NULL,'Tucson',NULL,NULL,NULL,NULL,'Commercial/residential HVAC and plumbing')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_tuc_airzona','Tucson') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_tuc_airzona','hvac_heat' where exists(select 1 from services where service_key='hvac_heat') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_tuc_airzona','backflow_plumbing' where exists(select 1 from services where service_key='backflow_plumbing') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_tuc_djv','DJV Heating Cooling LLC','info@djvhvac.com','520-345-9451','https://www.djvhvac.com/','https://www.djvhvac.com/contact-us',NULL,'prospect',0,NULL,'Tucson',NULL,NULL,'ROC 329633 stated',NULL,'HVAC service, repair and installation')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_tuc_djv','Tucson') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_tuc_djv','hvac_heat' where exists(select 1 from services where service_key='hvac_heat') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_tuc_rightfirst','Right The First Time HVAC LLC','info@rightthefirsttimehvac.net','520-247-1708','https://rightthefirsttimehvac.net/','https://rightthefirsttimehvac.net/contact-us/',NULL,'prospect',0,NULL,'Tucson / Vail / Oro Valley',NULL,NULL,NULL,NULL,'HVAC repair and services')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_tuc_rightfirst','Tucson') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_tuc_rightfirst','hvac_heat' where exists(select 1 from services where service_key='hvac_heat') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_tuc_comfortx','ComfortX HVAC','comfortxhvac@gmail.com','520-222-7012','https://comfortxhvac.com/','https://comfortxhvac.com/contact-us/',NULL,'prospect',0,NULL,'Tucson',NULL,NULL,NULL,NULL,'HVAC service/repair; rental-unit experience noted publicly')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_tuc_comfortx','Tucson') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_tuc_comfortx','hvac_heat' where exists(select 1 from services where service_key='hvac_heat') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_tuc_familyair','Family Air Cooling & Heating','familyairllc@gmail.com','520-399-5850','https://familyairaz.com/','https://familyairaz.com/contact-us/',NULL,'prospect',0,NULL,'Tucson',NULL,NULL,'ROC 216359 stated',NULL,'Cooling/heating service and estimates')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_tuc_familyair','Tucson') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_tuc_familyair','hvac_heat' where exists(select 1 from services where service_key='hvac_heat') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_tuc_sonoran','Sonoran HVAC & Plumbing','contact@sonoranhvac.com','520-303-3220','https://sonoranhvac.com/','https://sonoranhvac.com/contact/',NULL,'prospect',0,NULL,'Tucson',NULL,NULL,NULL,NULL,'HVAC and plumbing for homes/managed properties')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_tuc_sonoran','Tucson') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_tuc_sonoran','hvac_heat' where exists(select 1 from services where service_key='hvac_heat') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_tuc_sonoran','backflow_plumbing' where exists(select 1 from services where service_key='backflow_plumbing') on conflict do nothing;
insert into vendors(vendor_id,business_name,public_email,public_phone,website,source_url,rating_signal,status,quality_score,association_signal,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
values('v_winslow_autoglassone','Auto Glass One',NULL,'928-289-5155',NULL,'https://npc.libguides.com/newbies/lcc',NULL,'prospect',0,NULL,'Winslow',NULL,NULL,NULL,NULL,'Local auto-glass shop listed in NPC community resources')
on conflict(vendor_id) do update set business_name=excluded.business_name,public_email=excluded.public_email,public_phone=excluded.public_phone,website=excluded.website,
source_url=excluded.source_url,rating_signal=excluded.rating_signal,status=case when vendors.status in ('active','pilot','paused','suppressed') then vendors.status else excluded.status end,
quality_score=coalesce(vendors.quality_score,excluded.quality_score),association_signal=excluded.association_signal,territory_notes=excluded.territory_notes,
minimum_job=excluded.minimum_job,capacity=excluded.capacity,license_notes=excluded.license_notes,insurance_notes=excluded.insurance_notes,notes=excluded.notes,updated_at=now()
where vendors.status not in ('applicant','pilot_pending_review','pilot','active','paused','suppressed');
insert into vendor_markets(vendor_id,market) values('v_winslow_autoglassone','Winslow') on conflict do nothing;
insert into vendor_services(vendor_id,service_key) select 'v_winslow_autoglassone','auto_glass' where exists(select 1 from services where service_key='auto_glass') on conflict do nothing;
