-- Assistant-researched Williamson Valley bootstrap. Discovery/corroboration only; never stages outreach.
insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,source_tier,
 verification_status,last_verified_at,status,query_strategy_version,evidence,first_seen_at,last_seen_at
) values (
 'buyer','Williamson Valley','general_business','other local businesses','Williamson Valley Community Organization',
 'https://williamsonvalley.org/','williamsonvalley.org','Williamson Valley community nonprofit/organization; current site active in 2026.','assistant Williamson Valley bootstrap',0,
 null,null,true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_williamson_valley_2026_10_26","researched_at":"2026-10-26","note":"Williamson Valley community nonprofit/organization; current site active in 2026."}'::jsonb,now(),now()
)
on conflict(side,market,category_key,source_url,business_name) do update set
 snippet=excluded.snippet,public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,last_verified_at=excluded.last_verified_at,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,source_tier,
 verification_status,last_verified_at,status,query_strategy_version,evidence,first_seen_at,last_seen_at
) values (
 'buyer','Williamson Valley','churches','churches worship centers','Westside Christian Church',
 'https://westsidechristianaz.com/','westsidechristianaz.com','Direct church site lists 5860 Williamson Valley Rd, Prescott AZ.','assistant Williamson Valley bootstrap',0,
 'westsideprescott@gmail.com','928-776-0081',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_williamson_valley_2026_10_26","researched_at":"2026-10-26","note":"Direct church site lists 5860 Williamson Valley Rd, Prescott AZ."}'::jsonb,now(),now()
)
on conflict(side,market,category_key,source_url,business_name) do update set
 snippet=excluded.snippet,public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,last_verified_at=excluded.last_verified_at,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,source_tier,
 verification_status,last_verified_at,status,query_strategy_version,evidence,first_seen_at,last_seen_at
) values (
 'buyer','Williamson Valley','property_management','property management companies apartment communities','Talking Rock Ranch',
 'https://talkingrockhomes.com/','talkingrockhomes.com','Direct master-planned community/golf residential development site in the Williamson Valley area.','assistant Williamson Valley bootstrap',0,
 null,'928-858-7777',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_williamson_valley_2026_10_26","researched_at":"2026-10-26","note":"Direct master-planned community/golf residential development site in the Williamson Valley area."}'::jsonb,now(),now()
)
on conflict(side,market,category_key,source_url,business_name) do update set
 snippet=excluded.snippet,public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,last_verified_at=excluded.last_verified_at,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,source_tier,
 verification_status,last_verified_at,status,query_strategy_version,evidence,first_seen_at,last_seen_at
) values (
 'buyer','Williamson Valley','property_management','property management companies apartment communities','Talking Rock Ranch HOA',
 'https://talkingrockranchhoa.com/','talkingrockranchhoa.com','Direct HOA site for the 3,600-acre Talking Rock Ranch community.','assistant Williamson Valley bootstrap',0,
 null,null,true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_williamson_valley_2026_10_26","researched_at":"2026-10-26","note":"Direct HOA site for the 3,600-acre Talking Rock Ranch community."}'::jsonb,now(),now()
)
on conflict(side,market,category_key,source_url,business_name) do update set
 snippet=excluded.snippet,public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,last_verified_at=excluded.last_verified_at,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,source_tier,
 verification_status,last_verified_at,status,query_strategy_version,evidence,first_seen_at,last_seen_at
) values (
 'buyer','Williamson Valley','general_business','other local businesses','Inscription Canyon Water Company',
 'https://icwc.info/','icwc.info','Member-owned nonprofit utility serving Inscription Canyon, Preserve, Whispering Canyon and Talking Rock Ranch.','assistant Williamson Valley bootstrap',0,
 null,'928-445-5606',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_williamson_valley_2026_10_26","researched_at":"2026-10-26","note":"Member-owned nonprofit utility serving Inscription Canyon, Preserve, Whispering Canyon and Talking Rock Ranch."}'::jsonb,now(),now()
)
on conflict(side,market,category_key,source_url,business_name) do update set
 snippet=excluded.snippet,public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,last_verified_at=excluded.last_verified_at,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,source_tier,
 verification_status,last_verified_at,status,query_strategy_version,evidence,first_seen_at,last_seen_at
) values (
 'buyer','Williamson Valley','public_facilities','government public facilities municipal buildings','Inscription Canyon Ranch Sanitary District',
 'https://static.azdeq.gov/pn/%E2%80%A2%20Old%20-%20Check%20then%20remove/app_icrsd_es.pdf','azdeq.gov','ADEQ permit identifies the sanitary district wastewater treatment facility at 14000 Grey Bears Trail, Prescott 86305.','assistant Williamson Valley bootstrap',0,
 null,null,true,
 'government','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_williamson_valley_2026_10_26","researched_at":"2026-10-26","note":"ADEQ permit identifies the sanitary district wastewater treatment facility at 14000 Grey Bears Trail, Prescott 86305."}'::jsonb,now(),now()
)
on conflict(side,market,category_key,source_url,business_name) do update set
 snippet=excluded.snippet,public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,last_verified_at=excluded.last_verified_at,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,source_tier,
 verification_status,last_verified_at,status,query_strategy_version,evidence,first_seen_at,last_seen_at
) values (
 'buyer','Williamson Valley','grocery','grocery stores supermarkets markets','Old Stage Stop',
 'https://www.waze.com/live-map/directions/us/az/prescott/old-stage-stop?to=place.ChIJW46gSugzLYcRZFIaNytsBpE','waze.com','Public local listing places this convenience store/deli/gas stop at Williamson Valley / Outer Loop Rd.','assistant Williamson Valley bootstrap',0,
 null,'928-445-7699',false,
 'directory','discovery',now(),'discovered',7,
 '{"bootstrap_source":"assistant_williamson_valley_2026_10_26","researched_at":"2026-10-26","note":"Public local listing places this convenience store/deli/gas stop at Williamson Valley / Outer Loop Rd."}'::jsonb,now(),now()
)
on conflict(side,market,category_key,source_url,business_name) do update set
 snippet=excluded.snippet,public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,last_verified_at=excluded.last_verified_at,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,source_tier,
 verification_status,last_verified_at,status,query_strategy_version,evidence,first_seen_at,last_seen_at
) values (
 'vendor','Williamson Valley','tree_service','Tree Service & Brush Clearing','Morgan Tree Service',
 'https://morgantreeaz.com/','morgantreeaz.com','Direct/local evidence indicates service to Williamson Valley and surrounding Prescott communities.','assistant Williamson Valley bootstrap',0,
 null,'928-232-0011',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_williamson_valley_2026_10_26","researched_at":"2026-10-26","note":"Direct/local evidence indicates service to Williamson Valley and surrounding Prescott communities."}'::jsonb,now(),now()
)
on conflict(side,market,category_key,source_url,business_name) do update set
 snippet=excluded.snippet,public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,last_verified_at=excluded.last_verified_at,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,source_tier,
 verification_status,last_verified_at,status,query_strategy_version,evidence,first_seen_at,last_seen_at
) values (
 'vendor','Williamson Valley','landscaping','Landscaping & Yard Cleanup','Urban Desert Landscape',
 'https://urbandesertlandscape.com/','urbandesertlandscape.com','Business service-area evidence includes Williamson Valley.','assistant Williamson Valley bootstrap',0,
 null,'928-533-6261',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_williamson_valley_2026_10_26","researched_at":"2026-10-26","note":"Business service-area evidence includes Williamson Valley."}'::jsonb,now(),now()
)
on conflict(side,market,category_key,source_url,business_name) do update set
 snippet=excluded.snippet,public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,last_verified_at=excluded.last_verified_at,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,source_tier,
 verification_status,last_verified_at,status,query_strategy_version,evidence,first_seen_at,last_seen_at
) values (
 'vendor','Williamson Valley','landscaping','Landscaping & Yard Cleanup','Mel''s Outdoor Services',
 'https://business.chinovalley.org/members/member/mel-s-outdoor-services-1490','business.chinovalley.org','Chino Valley Chamber profile explicitly lists Williamson Valley in service area.','assistant Williamson Valley bootstrap',0,
 null,'928-925-5856',false,
 'secondary','corroborated',now(),'discovered',7,
 '{"bootstrap_source":"assistant_williamson_valley_2026_10_26","researched_at":"2026-10-26","note":"Chino Valley Chamber profile explicitly lists Williamson Valley in service area."}'::jsonb,now(),now()
)
on conflict(side,market,category_key,source_url,business_name) do update set
 snippet=excluded.snippet,public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,last_verified_at=excluded.last_verified_at,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,source_tier,
 verification_status,last_verified_at,status,query_strategy_version,evidence,first_seen_at,last_seen_at
) values (
 'vendor','Williamson Valley','residential_cleaning','House Cleaning','His & Hers Housekeeping & Maintenance, LLC',
 'https://hishersmaintenance.jobbersites.com/','hishersmaintenance.jobbersites.com','Direct service page explicitly lists Williamson Valley among service areas.','assistant Williamson Valley bootstrap',0,
 null,'928-910-2512',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_williamson_valley_2026_10_26","researched_at":"2026-10-26","note":"Direct service page explicitly lists Williamson Valley among service areas."}'::jsonb,now(),now()
)
on conflict(side,market,category_key,source_url,business_name) do update set
 snippet=excluded.snippet,public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,last_verified_at=excluded.last_verified_at,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,source_tier,
 verification_status,last_verified_at,status,query_strategy_version,evidence,first_seen_at,last_seen_at
) values (
 'vendor','Williamson Valley','handyman_repairs','Handyman','His & Hers Housekeeping & Maintenance, LLC',
 'https://hishersmaintenance.jobbersites.com/','hishersmaintenance.jobbersites.com','Direct page advertises handyman services and explicitly lists Williamson Valley.','assistant Williamson Valley bootstrap',0,
 null,'928-910-2512',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_williamson_valley_2026_10_26","researched_at":"2026-10-26","note":"Direct page advertises handyman services and explicitly lists Williamson Valley."}'::jsonb,now(),now()
)
on conflict(side,market,category_key,source_url,business_name) do update set
 snippet=excluded.snippet,public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,last_verified_at=excluded.last_verified_at,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,source_tier,
 verification_status,last_verified_at,status,query_strategy_version,evidence,first_seen_at,last_seen_at
) values (
 'vendor','Williamson Valley','str_property_care','Rental Property Care','His & Hers Housekeeping & Maintenance, LLC',
 'https://hishersmaintenance.jobbersites.com/','hishersmaintenance.jobbersites.com','Direct page advertises STR/vacation-rental services and Williamson Valley service.','assistant Williamson Valley bootstrap',0,
 null,'928-910-2512',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_williamson_valley_2026_10_26","researched_at":"2026-10-26","note":"Direct page advertises STR/vacation-rental services and Williamson Valley service."}'::jsonb,now(),now()
)
on conflict(side,market,category_key,source_url,business_name) do update set
 snippet=excluded.snippet,public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,last_verified_at=excluded.last_verified_at,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,source_tier,
 verification_status,last_verified_at,status,query_strategy_version,evidence,first_seen_at,last_seen_at
) values (
 'vendor','Williamson Valley','window_cleaning','Window Cleaning','His & Hers Housekeeping & Maintenance, LLC',
 'https://hishersmaintenance.jobbersites.com/','hishersmaintenance.jobbersites.com','Direct page includes window cleaning and Williamson Valley service.','assistant Williamson Valley bootstrap',0,
 null,'928-910-2512',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_williamson_valley_2026_10_26","researched_at":"2026-10-26","note":"Direct page includes window cleaning and Williamson Valley service."}'::jsonb,now(),now()
)
on conflict(side,market,category_key,source_url,business_name) do update set
 snippet=excluded.snippet,public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,last_verified_at=excluded.last_verified_at,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,source_tier,
 verification_status,last_verified_at,status,query_strategy_version,evidence,first_seen_at,last_seen_at
) values (
 'vendor','Williamson Valley','backflow_plumbing','Backflow & Commercial Plumbing','CreekWell Plumbing & Water Treatment',
 'https://www.creekwellplumbing.com/contact','creekwellplumbing.com','Direct page explicitly lists Williamson Valley, but as of Oct. 5 2026 new work is paused except emergency/warranty while licenses are pending.','assistant Williamson Valley bootstrap',0,
 null,'928-228-5770',true,
 'direct','corroborated_restricted',now(),'discovered',7,
 '{"bootstrap_source":"assistant_williamson_valley_2026_10_26","researched_at":"2026-10-26","note":"Direct page explicitly lists Williamson Valley, but as of Oct. 5 2026 new work is paused except emergency/warranty while licenses are pending."}'::jsonb,now(),now()
)
on conflict(side,market,category_key,source_url,business_name) do update set
 snippet=excluded.snippet,public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,last_verified_at=excluded.last_verified_at,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

