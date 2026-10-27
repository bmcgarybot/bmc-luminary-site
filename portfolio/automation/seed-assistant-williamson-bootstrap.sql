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



-- Assistant-led Williamson Valley rural corridor census batch 02 (2026-10-26)
insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,source_tier,
 verification_status,last_verified_at,status,query_strategy_version,evidence,first_seen_at,last_seen_at
) values (
 'vendor','Williamson Valley','facility_maintenance','Building Maintenance Help','Wilson Works LLC',
 'https://wilsonworksllc.org/services','wilsonworksllc.org','Direct company site explicitly lists Williamson Valley in service area; licensed general contractor ROC 365539 specializing in decks, outdoor structures, repairs, fences and related building work.','assistant Williamson Valley rural census',0,
 'tm.wilsonworks@gmail.com','(928) 458-6602',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_williamson_valley_2026_10_26_batch_02","researched_at":"2026-10-27T01:45:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct company site explicitly lists Williamson Valley in service area; licensed general contractor ROC 365539 specializing in decks, outdoor structures, repairs, fences and related building work."}'::jsonb,now(),now()
)
on conflict(side,market,category_key,source_url,business_name) do update set
 snippet=excluded.snippet,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,source_tier,
 verification_status,last_verified_at,status,query_strategy_version,evidence,first_seen_at,last_seen_at
) values (
 'buyer','Williamson Valley','property_management','property management companies apartment communities','Williamson Valley Ranch Road Association',
 'https://www.wvrra.org/','wvrra.org','Direct active 2026 association site for Williamson Valley Ranch; governing body maintains community roadways and easements and posts current 2026 meetings/disclosure materials.','assistant Williamson Valley rural census',0,
 null,null,true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_williamson_valley_2026_10_26_batch_02","researched_at":"2026-10-27T01:45:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct active 2026 association site for Williamson Valley Ranch; governing body maintains community roadways and easements and posts current 2026 meetings/disclosure materials."}'::jsonb,now(),now()
)
on conflict(side,market,category_key,source_url,business_name) do update set
 snippet=excluded.snippet,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,source_tier,
 verification_status,last_verified_at,status,query_strategy_version,evidence,first_seen_at,last_seen_at
) values (
 'buyer','Williamson Valley','property_management','property management companies apartment communities','The American Ranch Community Association',
 'https://americanranchprescott.com/','americanranchprescott.com','Direct 2026 American Ranch association site for the Williamson Valley equestrian community at 9500 N American Ranch Rd.','assistant Williamson Valley rural census',0,
 'info@hoamco.com','(928) 543-9336',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_williamson_valley_2026_10_26_batch_02","researched_at":"2026-10-27T01:45:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct 2026 American Ranch association site for the Williamson Valley equestrian community at 9500 N American Ranch Rd."}'::jsonb,now(),now()
)
on conflict(side,market,category_key,source_url,business_name) do update set
 snippet=excluded.snippet,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,source_tier,
 verification_status,last_verified_at,status,query_strategy_version,evidence,first_seen_at,last_seen_at
) values (
 'buyer','Williamson Valley','property_management','property management companies apartment communities','Whispering Canyon',
 'https://whisperingcanyon.com/','whisperingcanyon.com','Direct active planned-community/developer site at N Williamson Valley Rd; 400-parcel development with paved roads, water, sewer, open space and active sales office.','assistant Williamson Valley rural census',0,
 null,'(928) 710-0148',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_williamson_valley_2026_10_26_batch_02","researched_at":"2026-10-27T01:45:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct active planned-community/developer site at N Williamson Valley Rd; 400-parcel development with paved roads, water, sewer, open space and active sales office."}'::jsonb,now(),now()
)
on conflict(side,market,category_key,source_url,business_name) do update set
 snippet=excluded.snippet,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,source_tier,
 verification_status,last_verified_at,status,query_strategy_version,evidence,first_seen_at,last_seen_at
) values (
 'buyer','Williamson Valley','property_management','property management companies apartment communities','Whispering Canyon Development Community Association, Inc.',
 'https://azhoawatch.org/whispering-canyon-development-community-association-inc/','azhoawatch.org','Current 2026 AZCC-derived HOA record shows active/in-good-standing Williamson Valley-area homeowners association with management company and 2026 annual filing.','assistant Williamson Valley rural census',0,
 null,null,false,
 'secondary','corroborated',now(),'discovered',7,'{"bootstrap_source":"assistant_williamson_valley_2026_10_26_batch_02","researched_at":"2026-10-27T01:45:00Z","source_quality":"corroborated_registry_or_hoa_evidence","verification_status":"corroborated","note":"Current 2026 AZCC-derived HOA record shows active/in-good-standing Williamson Valley-area homeowners association with management company and 2026 annual filing."}'::jsonb,now(),now()
)
on conflict(side,market,category_key,source_url,business_name) do update set
 snippet=excluded.snippet,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,source_tier,
 verification_status,last_verified_at,status,query_strategy_version,evidence,first_seen_at,last_seen_at
) values (
 'buyer','Williamson Valley','general_business','other local businesses','Granite Mountain Stables',
 'https://granitemountainstables.net/welcome/','granitemountainstables.net','Direct site describes a 10-acre working ranch/stable in the Williamson Valley horse community with boarding, arena, turnouts, training and hay sales.','assistant Williamson Valley rural census',0,
 'info@granitemountainstables.net','(928) 445-4212',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_williamson_valley_2026_10_26_batch_02","researched_at":"2026-10-27T01:45:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site describes a 10-acre working ranch/stable in the Williamson Valley horse community with boarding, arena, turnouts, training and hay sales."}'::jsonb,now(),now()
)
on conflict(side,market,category_key,source_url,business_name) do update set
 snippet=excluded.snippet,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,source_tier,
 verification_status,last_verified_at,status,query_strategy_version,evidence,first_seen_at,last_seen_at
) values (
 'buyer','Williamson Valley','restaurants','restaurants','Chubby Chuck''s Subs',
 'https://nextdoor.com/pages/chubby-chucks-subs-prescott-az/','nextdoor.com','Public current local-business page places sandwich restaurant at 4155 Outer Loop Rd in Williamson Valley, co-located with Old Stage Stop.','assistant Williamson Valley rural census',0,
 null,'(928) 445-7699',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_williamson_valley_2026_10_26_batch_02","researched_at":"2026-10-27T01:45:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Public current local-business page places sandwich restaurant at 4155 Outer Loop Rd in Williamson Valley, co-located with Old Stage Stop."}'::jsonb,now(),now()
)
on conflict(side,market,category_key,source_url,business_name) do update set
 snippet=excluded.snippet,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,source_tier,
 verification_status,last_verified_at,status,query_strategy_version,evidence,first_seen_at,last_seen_at
) values (
 'buyer','Williamson Valley','hotels_motels','hotels motels lodging','Halstead House Vacation Rentals',
 'https://www.halsteadhospitality.com/','halsteadhospitality.com','Direct lodging operator site states it currently offers four vacation-rental accommodations in scenic Williamson Valley, including horse-friendly stays.','assistant Williamson Valley rural census',0,
 null,null,true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_williamson_valley_2026_10_26_batch_02","researched_at":"2026-10-27T01:45:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct lodging operator site states it currently offers four vacation-rental accommodations in scenic Williamson Valley, including horse-friendly stays."}'::jsonb,now(),now()
)
on conflict(side,market,category_key,source_url,business_name) do update set
 snippet=excluded.snippet,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,source_tier,
 verification_status,last_verified_at,status,query_strategy_version,evidence,first_seen_at,last_seen_at
) values (
 'buyer','Williamson Valley','property_management','property management companies apartment communities','Ag Lands Southwest LLC',
 'https://services.azre.gov/PdbWeb/EntityLicense/ViewEntityLicense/36334','services.azre.gov','Official Arizona Department of Real Estate record shows active real-estate LLC through 12/31/2026 at 9400 W Middle Place, Prescott 86305; farm/ranch brokerage is also listed by Prescott Area Association of REALTORS.','assistant Williamson Valley rural census',0,
 null,'(928) 830-9127',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_williamson_valley_2026_10_26_batch_02","researched_at":"2026-10-27T01:45:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official Arizona Department of Real Estate record shows active real-estate LLC through 12/31/2026 at 9400 W Middle Place, Prescott 86305; farm/ranch brokerage is also listed by Prescott Area Association of REALTORS."}'::jsonb,now(),now()
)
on conflict(side,market,category_key,source_url,business_name) do update set
 snippet=excluded.snippet,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,source_tier,
 verification_status,last_verified_at,status,query_strategy_version,evidence,first_seen_at,last_seen_at
) values (
 'vendor','Williamson Valley','facility_maintenance','Building Maintenance Help','Father Daughter Construction LLC',
 'https://www.uscorpdirectory.com/az/prescott/father-daughter-construction-llc','uscorpdirectory.com','ACC-derived active entity record updated 9/3/2026; principal address 7625 N Williamson Valley Rd and business type residential remodelers.','assistant Williamson Valley rural census',0,
 null,null,false,
 'secondary','corroborated',now(),'discovered',7,'{"bootstrap_source":"assistant_williamson_valley_2026_10_26_batch_02","researched_at":"2026-10-27T01:45:00Z","source_quality":"corroborated_registry_or_hoa_evidence","verification_status":"corroborated","note":"ACC-derived active entity record updated 9/3/2026; principal address 7625 N Williamson Valley Rd and business type residential remodelers."}'::jsonb,now(),now()
)
on conflict(side,market,category_key,source_url,business_name) do update set
 snippet=excluded.snippet,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,source_tier,
 verification_status,last_verified_at,status,query_strategy_version,evidence,first_seen_at,last_seen_at
) values (
 'buyer','Williamson Valley','property_management','property management companies apartment communities','Zeller Investment & Development Group, LLC',
 'https://www.uscorpdirectory.com/az/prescott/zeller-investment-development-group','uscorpdirectory.com','ACC-derived active/in-good-standing entity with principal address 5575 N Williamson Valley Road; investment/development company.','assistant Williamson Valley rural census',0,
 null,null,false,
 'secondary','corroborated',now(),'discovered',7,'{"bootstrap_source":"assistant_williamson_valley_2026_10_26_batch_02","researched_at":"2026-10-27T01:45:00Z","source_quality":"corroborated_registry_or_hoa_evidence","verification_status":"corroborated","note":"ACC-derived active/in-good-standing entity with principal address 5575 N Williamson Valley Road; investment/development company."}'::jsonb,now(),now()
)
on conflict(side,market,category_key,source_url,business_name) do update set
 snippet=excluded.snippet,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,source_tier,
 verification_status,last_verified_at,status,query_strategy_version,evidence,first_seen_at,last_seen_at
) values (
 'buyer','Williamson Valley','property_management','property management companies apartment communities','Scenic Boulders LLC',
 'https://www.uscorpdirectory.com/az/prescott/scenic-boulders-llc','uscorpdirectory.com','ACC-derived active entity updated 9/23/2026 at 7625 N Williamson Valley Rd; business type is other activities related to real estate.','assistant Williamson Valley rural census',0,
 null,null,false,
 'secondary','corroborated',now(),'discovered',7,'{"bootstrap_source":"assistant_williamson_valley_2026_10_26_batch_02","researched_at":"2026-10-27T01:45:00Z","source_quality":"corroborated_registry_or_hoa_evidence","verification_status":"corroborated","note":"ACC-derived active entity updated 9/23/2026 at 7625 N Williamson Valley Rd; business type is other activities related to real estate."}'::jsonb,now(),now()
)
on conflict(side,market,category_key,source_url,business_name) do update set
 snippet=excluded.snippet,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,source_tier,
 verification_status,last_verified_at,status,query_strategy_version,evidence,first_seen_at,last_seen_at
) values (
 'buyer','Williamson Valley','general_business','other local businesses','Running Turtle Productions LLC',
 'https://www.uscorpdirectory.com/az/prescott/running-turtle-productions-llc','uscorpdirectory.com','ACC-derived active/in-good-standing arts, entertainment and recreation company with principal address 5640 N Williamson Valley Rd; direct business site also remains active.','assistant Williamson Valley rural census',0,
 'runningturtleclub@gmail.com',null,false,
 'secondary','corroborated',now(),'discovered',7,'{"bootstrap_source":"assistant_williamson_valley_2026_10_26_batch_02","researched_at":"2026-10-27T01:45:00Z","source_quality":"corroborated_registry_or_hoa_evidence","verification_status":"corroborated","note":"ACC-derived active/in-good-standing arts, entertainment and recreation company with principal address 5640 N Williamson Valley Rd; direct business site also remains active."}'::jsonb,now(),now()
)
on conflict(side,market,category_key,source_url,business_name) do update set
 snippet=excluded.snippet,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,source_tier,
 verification_status,last_verified_at,status,query_strategy_version,evidence,first_seen_at,last_seen_at
) values (
 'buyer','Williamson Valley','general_business','other local businesses','Welcome To Prescott Projects LLC',
 'https://www.uscorpdirectory.com/az/prescott/welcome-to-prescott-projects','uscorpdirectory.com','ACC-derived active entity updated 9/3/2026 with principal address 5640 N Williamson Valley Rd.','assistant Williamson Valley rural census',0,
 null,null,false,
 'secondary','corroborated',now(),'discovered',7,'{"bootstrap_source":"assistant_williamson_valley_2026_10_26_batch_02","researched_at":"2026-10-27T01:45:00Z","source_quality":"corroborated_registry_or_hoa_evidence","verification_status":"corroborated","note":"ACC-derived active entity updated 9/3/2026 with principal address 5640 N Williamson Valley Rd."}'::jsonb,now(),now()
)
on conflict(side,market,category_key,source_url,business_name) do update set
 snippet=excluded.snippet,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,source_tier,
 verification_status,last_verified_at,status,query_strategy_version,evidence,first_seen_at,last_seen_at
) values (
 'buyer','Williamson Valley','general_business','other local businesses','High Desert Hoof Trimming LLC',
 'https://www.uscorpdirectory.com/az/prescott/40','uscorpdirectory.com','ACC-derived current Prescott directory lists active LLC at 5575 N Williamson Valley Rd; equestrian-service business candidate requiring direct operating-site verification.','assistant Williamson Valley rural census',0,
 null,null,false,
 'secondary','corroborated',now(),'discovered',7,'{"bootstrap_source":"assistant_williamson_valley_2026_10_26_batch_02","researched_at":"2026-10-27T01:45:00Z","source_quality":"corroborated_registry_or_hoa_evidence","verification_status":"corroborated","note":"ACC-derived current Prescott directory lists active LLC at 5575 N Williamson Valley Rd; equestrian-service business candidate requiring direct operating-site verification."}'::jsonb,now(),now()
)
on conflict(side,market,category_key,source_url,business_name) do update set
 snippet=excluded.snippet,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,source_tier,
 verification_status,last_verified_at,status,query_strategy_version,evidence,first_seen_at,last_seen_at
) values (
 'buyer','Williamson Valley','general_business','other local businesses','Next Gen Modern Living LLC',
 'https://www.uscorpdirectory.com/2025-04-21','uscorpdirectory.com','ACC-derived active entity filed 4/21/2025 with principal address 7625 N Williamson Valley Rd; operating scope still requires direct verification.','assistant Williamson Valley rural census',0,
 null,null,false,
 'secondary','corroborated',now(),'discovered',7,'{"bootstrap_source":"assistant_williamson_valley_2026_10_26_batch_02","researched_at":"2026-10-27T01:45:00Z","source_quality":"corroborated_registry_or_hoa_evidence","verification_status":"corroborated","note":"ACC-derived active entity filed 4/21/2025 with principal address 7625 N Williamson Valley Rd; operating scope still requires direct verification."}'::jsonb,now(),now()
)
on conflict(side,market,category_key,source_url,business_name) do update set
 snippet=excluded.snippet,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,source_tier,
 verification_status,last_verified_at,status,query_strategy_version,evidence,first_seen_at,last_seen_at
) values (
 'buyer','Williamson Valley','general_business','other local businesses','Steidinger Legacy Investments LLC',
 'https://www.uscorpdirectory.com/az/prescott/steidinger-legacy-investments-llc','uscorpdirectory.com','ACC-derived active/in-good-standing entity at 7625 N Williamson Valley Rd; current corporate/property investment candidate.','assistant Williamson Valley rural census',0,
 null,null,false,
 'secondary','corroborated',now(),'discovered',7,'{"bootstrap_source":"assistant_williamson_valley_2026_10_26_batch_02","researched_at":"2026-10-27T01:45:00Z","source_quality":"corroborated_registry_or_hoa_evidence","verification_status":"corroborated","note":"ACC-derived active/in-good-standing entity at 7625 N Williamson Valley Rd; current corporate/property investment candidate."}'::jsonb,now(),now()
)
on conflict(side,market,category_key,source_url,business_name) do update set
 snippet=excluded.snippet,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,source_tier,
 verification_status,last_verified_at,status,query_strategy_version,evidence,first_seen_at,last_seen_at
) values (
 'buyer','Williamson Valley','general_business','other local businesses','Trinity Legacy Investments LLC',
 'https://www.uscorpdirectory.com/az/prescott/trinity-legacy-investments-llc','uscorpdirectory.com','ACC-derived active/in-good-standing entity at 7625 N Williamson Valley Rd; current corporate/property investment candidate.','assistant Williamson Valley rural census',0,
 null,null,false,
 'secondary','corroborated',now(),'discovered',7,'{"bootstrap_source":"assistant_williamson_valley_2026_10_26_batch_02","researched_at":"2026-10-27T01:45:00Z","source_quality":"corroborated_registry_or_hoa_evidence","verification_status":"corroborated","note":"ACC-derived active/in-good-standing entity at 7625 N Williamson Valley Rd; current corporate/property investment candidate."}'::jsonb,now(),now()
)
on conflict(side,market,category_key,source_url,business_name) do update set
 snippet=excluded.snippet,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,source_tier,
 verification_status,last_verified_at,status,query_strategy_version,evidence,first_seen_at,last_seen_at
) values (
 'buyer','Williamson Valley','hotels_motels','hotels motels lodging','Williamson Valley Casita',
 'https://bearcreekpmg.managebuilding.com/Resident/Public/Rentals','bearcreekpmg.managebuilding.com','Current Bear Creek property-management rental inventory identifies the Williamson Valley Casita at 5687 W Indian Camp Rd as an active vacation rental.','assistant Williamson Valley rural census',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_williamson_valley_2026_10_26_batch_02","researched_at":"2026-10-27T01:45:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Bear Creek property-management rental inventory identifies the Williamson Valley Casita at 5687 W Indian Camp Rd as an active vacation rental."}'::jsonb,now(),now()
)
on conflict(side,market,category_key,source_url,business_name) do update set
 snippet=excluded.snippet,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

update market_inventory_progress p
set official_candidates=(
 select count(*) from market_inventory_candidates c
 where c.side=p.side and c.market=p.market and c.category_key=p.category_key
   and c.status='discovered' and c.query_strategy_version=7 and c.official_site=true
),updated_at=now()
where p.market='Williamson Valley';
