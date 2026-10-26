

-- Assistant-led Skull Valley census batch 01 (2026-10-26)
insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','restaurants','restaurants','The Forge at Skull Valley',
 'https://www.theforgeskullvalley.com/','theforgeskullvalley.com','Current Skull Valley farm store/café and community hub at 2999 S Iron Springs Rd.','assistant census research: Skull Valley restaurants',0,
 'Claire@TheForgeSkullValley.com',null,true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Current Skull Valley farm store/café and community hub at 2999 S Iron Springs Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','restaurants','restaurants','Skull Valley Cafe / Diner',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley café/diner business at 3045 S Iron Springs Rd.','assistant census research: Skull Valley restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley café/diner business at 3045 S Iron Springs Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','retail','retail stores shopping stores','Skull Valley General Store',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley general store at 3030 S Iron Springs Rd.','assistant census research: Skull Valley retail stores shopping stores',0,
 null,'(928) 442-3351',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley general store at 3030 S Iron Springs Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','grocery','grocery stores supermarkets markets','The Forge Farm Store',
 'https://www.theforgeskullvalley.com/','theforgeskullvalley.com','Direct site identifies farm/ranch retail store attached to the café.','assistant census research: Skull Valley grocery stores supermarkets markets',0,
 'Claire@TheForgeSkullValley.com',null,true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site identifies farm/ranch retail store attached to the café."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','retail','retail stores shopping stores','The Stitchin Post at Bullet Ranch',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley craft/retail business at 8235 S Iron Springs Rd.','assistant census research: Skull Valley retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley craft/retail business at 8235 S Iron Springs Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','retail','retail stores shopping stores','Barley Broo Fermentation Supplies',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley specialty retail/supply business.','assistant census research: Skull Valley retail stores shopping stores',0,
 null,'(928) 308-0403',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley specialty retail/supply business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','retail','retail stores shopping stores','Bazzill Corp USA',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley mining equipment/supplies business.','assistant census research: Skull Valley retail stores shopping stores',0,
 null,'(623) 561-7817',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley mining equipment/supplies business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','churches','churches worship centers','Skull Valley Bible Church',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley church facility.','assistant census research: Skull Valley churches worship centers',0,
 null,'(928) 442-9434',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley church facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','churches','churches worship centers','Church of Jesus Christ of LDS',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley church facility.','assistant census research: Skull Valley churches worship centers',0,
 null,'(928) 442-3458',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley church facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','schools','schools charter schools private schools','Skull Valley Elementary School / District 15',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Current rural public PK-8 school and district facility.','assistant census research: Skull Valley schools charter schools private schools',0,
 null,'(928) 442-3322',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current rural public PK-8 school and district facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','public_facilities','government public facilities municipal buildings','Skull Valley Fire Department',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Current Skull Valley fire/public-safety facility at 3065 S Iron Springs Rd.','assistant census research: Skull Valley government public facilities municipal buildings',0,
 null,'(928) 442-3487',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Skull Valley fire/public-safety facility at 3065 S Iron Springs Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','public_facilities','government public facilities municipal buildings','Skull Valley Post Office',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Current federal postal facility at 3085 S Iron Springs Rd.','assistant census research: Skull Valley government public facilities municipal buildings',0,
 null,'(928) 442-3410',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current federal postal facility at 3085 S Iron Springs Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','public_facilities','government public facilities municipal buildings','Skull Valley Cemetery',
 'https://www.city-data.com/business-entities/Other-AZ-S.html','city-data.com','Active Skull Valley cemetery/public-community facility entity.','assistant census research: Skull Valley government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Skull Valley cemetery/public-community facility entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','public_facilities','government public facilities municipal buildings','Yav''Pe Ma''Ta Airport-16AZ',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley private/local airport facility.','assistant census research: Skull Valley government public facilities municipal buildings',0,
 null,'(928) 771-9659',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley private/local airport facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Skull Valley','rural_property','Septic, Grading & Wells','Daryl Ballew Excavating',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley excavation/site-work business.','assistant census research: Skull Valley Septic, Grading & Wells',0,
 null,'(928) 442-3348',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley excavation/site-work business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Skull Valley','rural_property','Septic, Grading & Wells','Skull Valley Excavating',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley excavation/site-work business.','assistant census research: Skull Valley Septic, Grading & Wells',0,
 null,'(928) 442-2326',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley excavation/site-work business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Skull Valley','rural_property','Septic, Grading & Wells','Balow''s Windmill Pump Service & Well Drilling LLC',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley pump, windmill and well-drilling business.','assistant census research: Skull Valley Septic, Grading & Wells',0,
 null,'(928) 442-3240',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley pump, windmill and well-drilling business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Skull Valley','backflow_plumbing','Backflow & Commercial Plumbing','Lueks Plumbing',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley plumbing contractor.','assistant census research: Skull Valley Backflow & Commercial Plumbing',0,
 null,'(928) 442-9803',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley plumbing contractor."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Skull Valley','electrical_service','Electrician','Stubbs Electric',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley electrical contractor.','assistant census research: Skull Valley Electrician',0,
 null,'(928) 633-2100',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley electrical contractor."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Skull Valley','facility_maintenance','Building Maintenance Help','BLH Construction',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley construction contractor.','assistant census research: Skull Valley Building Maintenance Help',0,
 null,'(928) 442-9766',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley construction contractor."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Skull Valley','facility_maintenance','Building Maintenance Help','JJ Logan Construction Inc',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley construction/fencing contractor.','assistant census research: Skull Valley Building Maintenance Help',0,
 null,'(928) 443-1799',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley construction/fencing contractor."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Skull Valley','facility_maintenance','Building Maintenance Help','Westlake Mobile Welding LLC',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley mobile welding/fabrication service.','assistant census research: Skull Valley Building Maintenance Help',0,
 null,'(928) 853-4764',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley mobile welding/fabrication service."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Skull Valley','landscaping','Landscaping & Yard Cleanup','Arbor Art Landscaping & Maintenance',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley landscaping/tree/property-maintenance business.','assistant census research: Skull Valley Landscaping & Yard Cleanup',0,
 null,'(928) 442-2390',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley landscaping/tree/property-maintenance business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Skull Valley','facility_maintenance','Building Maintenance Help','AZ EMS Emergency Maintenance',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley emergency-maintenance business candidate.','assistant census research: Skull Valley Building Maintenance Help',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley emergency-maintenance business candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Skull Valley','backflow_plumbing','Backflow & Commercial Plumbing','Lawhorn Plumbing LLC',
 'https://www.google.com/search?q=Lawhorn+Plumbing+Skull+Valley','google.com','Regional Yavapai County plumber explicitly lists Skull Valley in service area.','assistant census research: Skull Valley Backflow & Commercial Plumbing',0,
 null,'(928) 529-7778',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Regional Yavapai County plumber explicitly lists Skull Valley in service area."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Skull Valley','hvac_heat','Heating & Air','Phillips Heating & Cooling, Inc.',
 'https://www.google.com/search?q=Phillips+Heating+Cooling+Skull+Valley','google.com','Regional Yavapai HVAC vendor serving surrounding rural communities; Skull Valley service candidate.','assistant census research: Skull Valley Heating & Air',0,
 null,'(928) 445-0282',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Regional Yavapai HVAC vendor serving surrounding rural communities; Skull Valley service candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','warehouses_industrial','warehouses industrial businesses distribution centers','L Bell Ranch',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley ranch/farm/agriculture business.','assistant census research: Skull Valley warehouses industrial businesses distribution centers',0,
 null,'(928) 442-3353',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley ranch/farm/agriculture business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','warehouses_industrial','warehouses industrial businesses distribution centers','Balow Dale Cattle Co',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley ranch/farm/agriculture business.','assistant census research: Skull Valley warehouses industrial businesses distribution centers',0,
 null,'(928) 442-3240',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley ranch/farm/agriculture business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','warehouses_industrial','warehouses industrial businesses distribution centers','A-Bar-V Ranch',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley ranch/farm/agriculture business.','assistant census research: Skull Valley warehouses industrial businesses distribution centers',0,
 null,'(928) 442-3226',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley ranch/farm/agriculture business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','warehouses_industrial','warehouses industrial businesses distribution centers','Three C Ranch',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley ranch/farm/agriculture business.','assistant census research: Skull Valley warehouses industrial businesses distribution centers',0,
 null,'(928) 442-3478',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley ranch/farm/agriculture business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','warehouses_industrial','warehouses industrial businesses distribution centers','Oasis Ranch',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley ranch/farm/agriculture business.','assistant census research: Skull Valley warehouses industrial businesses distribution centers',0,
 null,'(928) 442-9559',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley ranch/farm/agriculture business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','warehouses_industrial','warehouses industrial businesses distribution centers','Balow Farms',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley ranch/farm/agriculture business.','assistant census research: Skull Valley warehouses industrial businesses distribution centers',0,
 null,'(928) 642-3584',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley ranch/farm/agriculture business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','warehouses_industrial','warehouses industrial businesses distribution centers','Balow Farms Hay Sales',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley ranch/farm/agriculture business.','assistant census research: Skull Valley warehouses industrial businesses distribution centers',0,
 null,'(928) 442-9064',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley ranch/farm/agriculture business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','warehouses_industrial','warehouses industrial businesses distribution centers','Shadow Valley Farms LLC',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley ranch/farm/agriculture business.','assistant census research: Skull Valley warehouses industrial businesses distribution centers',0,
 null,'(928) 443-9380',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley ranch/farm/agriculture business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','warehouses_industrial','warehouses industrial businesses distribution centers','Skull Valley Lavender Farm',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley ranch/farm/agriculture business.','assistant census research: Skull Valley warehouses industrial businesses distribution centers',0,
 null,'(928) 442-3817',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley ranch/farm/agriculture business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','warehouses_industrial','warehouses industrial businesses distribution centers','Bullet Ranch',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley ranch/farm/agriculture business.','assistant census research: Skull Valley warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley ranch/farm/agriculture business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','warehouses_industrial','warehouses industrial businesses distribution centers','Quarter Circle JT Inc',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley ranch/farm/agriculture business.','assistant census research: Skull Valley warehouses industrial businesses distribution centers',0,
 null,'(928) 442-3138',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley ranch/farm/agriculture business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','warehouses_industrial','warehouses industrial businesses distribution centers','RB Paradise Ranch LLC',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley ranch/farm/agriculture business.','assistant census research: Skull Valley warehouses industrial businesses distribution centers',0,
 null,'(928) 830-2917',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley ranch/farm/agriculture business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','warehouses_industrial','warehouses industrial businesses distribution centers','T H E Ranch',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley ranch/farm/agriculture business.','assistant census research: Skull Valley warehouses industrial businesses distribution centers',0,
 null,'(928) 899-5088',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley ranch/farm/agriculture business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','warehouses_industrial','warehouses industrial businesses distribution centers','Bar U Bar Ranch',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley ranch/farm/agriculture business.','assistant census research: Skull Valley warehouses industrial businesses distribution centers',0,
 null,'(928) 442-3290',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley ranch/farm/agriculture business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','warehouses_industrial','warehouses industrial businesses distribution centers','Tonto Mountain Cattle',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley ranch/farm/agriculture business.','assistant census research: Skull Valley warehouses industrial businesses distribution centers',0,
 null,'(928) 442-3843',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley ranch/farm/agriculture business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','warehouses_industrial','warehouses industrial businesses distribution centers','Sterling Ranch Inc',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley ranch/farm/agriculture business.','assistant census research: Skull Valley warehouses industrial businesses distribution centers',0,
 null,'(928) 442-3289',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley ranch/farm/agriculture business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','warehouses_industrial','warehouses industrial businesses distribution centers','Juniper Well Ranch',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley ranch/farm/agriculture business.','assistant census research: Skull Valley warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley ranch/farm/agriculture business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','warehouses_industrial','warehouses industrial businesses distribution centers','Skull Valley Farms, LLC',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley ranch/farm/agriculture business.','assistant census research: Skull Valley warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley ranch/farm/agriculture business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','warehouses_industrial','warehouses industrial businesses distribution centers','Skull Valley 1916, LLC',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley ranch/farm/agriculture business.','assistant census research: Skull Valley warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley ranch/farm/agriculture business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','general_business','other local businesses','Nature West Inc',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley local business/creative/service operation.','assistant census research: Skull Valley other local businesses',0,
 null,'(928) 636-0200',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley local business/creative/service operation."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','general_business','other local businesses','Arizona Desert Art Development',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley local business/creative/service operation.','assistant census research: Skull Valley other local businesses',0,
 null,'(928) 442-3817',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley local business/creative/service operation."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','general_business','other local businesses','Lazy K Productions',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley local business/creative/service operation.','assistant census research: Skull Valley other local businesses',0,
 null,'(928) 460-0840',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley local business/creative/service operation."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','general_business','other local businesses','SV Maritime',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley local business/creative/service operation.','assistant census research: Skull Valley other local businesses',0,
 null,'(928) 442-9264',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley local business/creative/service operation."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','general_business','other local businesses','Tonto Mountain Mules',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley local business/creative/service operation.','assistant census research: Skull Valley other local businesses',0,
 null,'(928) 442-3843',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley local business/creative/service operation."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','general_business','other local businesses','Harp for Hire',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley local business/creative/service operation.','assistant census research: Skull Valley other local businesses',0,
 null,'(928) 899-6496',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley local business/creative/service operation."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','general_business','other local businesses','Skull Valley Service',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley service-station/local business at 5899 Iron Springs Rd.','assistant census research: Skull Valley other local businesses',0,
 null,'(928) 442-3446',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley service-station/local business at 5899 Iron Springs Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','general_business','other local businesses','Skull Valley Gas LLC',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley fuel/gas business.','assistant census research: Skull Valley other local businesses',0,
 null,'(928) 442-9228',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley fuel/gas business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','general_business','other local businesses','Straight Arrow Stables',
 'https://www.whereorg.com/skull-valley-az','whereorg.com','Skull Valley stable/equine business.','assistant census research: Skull Valley other local businesses',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Skull Valley stable/equine business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','general_business','other local businesses','Skull Valley Spirits Distillery, LLC',
 'https://www.city-data.com/business-entities/Other-AZ-S.html','city-data.com','Active Skull Valley distillery business entity at 2770 Old Skull Valley Rd.','assistant census research: Skull Valley other local businesses',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Skull Valley distillery business entity at 2770 Old Skull Valley Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','property_management','property management companies apartment communities','Skull Valley Realty, LLC',
 'https://www.city-data.com/business-entities/Other-AZ-S.html','city-data.com','Active Skull Valley real-estate entity.','assistant census research: Skull Valley property management companies apartment communities',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Skull Valley real-estate entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','property_management','property management companies apartment communities','Skull Valley Park, LLC',
 'https://www.city-data.com/business-entities/Other-AZ-S.html','city-data.com','Active Skull Valley property/park entity.','assistant census research: Skull Valley property management companies apartment communities',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Skull Valley property/park entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Skull Valley','theaters_entertainment','theaters cinemas entertainment venues','Skull Valley Station / The Forge',
 'https://www.theforgeskullvalley.com/','theforgeskullvalley.com','Historic restored service-station café/farm store functioning as local destination and community venue.','assistant census research: Skull Valley theaters cinemas entertainment venues',0,
 'Claire@TheForgeSkullValley.com',null,true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_skull_valley_batch_01","researched_at":"2026-10-27T01:27:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Historic restored service-station café/farm store functioning as local destination and community venue."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

update market_inventory_progress p set official_candidates=(
 select count(*) from market_inventory_candidates c where c.side=p.side and c.market=p.market
 and c.category_key=p.category_key and c.status='discovered' and c.query_strategy_version=7 and c.official_site=true
),updated_at=now() where p.market='Skull Valley';
