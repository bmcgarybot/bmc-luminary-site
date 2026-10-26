

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


-- Assistant-led Prescott buyer/facility census batch 01 (2026-10-26)
insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','restaurants','restaurants','Augie’s',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott business listing; verified open by current local directory.','assistant census research: Prescott restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott business listing; verified open by current local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','restaurants','restaurants','b. simple',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott business listing; verified open by current local directory.','assistant census research: Prescott restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott business listing; verified open by current local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','restaurants','restaurants','The Barley Hound',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott business listing; verified open by current local directory.','assistant census research: Prescott restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott business listing; verified open by current local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','restaurants','restaurants','The Burke at Hotel St. Michael',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott business listing; verified open by current local directory.','assistant census research: Prescott restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott business listing; verified open by current local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','restaurants','restaurants','Casa Sanchez Restaurant',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott business listing; verified open by current local directory.','assistant census research: Prescott restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott business listing; verified open by current local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','restaurants','restaurants','The Century Lounge',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott business listing; verified open by current local directory.','assistant census research: Prescott restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott business listing; verified open by current local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','restaurants','restaurants','Cocky’s Chicken & Brew',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott business listing; verified open by current local directory.','assistant census research: Prescott restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott business listing; verified open by current local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','restaurants','restaurants','Cowboy Kitchen',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott business listing; verified open by current local directory.','assistant census research: Prescott restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott business listing; verified open by current local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','restaurants','restaurants','El Gato Azul',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott business listing; verified open by current local directory.','assistant census research: Prescott restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott business listing; verified open by current local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','restaurants','restaurants','FARM Provisions',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott business listing; verified open by current local directory.','assistant census research: Prescott restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott business listing; verified open by current local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','restaurants','restaurants','The Final Score',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott business listing; verified open by current local directory.','assistant census research: Prescott restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott business listing; verified open by current local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','restaurants','restaurants','Founding Fathers Collective',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott business listing; verified open by current local directory.','assistant census research: Prescott restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott business listing; verified open by current local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','restaurants','restaurants','Granite Mountain Distillery',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott business listing; verified open by current local directory.','assistant census research: Prescott restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott business listing; verified open by current local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','restaurants','restaurants','Jersey Lilly Saloon',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott business listing; verified open by current local directory.','assistant census research: Prescott restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott business listing; verified open by current local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','restaurants','restaurants','La Planchada',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott business listing; verified open by current local directory.','assistant census research: Prescott restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott business listing; verified open by current local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','restaurants','restaurants','LazyG Brewhouse',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott business listing; verified open by current local directory.','assistant census research: Prescott restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott business listing; verified open by current local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','restaurants','restaurants','Milo’s',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott business listing; verified open by current local directory.','assistant census research: Prescott restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott business listing; verified open by current local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','restaurants','restaurants','Modern Agave',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott business listing; verified open by current local directory.','assistant census research: Prescott restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott business listing; verified open by current local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','restaurants','restaurants','Murphy’s Restaurant',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott business listing; verified open by current local directory.','assistant census research: Prescott restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott business listing; verified open by current local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','restaurants','restaurants','Outlaw Donuts',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott business listing; verified open by current local directory.','assistant census research: Prescott restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott business listing; verified open by current local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','restaurants','restaurants','The Palace Restaurant and Saloon',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott business listing; verified open by current local directory.','assistant census research: Prescott restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott business listing; verified open by current local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','restaurants','restaurants','Park Plaza Liquor & Deli',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott business listing; verified open by current local directory.','assistant census research: Prescott restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott business listing; verified open by current local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','restaurants','restaurants','Prescott Junction',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott business listing; verified open by current local directory.','assistant census research: Prescott restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott business listing; verified open by current local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','restaurants','restaurants','Prescott Public House',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott business listing; verified open by current local directory.','assistant census research: Prescott restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott business listing; verified open by current local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','restaurants','restaurants','The Raven Cafe',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott business listing; verified open by current local directory.','assistant census research: Prescott restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott business listing; verified open by current local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','restaurants','restaurants','Red, White & Brew',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott business listing; verified open by current local directory.','assistant census research: Prescott restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott business listing; verified open by current local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','restaurants','restaurants','Superstition Meadery',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott business listing; verified open by current local directory.','assistant census research: Prescott restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott business listing; verified open by current local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','restaurants','restaurants','Wild Iris Coffeehouse',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott business listing; verified open by current local directory.','assistant census research: Prescott restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott business listing; verified open by current local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','restaurants','restaurants','Zeke’s Eatin’ Place',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott business listing; verified open by current local directory.','assistant census research: Prescott restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott business listing; verified open by current local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','restaurants','restaurants','Camp Grounds Tea and Coffee',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott business listing; verified open by current local directory.','assistant census research: Prescott restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott business listing; verified open by current local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','restaurants','restaurants','Merchant Coffee',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott business listing; verified open by current local directory.','assistant census research: Prescott restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott business listing; verified open by current local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','restaurants','restaurants','Method Coffee',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott business listing; verified open by current local directory.','assistant census research: Prescott restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott business listing; verified open by current local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','restaurants','restaurants','The Porch',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott business listing; verified open by current local directory.','assistant census research: Prescott restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott business listing; verified open by current local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','restaurants','restaurants','Thumb Butte Coffee Company',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott business listing; verified open by current local directory.','assistant census research: Prescott restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott business listing; verified open by current local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','restaurants','restaurants','Torme',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott business listing; verified open by current local directory.','assistant census research: Prescott restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott business listing; verified open by current local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','restaurants','restaurants','Two Mamas Pizza',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott business listing; verified open by current local directory.','assistant census research: Prescott restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott business listing; verified open by current local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','restaurants','restaurants','Papa''s Italian Restaurant',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott business listing; verified open by current local directory.','assistant census research: Prescott restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott business listing; verified open by current local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','restaurants','restaurants','Vino',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott business listing; verified open by current local directory.','assistant census research: Prescott restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott business listing; verified open by current local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','hotels_motels','hotels motels lodging','Forest Villas Hotel',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott lodging facility from current local/Chamber business sources.','assistant census research: Prescott hotels motels lodging',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott lodging facility from current local/Chamber business sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','hotels_motels','hotels motels lodging','Hassayampa Inn & Conference Center',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott lodging facility from current local/Chamber business sources.','assistant census research: Prescott hotels motels lodging',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott lodging facility from current local/Chamber business sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','hotels_motels','hotels motels lodging','Hotel St. Michael',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott lodging facility from current local/Chamber business sources.','assistant census research: Prescott hotels motels lodging',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott lodging facility from current local/Chamber business sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','hotels_motels','hotels motels lodging','Hotel Vendome',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott lodging facility from current local/Chamber business sources.','assistant census research: Prescott hotels motels lodging',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott lodging facility from current local/Chamber business sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','hotels_motels','hotels motels lodging','The Motor Lodge',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott lodging facility from current local/Chamber business sources.','assistant census research: Prescott hotels motels lodging',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott lodging facility from current local/Chamber business sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','hotels_motels','hotels motels lodging','Prescott Pines Inn',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott lodging facility from current local/Chamber business sources.','assistant census research: Prescott hotels motels lodging',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott lodging facility from current local/Chamber business sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','hotels_motels','hotels motels lodging','Prescott Resort and Conference Center',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott lodging facility from current local/Chamber business sources.','assistant census research: Prescott hotels motels lodging',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott lodging facility from current local/Chamber business sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','hotels_motels','hotels motels lodging','Air Village',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott lodging facility from current local/Chamber business sources.','assistant census research: Prescott hotels motels lodging',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott lodging facility from current local/Chamber business sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','hotels_motels','hotels motels lodging','Apple Creek Cottages',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott lodging facility from current local/Chamber business sources.','assistant census research: Prescott hotels motels lodging',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott lodging facility from current local/Chamber business sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','hotels_motels','hotels motels lodging','SpringHill Suites by Marriott Prescott',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott lodging facility from current local/Chamber business sources.','assistant census research: Prescott hotels motels lodging',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott lodging facility from current local/Chamber business sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','hotels_motels','hotels motels lodging','Hilton Garden Inn Prescott Downtown',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott lodging facility from current local/Chamber business sources.','assistant census research: Prescott hotels motels lodging',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott lodging facility from current local/Chamber business sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','hotels_motels','hotels motels lodging','Motel 6 Prescott, LLC',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott lodging facility from current local/Chamber business sources.','assistant census research: Prescott hotels motels lodging',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott lodging facility from current local/Chamber business sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','retail','retail stores shopping stores','Bashford Courts',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott retail/shopping business from locally checked or Chamber sources.','assistant census research: Prescott retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott retail/shopping business from locally checked or Chamber sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','retail','retail stores shopping stores','Black Arrow Jewelry & Art',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott retail/shopping business from locally checked or Chamber sources.','assistant census research: Prescott retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott retail/shopping business from locally checked or Chamber sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','retail','retail stores shopping stores','Clothes Hound Clothing Company',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott retail/shopping business from locally checked or Chamber sources.','assistant census research: Prescott retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott retail/shopping business from locally checked or Chamber sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','retail','retail stores shopping stores','Cortez Street Emporium',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott retail/shopping business from locally checked or Chamber sources.','assistant census research: Prescott retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott retail/shopping business from locally checked or Chamber sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','retail','retail stores shopping stores','Cowboy Corner',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott retail/shopping business from locally checked or Chamber sources.','assistant census research: Prescott retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott retail/shopping business from locally checked or Chamber sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','retail','retail stores shopping stores','Drawn West',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott retail/shopping business from locally checked or Chamber sources.','assistant census research: Prescott retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott retail/shopping business from locally checked or Chamber sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','retail','retail stores shopping stores','Fancy That!',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott retail/shopping business from locally checked or Chamber sources.','assistant census research: Prescott retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott retail/shopping business from locally checked or Chamber sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','retail','retail stores shopping stores','Fite and Sons Mercantile & Ice Cream',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott retail/shopping business from locally checked or Chamber sources.','assistant census research: Prescott retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott retail/shopping business from locally checked or Chamber sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','retail','retail stores shopping stores','French Hen Boutique',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott retail/shopping business from locally checked or Chamber sources.','assistant census research: Prescott retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott retail/shopping business from locally checked or Chamber sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','retail','retail stores shopping stores','Gray Dog Music',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott retail/shopping business from locally checked or Chamber sources.','assistant census research: Prescott retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott retail/shopping business from locally checked or Chamber sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','retail','retail stores shopping stores','Heirloom Market',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott retail/shopping business from locally checked or Chamber sources.','assistant census research: Prescott retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott retail/shopping business from locally checked or Chamber sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','retail','retail stores shopping stores','The Hike Shack',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott retail/shopping business from locally checked or Chamber sources.','assistant census research: Prescott retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott retail/shopping business from locally checked or Chamber sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','retail','retail stores shopping stores','John’s Box of Bricks',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott retail/shopping business from locally checked or Chamber sources.','assistant census research: Prescott retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott retail/shopping business from locally checked or Chamber sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','retail','retail stores shopping stores','K4 Gourmet Beef',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott retail/shopping business from locally checked or Chamber sources.','assistant census research: Prescott retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott retail/shopping business from locally checked or Chamber sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','retail','retail stores shopping stores','Modern Day Forager Mercantile',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott retail/shopping business from locally checked or Chamber sources.','assistant census research: Prescott retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott retail/shopping business from locally checked or Chamber sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','retail','retail stores shopping stores','Ogg’s Hogan',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott retail/shopping business from locally checked or Chamber sources.','assistant census research: Prescott retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott retail/shopping business from locally checked or Chamber sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','retail','retail stores shopping stores','Peregrine Book Company',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott retail/shopping business from locally checked or Chamber sources.','assistant census research: Prescott retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott retail/shopping business from locally checked or Chamber sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','retail','retail stores shopping stores','Pine Ridge Marketplace',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott retail/shopping business from locally checked or Chamber sources.','assistant census research: Prescott retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott retail/shopping business from locally checked or Chamber sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','retail','retail stores shopping stores','Pralines of Prescott',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott retail/shopping business from locally checked or Chamber sources.','assistant census research: Prescott retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott retail/shopping business from locally checked or Chamber sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','retail','retail stores shopping stores','Puttin’ On The Hats',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott retail/shopping business from locally checked or Chamber sources.','assistant census research: Prescott retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott retail/shopping business from locally checked or Chamber sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','retail','retail stores shopping stores','The Spice & Tea Exchange of Prescott',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott retail/shopping business from locally checked or Chamber sources.','assistant census research: Prescott retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott retail/shopping business from locally checked or Chamber sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','retail','retail stores shopping stores','Toyful',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott retail/shopping business from locally checked or Chamber sources.','assistant census research: Prescott retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott retail/shopping business from locally checked or Chamber sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','retail','retail stores shopping stores','Arizona Field Optics',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott retail/shopping business from locally checked or Chamber sources.','assistant census research: Prescott retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott retail/shopping business from locally checked or Chamber sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','retail','retail stores shopping stores','Jay''s Bird Barn',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott retail/shopping business from locally checked or Chamber sources.','assistant census research: Prescott retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott retail/shopping business from locally checked or Chamber sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','retail','retail stores shopping stores','Jay''s Hallmark Gold Crown Store',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott retail/shopping business from locally checked or Chamber sources.','assistant census research: Prescott retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott retail/shopping business from locally checked or Chamber sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','retail','retail stores shopping stores','Legacy Jewelry',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott retail/shopping business from locally checked or Chamber sources.','assistant census research: Prescott retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott retail/shopping business from locally checked or Chamber sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','retail','retail stores shopping stores','Purple Clover',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott retail/shopping business from locally checked or Chamber sources.','assistant census research: Prescott retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott retail/shopping business from locally checked or Chamber sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','retail','retail stores shopping stores','Olsen''s Grain',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott retail/shopping business from locally checked or Chamber sources.','assistant census research: Prescott retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott retail/shopping business from locally checked or Chamber sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','retail','retail stores shopping stores','Edison Market',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott retail/shopping business from locally checked or Chamber sources.','assistant census research: Prescott retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott retail/shopping business from locally checked or Chamber sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','retail','retail stores shopping stores','NAPA Auto Parts - Prescott',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott retail/shopping business from locally checked or Chamber sources.','assistant census research: Prescott retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott retail/shopping business from locally checked or Chamber sources."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','theaters_entertainment','theaters cinemas entertainment venues','Art Hive',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott arts, attraction, entertainment or recreation facility.','assistant census research: Prescott theaters cinemas entertainment venues',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott arts, attraction, entertainment or recreation facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','theaters_entertainment','theaters cinemas entertainment venues','Arts Prescott Cooperative Gallery',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott arts, attraction, entertainment or recreation facility.','assistant census research: Prescott theaters cinemas entertainment venues',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott arts, attraction, entertainment or recreation facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','theaters_entertainment','theaters cinemas entertainment venues','Elks Theatre & Performing Arts Center',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott arts, attraction, entertainment or recreation facility.','assistant census research: Prescott theaters cinemas entertainment venues',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott arts, attraction, entertainment or recreation facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','theaters_entertainment','theaters cinemas entertainment venues','The Hazeltine',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott arts, attraction, entertainment or recreation facility.','assistant census research: Prescott theaters cinemas entertainment venues',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott arts, attraction, entertainment or recreation facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','theaters_entertainment','theaters cinemas entertainment venues','Heritage Park Zoological Sanctuary',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott arts, attraction, entertainment or recreation facility.','assistant census research: Prescott theaters cinemas entertainment venues',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott arts, attraction, entertainment or recreation facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','theaters_entertainment','theaters cinemas entertainment venues','Highlands Center for Natural History',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott arts, attraction, entertainment or recreation facility.','assistant census research: Prescott theaters cinemas entertainment venues',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott arts, attraction, entertainment or recreation facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','theaters_entertainment','theaters cinemas entertainment venues','Ian Russell Gallery of Fine Art',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott arts, attraction, entertainment or recreation facility.','assistant census research: Prescott theaters cinemas entertainment venues',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott arts, attraction, entertainment or recreation facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','theaters_entertainment','theaters cinemas entertainment venues','Jim & Linda Lee Performing Arts Center',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott arts, attraction, entertainment or recreation facility.','assistant census research: Prescott theaters cinemas entertainment venues',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott arts, attraction, entertainment or recreation facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','theaters_entertainment','theaters cinemas entertainment venues','Mountain Artists Guild',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott arts, attraction, entertainment or recreation facility.','assistant census research: Prescott theaters cinemas entertainment venues',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott arts, attraction, entertainment or recreation facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','theaters_entertainment','theaters cinemas entertainment venues','Museum of Indigenous People',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott arts, attraction, entertainment or recreation facility.','assistant census research: Prescott theaters cinemas entertainment venues',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott arts, attraction, entertainment or recreation facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','theaters_entertainment','theaters cinemas entertainment venues','Phippen Museum of Western Art & Heritage',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott arts, attraction, entertainment or recreation facility.','assistant census research: Prescott theaters cinemas entertainment venues',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott arts, attraction, entertainment or recreation facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','theaters_entertainment','theaters cinemas entertainment venues','Sharlot Hall Museum',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott arts, attraction, entertainment or recreation facility.','assistant census research: Prescott theaters cinemas entertainment venues',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott arts, attraction, entertainment or recreation facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','theaters_entertainment','theaters cinemas entertainment venues','‘Tis Art Center & Gallery',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott arts, attraction, entertainment or recreation facility.','assistant census research: Prescott theaters cinemas entertainment venues',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott arts, attraction, entertainment or recreation facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','theaters_entertainment','theaters cinemas entertainment venues','Van Gogh’s Ear',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott arts, attraction, entertainment or recreation facility.','assistant census research: Prescott theaters cinemas entertainment venues',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott arts, attraction, entertainment or recreation facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','theaters_entertainment','theaters cinemas entertainment venues','Get Air Prescott',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott arts, attraction, entertainment or recreation facility.','assistant census research: Prescott theaters cinemas entertainment venues',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott arts, attraction, entertainment or recreation facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','theaters_entertainment','theaters cinemas entertainment venues','Antelope Hills Golf Courses',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott arts, attraction, entertainment or recreation facility.','assistant census research: Prescott theaters cinemas entertainment venues',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott arts, attraction, entertainment or recreation facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','theaters_entertainment','theaters cinemas entertainment venues','United Escapes of America',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott arts, attraction, entertainment or recreation facility.','assistant census research: Prescott theaters cinemas entertainment venues',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott arts, attraction, entertainment or recreation facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','theaters_entertainment','theaters cinemas entertainment venues','Prescott Food Tour',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott arts, attraction, entertainment or recreation facility.','assistant census research: Prescott theaters cinemas entertainment venues',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott arts, attraction, entertainment or recreation facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','theaters_entertainment','theaters cinemas entertainment venues','The Fairweather Social Club',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott arts, attraction, entertainment or recreation facility.','assistant census research: Prescott theaters cinemas entertainment venues',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott arts, attraction, entertainment or recreation facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','gyms_fitness','gyms fitness centers recreation centers','James Family Prescott YMCA',
 'https://www.prescott.org/arts-culture-and-family-fun.html','prescott.org','Current Prescott Chamber feature for large YMCA health, aquatics, gymnastics and recreation facility.','assistant census research: Prescott gyms fitness centers recreation centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Chamber feature for large YMCA health, aquatics, gymnastics and recreation facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','gyms_fitness','gyms fitness centers recreation centers','Center for Physical Excellence',
 'https://web.prescott.org/directory/results/directions.aspx?listingid=164','web.prescott.org','Current Prescott Chamber health/fitness facility at 3117 Stillwater Dr.','assistant census research: Prescott gyms fitness centers recreation centers',0,
 null,'(928) 442-0005',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Chamber health/fitness facility at 3117 Stillwater Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','gyms_fitness','gyms fitness centers recreation centers','Get-Fit Prescott',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current 24-hour gym at Pine Ridge Marketplace.','assistant census research: Prescott gyms fitness centers recreation centers',0,
 null,'(928) 276-9069',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current 24-hour gym at Pine Ridge Marketplace."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','gyms_fitness','gyms fitness centers recreation centers','A Valley of Vitality',
 'https://www.prescott.org/participating-businesses1.html','prescott.org','Current Prescott Chamber wellness studio.','assistant census research: Prescott gyms fitness centers recreation centers',0,
 null,'(928) 442-6026',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Chamber wellness studio."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','schools','schools charter schools private schools','BASIS Prescott',
 'https://www.prescott.org/private-charter-schools.html','prescott.org','Current Prescott Chamber private/charter school listing.','assistant census research: Prescott schools charter schools private schools',0,
 null,'(928) 277-0334',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Chamber private/charter school listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','schools','schools charter schools private schools','La Tierra Community School',
 'https://www.prescott.org/private-charter-schools.html','prescott.org','Current Prescott Chamber private/charter school listing.','assistant census research: Prescott schools charter schools private schools',0,
 null,'(928) 445-5100',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Chamber private/charter school listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','schools','schools charter schools private schools','Mountain Oak Charter School',
 'https://www.prescott.org/private-charter-schools.html','prescott.org','Current Prescott Chamber private/charter school listing.','assistant census research: Prescott schools charter schools private schools',0,
 null,'(928) 541-7700',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Chamber private/charter school listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','schools','schools charter schools private schools','Primavera School',
 'https://www.prescott.org/private-charter-schools.html','prescott.org','Current Prescott Chamber private/charter school listing.','assistant census research: Prescott schools charter schools private schools',0,
 null,'(928) 445-5382',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Chamber private/charter school listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','schools','schools charter schools private schools','Trinity Christian School',
 'https://www.prescott.org/private-charter-schools.html','prescott.org','Current Prescott Chamber private/charter school listing.','assistant census research: Prescott schools charter schools private schools',0,
 null,'(928) 445-6306',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Chamber private/charter school listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','schools','schools charter schools private schools','Northpoint Expeditionary Learning Academy',
 'https://www.prescott.org/private-charter-schools.html','prescott.org','Current Prescott Chamber private/charter school listing.','assistant census research: Prescott schools charter schools private schools',0,
 null,'(928) 717-3272',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Chamber private/charter school listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','schools','schools charter schools private schools','Sacred Heart Catholic School',
 'https://www.prescott.org/private-charter-schools.html','prescott.org','Current Prescott Chamber private/charter school listing.','assistant census research: Prescott schools charter schools private schools',0,
 null,'(928) 445-2621',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Chamber private/charter school listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','schools','schools charter schools private schools','Willow Creek Charter School',
 'https://www.prescott.org/private-charter-schools.html','prescott.org','Current Prescott Chamber private/charter school listing.','assistant census research: Prescott schools charter schools private schools',0,
 null,'(928) 776-1212',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Chamber private/charter school listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','schools','schools charter schools private schools','Prescott Adventist Christian School',
 'https://www.prescott.org/private-charter-schools.html','prescott.org','Current Prescott Chamber private/charter school listing.','assistant census research: Prescott schools charter schools private schools',0,
 null,'(928) 224-8022',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Chamber private/charter school listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','schools','schools charter schools private schools','Tri-City College Prep High School',
 'https://www.prescott.org/private-charter-schools.html','prescott.org','Current Prescott Chamber private/charter school listing.','assistant census research: Prescott schools charter schools private schools',0,
 null,'(928) 777-0403',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Chamber private/charter school listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','schools','schools charter schools private schools','Prescott Unified School District',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott public-school district/facility operator.','assistant census research: Prescott schools charter schools private schools',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott public-school district/facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','schools','schools charter schools private schools','Yavapai College',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Major Prescott college campus and facility operator.','assistant census research: Prescott schools charter schools private schools',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Major Prescott college campus and facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','schools','schools charter schools private schools','Embry-Riddle Aeronautical University - Prescott',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Major Prescott university campus/facility operator.','assistant census research: Prescott schools charter schools private schools',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Major Prescott university campus/facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','dental','dentists dental offices orthodontists','Prescott Dental Arts',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott dental practice confirmed by current local business data.','assistant census research: Prescott dentists dental offices orthodontists',0,
 null,'(928) 445-8980',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott dental practice confirmed by current local business data."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','dental','dentists dental offices orthodontists','Pro Solutions Dental Group',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott dental practice confirmed by current local business data.','assistant census research: Prescott dentists dental offices orthodontists',0,
 null,'(928) 776-1208',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott dental practice confirmed by current local business data."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','dental','dentists dental offices orthodontists','Hooper Family Dental',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott dental practice confirmed by current local business data.','assistant census research: Prescott dentists dental offices orthodontists',0,
 null,'(928) 778-2421',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott dental practice confirmed by current local business data."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','dental','dentists dental offices orthodontists','Hicks Dental Group',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott dental practice confirmed by current local business data.','assistant census research: Prescott dentists dental offices orthodontists',0,
 null,'(928) 445-6030',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott dental practice confirmed by current local business data."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','dental','dentists dental offices orthodontists','Prescott Smile Care',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott dental practice confirmed by current local business data.','assistant census research: Prescott dentists dental offices orthodontists',0,
 null,'(928) 445-8503',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott dental practice confirmed by current local business data."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','dental','dentists dental offices orthodontists','Hanis Dental Cosmetic & Implant Dentistry of Prescott',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott dental practice confirmed by current local business data.','assistant census research: Prescott dentists dental offices orthodontists',0,
 null,'(928) 628-7442',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott dental practice confirmed by current local business data."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','dental','dentists dental offices orthodontists','Mangum Dental',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott dental practice confirmed by current local business data.','assistant census research: Prescott dentists dental offices orthodontists',0,
 null,'(928) 778-4110',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott dental practice confirmed by current local business data."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','dental','dentists dental offices orthodontists','Joseph A. Savoini D.M.D., P.C.',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott dental practice confirmed by current local business data.','assistant census research: Prescott dentists dental offices orthodontists',0,
 null,'(928) 297-3040',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott dental practice confirmed by current local business data."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','dental','dentists dental offices orthodontists','Keep Smiling Family Dentistry',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott dental practice confirmed by current local business data.','assistant census research: Prescott dentists dental offices orthodontists',0,
 null,'(928) 445-4950',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott dental practice confirmed by current local business data."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','dental','dentists dental offices orthodontists','Horizon Dental Group Prescott',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott dental practice confirmed by current local business data.','assistant census research: Prescott dentists dental offices orthodontists',0,
 null,'(928) 641-4000',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott dental practice confirmed by current local business data."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','medical_centers','hospitals medical centers clinics','Skin Perfection Medical Spa',
 'https://www.prescott.org/participating-businesses1.html','prescott.org','Current Prescott Chamber health/medical-services business.','assistant census research: Prescott hospitals medical centers clinics',0,
 null,'(928) 541-0003',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Chamber health/medical-services business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','medical_centers','hospitals medical centers clinics','New Life CPR',
 'https://www.prescott.org/participating-businesses1.html','prescott.org','Current Prescott Chamber health/medical-services business.','assistant census research: Prescott hospitals medical centers clinics',0,
 null,'(928) 445-5024',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Chamber health/medical-services business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','medical_centers','hospitals medical centers clinics','Yavapai Regional Medical Center - Prescott',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Major Prescott hospital/medical facility.','assistant census research: Prescott hospitals medical centers clinics',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Major Prescott hospital/medical facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','medical_centers','hospitals medical centers clinics','Veterans Affairs Medical Center - Prescott',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Major Prescott federal medical facility.','assistant census research: Prescott hospitals medical centers clinics',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Major Prescott federal medical facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','therapy_behavioral','therapy counseling behavioral health clinics','West Yavapai Guidance Clinic / Polara Health',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Prescott behavioral-health facility/operator.','assistant census research: Prescott therapy counseling behavioral health clinics',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Prescott behavioral-health facility/operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','senior_daycare','senior living assisted living daycare childcare','Good Samaritan Society - Prescott Village',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Prescott senior-living/care facility.','assistant census research: Prescott senior living assisted living daycare childcare',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Prescott senior-living/care facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','senior_daycare','senior living assisted living daycare childcare','Las Fuentes Resort Village',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Prescott senior-living facility.','assistant census research: Prescott senior living assisted living daycare childcare',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Prescott senior-living facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','senior_daycare','senior living assisted living daycare childcare','Granite Gate Senior Living',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Prescott senior-living facility.','assistant census research: Prescott senior living assisted living daycare childcare',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Prescott senior-living facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','general_business','other local businesses','Prescott Animal Hospital',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott veterinary/animal-care facility.','assistant census research: Prescott other local businesses',0,
 null,'(928) 445-2190',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott veterinary/animal-care facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','general_business','other local businesses','Granite Mountain Veterinary Hospital',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott veterinary/animal-care facility.','assistant census research: Prescott other local businesses',0,
 null,'(928) 771-1340',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott veterinary/animal-care facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','general_business','other local businesses','Harmony Veterinary Care',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott veterinary/animal-care facility.','assistant census research: Prescott other local businesses',0,
 null,'(928) 285-1527',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott veterinary/animal-care facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','general_business','other local businesses','VCA Thumb Butte Animal Hospital',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott veterinary/animal-care facility.','assistant census research: Prescott other local businesses',0,
 null,'(928) 445-2331',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott veterinary/animal-care facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','general_business','other local businesses','Urgent Pet Prescott',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott veterinary/animal-care facility.','assistant census research: Prescott other local businesses',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott veterinary/animal-care facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','general_business','other local businesses','Yavapai Humane Society Pet Adoption Center',
 'https://www.prescottinsider.com/local-business-directory/prescott/','prescottinsider.com','Current Prescott veterinary/animal-care facility.','assistant census research: Prescott other local businesses',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott veterinary/animal-care facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','insurance_professional','insurance agents professional offices','Lucas Flood Agency',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott insurance, finance or professional-office candidate.','assistant census research: Prescott insurance agents professional offices',0,
 null,'(928) 800-5630',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott insurance, finance or professional-office candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','insurance_professional','insurance agents professional offices','Eric Strobel - State Farm Insurance Agent',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott insurance, finance or professional-office candidate.','assistant census research: Prescott insurance agents professional offices',0,
 null,'(928) 778-0560',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott insurance, finance or professional-office candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','insurance_professional','insurance agents professional offices','Tracy Murr - State Farm Insurance Agent',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott insurance, finance or professional-office candidate.','assistant census research: Prescott insurance agents professional offices',0,
 null,'(928) 445-8500',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott insurance, finance or professional-office candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','insurance_professional','insurance agents professional offices','Moll Insurance Agency Inc.',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott insurance, finance or professional-office candidate.','assistant census research: Prescott insurance agents professional offices',0,
 null,'(928) 443-0493',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott insurance, finance or professional-office candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','insurance_professional','insurance agents professional offices','Primerica - Guy J. Battaglia',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott insurance, finance or professional-office candidate.','assistant census research: Prescott insurance agents professional offices',0,
 null,'(909) 851-4108',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott insurance, finance or professional-office candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','insurance_professional','insurance agents professional offices','Yavapai Title Agency',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott insurance, finance or professional-office candidate.','assistant census research: Prescott insurance agents professional offices',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott insurance, finance or professional-office candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','insurance_professional','insurance agents professional offices','OneAZ Credit Union - Prescott',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott insurance, finance or professional-office candidate.','assistant census research: Prescott insurance agents professional offices',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott insurance, finance or professional-office candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','insurance_professional','insurance agents professional offices','National Bank of Arizona - Prescott',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott insurance, finance or professional-office candidate.','assistant census research: Prescott insurance agents professional offices',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott insurance, finance or professional-office candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','insurance_professional','insurance agents professional offices','Foothills Bank - Prescott',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott insurance, finance or professional-office candidate.','assistant census research: Prescott insurance agents professional offices',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott insurance, finance or professional-office candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','insurance_professional','insurance agents professional offices','Prescott Financial Services',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott insurance, finance or professional-office candidate.','assistant census research: Prescott insurance agents professional offices',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott insurance, finance or professional-office candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','property_management','property management companies apartment communities','Rent Right / Home Right Real Estate Solutions',
 'https://web.prescott.org/directory/results/directions.aspx?listingid=1741','web.prescott.org','Current Prescott property-management, real-estate or apartment-community candidate.','assistant census research: Prescott property management companies apartment communities',0,
 null,'(928) 771-0308',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott property-management, real-estate or apartment-community candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','property_management','property management companies apartment communities','Peak Property Solutions',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott property-management, real-estate or apartment-community candidate.','assistant census research: Prescott property management companies apartment communities',0,
 null,'(928) 251-0353',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott property-management, real-estate or apartment-community candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','property_management','property management companies apartment communities','Pierce Property Management',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott property-management, real-estate or apartment-community candidate.','assistant census research: Prescott property management companies apartment communities',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott property-management, real-estate or apartment-community candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','property_management','property management companies apartment communities','BloomTree Realty',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott property-management, real-estate or apartment-community candidate.','assistant census research: Prescott property management companies apartment communities',0,
 null,'(928) 443-8800',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott property-management, real-estate or apartment-community candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','property_management','property management companies apartment communities','Journey Real Estate Investments & Management',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott property-management, real-estate or apartment-community candidate.','assistant census research: Prescott property management companies apartment communities',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott property-management, real-estate or apartment-community candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','property_management','property management companies apartment communities','United Metro Properties',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott property-management, real-estate or apartment-community candidate.','assistant census research: Prescott property management companies apartment communities',0,
 null,'(928) 445-4159',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott property-management, real-estate or apartment-community candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','property_management','property management companies apartment communities','Bear Creek Real Estate & Property Management',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott property-management, real-estate or apartment-community candidate.','assistant census research: Prescott property management companies apartment communities',0,
 null,'(928) 420-8333',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott property-management, real-estate or apartment-community candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','property_management','property management companies apartment communities','Real Property Management Northern Arizona',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott property-management, real-estate or apartment-community candidate.','assistant census research: Prescott property management companies apartment communities',0,
 null,'(928) 771-0308',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott property-management, real-estate or apartment-community candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','property_management','property management companies apartment communities','Willow Ridge Apartments',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott property-management, real-estate or apartment-community candidate.','assistant census research: Prescott property management companies apartment communities',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott property-management, real-estate or apartment-community candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','property_management','property management companies apartment communities','Prescott Lakes Senior Apartments',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott property-management, real-estate or apartment-community candidate.','assistant census research: Prescott property management companies apartment communities',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott property-management, real-estate or apartment-community candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','auto_dealers','auto dealers car dealerships','Prescott Honda',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott automotive dealership/service facility.','assistant census research: Prescott auto dealers car dealerships',0,
 null,'(928) 432-7993',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott automotive dealership/service facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','auto_dealers','auto dealers car dealerships','Findlay Toyota Prescott',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott automotive dealership/service facility.','assistant census research: Prescott auto dealers car dealerships',0,
 null,'(928) 443-8300',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott automotive dealership/service facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','auto_dealers','auto dealers car dealerships','Findlay Subaru Prescott',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott automotive dealership/service facility.','assistant census research: Prescott auto dealers car dealerships',0,
 null,'(928) 771-6984',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott automotive dealership/service facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','auto_dealers','auto dealers car dealerships','Galpin Ford of Prescott',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott automotive dealership/service facility.','assistant census research: Prescott auto dealers car dealerships',0,
 null,'(928) 445-3673',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott automotive dealership/service facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','auto_dealers','auto dealers car dealerships','Casa Chevrolet of Prescott',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott automotive dealership/service facility.','assistant census research: Prescott auto dealers car dealerships',0,
 null,'(928) 277-0237',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott automotive dealership/service facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','auto_dealers','auto dealers car dealerships','Beal''s Auto Body',
 'https://www.prescott.org/participating-businesses1.html','prescott.org','Current Prescott automotive dealership/service facility.','assistant census research: Prescott auto dealers car dealerships',0,
 null,'(928) 445-2295',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott automotive dealership/service facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','warehouses_industrial','warehouses industrial businesses distribution centers','STORAGExperts at Prescott',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Prescott storage, aviation, manufacturing or production facility candidate.','assistant census research: Prescott warehouses industrial businesses distribution centers',0,
 null,'(928) 778-5657',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Prescott storage, aviation, manufacturing or production facility candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','warehouses_industrial','warehouses industrial businesses distribution centers','Granite Dells Storage & RV',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Prescott storage, aviation, manufacturing or production facility candidate.','assistant census research: Prescott warehouses industrial businesses distribution centers',0,
 null,'(928) 800-8200',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Prescott storage, aviation, manufacturing or production facility candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','warehouses_industrial','warehouses industrial businesses distribution centers','Prescott Airport Industrial Park',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Prescott storage, aviation, manufacturing or production facility candidate.','assistant census research: Prescott warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Prescott storage, aviation, manufacturing or production facility candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','warehouses_industrial','warehouses industrial businesses distribution centers','Leighnor Aircraft',
 'https://www.prescott.org/participating-businesses.html','prescott.org','Prescott storage, aviation, manufacturing or production facility candidate.','assistant census research: Prescott warehouses industrial businesses distribution centers',0,
 null,'(928) 499-3080',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Prescott storage, aviation, manufacturing or production facility candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','warehouses_industrial','warehouses industrial businesses distribution centers','Wathen Custom Woodcrafts',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Prescott storage, aviation, manufacturing or production facility candidate.','assistant census research: Prescott warehouses industrial businesses distribution centers',0,
 null,'(928) 585-9345',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Prescott storage, aviation, manufacturing or production facility candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','warehouses_industrial','warehouses industrial businesses distribution centers','Wren House Brewing - Prescott Production Site',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Prescott storage, aviation, manufacturing or production facility candidate.','assistant census research: Prescott warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Prescott storage, aviation, manufacturing or production facility candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','public_facilities','government public facilities municipal buildings','City of Prescott',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Prescott public/government or civic facility operator.','assistant census research: Prescott government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Prescott public/government or civic facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','public_facilities','government public facilities municipal buildings','Yavapai County Administration',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Prescott public/government or civic facility operator.','assistant census research: Prescott government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Prescott public/government or civic facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','public_facilities','government public facilities municipal buildings','Prescott Public Library',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Prescott public/government or civic facility operator.','assistant census research: Prescott government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Prescott public/government or civic facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','public_facilities','government public facilities municipal buildings','Prescott Regional Airport',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Prescott public/government or civic facility operator.','assistant census research: Prescott government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Prescott public/government or civic facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','public_facilities','government public facilities municipal buildings','Prescott Fire Department',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Prescott public/government or civic facility operator.','assistant census research: Prescott government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Prescott public/government or civic facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','public_facilities','government public facilities municipal buildings','Prescott Police Department',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Prescott public/government or civic facility operator.','assistant census research: Prescott government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Prescott public/government or civic facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','public_facilities','government public facilities municipal buildings','Prescott Chamber of Commerce',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Prescott public/government or civic facility operator.','assistant census research: Prescott government public facilities municipal buildings',0,
 null,'(928) 445-2000',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Prescott public/government or civic facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','churches','churches worship centers','Sacred Heart Roman Catholic Parish',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott church/religious facility.','assistant census research: Prescott churches worship centers',0,
 null,'(928) 445-3141',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott church/religious facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','churches','churches worship centers','Heights Church - Prescott',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott church/religious facility.','assistant census research: Prescott churches worship centers',0,
 null,'(928) 445-1421',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott church/religious facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','churches','churches worship centers','Prescott Potter''s House Church',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott church/religious facility.','assistant census research: Prescott churches worship centers',0,
 null,'(928) 533-6185',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott church/religious facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','churches','churches worship centers','Prescott United Methodist Church',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott church/religious facility.','assistant census research: Prescott churches worship centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott church/religious facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','churches','churches worship centers','Trinity Presbyterian Church',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott church/religious facility.','assistant census research: Prescott churches worship centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott church/religious facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','churches','churches worship centers','First Congregational Church of Prescott',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott church/religious facility.','assistant census research: Prescott churches worship centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_buyers_01","researched_at":"2026-10-27T01:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott church/religious facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

update market_inventory_progress p set official_candidates=(
 select count(*) from market_inventory_candidates c where c.side=p.side and c.market=p.market
 and c.category_key=p.category_key and c.status='discovered' and c.query_strategy_version=7 and c.official_site=true
),updated_at=now() where p.market='Prescott';


-- Assistant-led Prescott vendor/trade census batch 02 (2026-10-26)
insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','Franklin Plumbing Services Inc.',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','Gh Plumbing, Inc.',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','Briggs Plumbing And Rooter Service Inc.',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','Az Super Plumber',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','Lueck''s Plumbing LLC',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','Bart''s Plumbing Inc.',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','Yavapai Water Production LLC',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','Bar None Plumbing',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','Alphabet Plumbing And Rooter Inc.',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','Elsea Plumbing Inc.',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','4w Industries, LLC',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','Apex Plumbing Prescott Inc.',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','Arizona Grinder Pumps LLC',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','Az Plumber Plus, LLC',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','Barrett Propane',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','Bee Plumbing',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','Benjamin Franklin Plumbing',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','Brewer Plumbing Inc.',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','Collins Plumbing LLC',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','Copper King Plumbing LLC',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','Enright Plumbing',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','Heritage Plumbing LLC',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','Infinity Kitchen And Bath LLC',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','J F R Plumbing LLC',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','J&r Plumbing',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','Juniper Ridge Plumbing',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','Mike''s Plumbing, LLC',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','Og Plumbing',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','Otter Plumbing, LLC',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','Parsons Plumbing LLC',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','Patriot Plumbing',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','Pine Country Plumbing LLC',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','Plumber Of Prescott LLC',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','Plumbing Guild LLC',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','Prescott Plumbing',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','R&r Sewer & Drain Cleaning LLC',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','Smart Plumbing & Septic',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','T & T Plumbing Pros LLC',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','The Elite Plumber LLC',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','Trademark Plumbing',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','Yavapai Landscaping LLC',
 'https://homversa.com/az/prescott/plumbers','homversa.com','Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC plumbing-license record registered in Prescott; exact residential/commercial scope should be checked before assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','S & M Electric',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','S & K Electrical Contracting LLC',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','Angler Electric',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','Fair Oaks Electric',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','Kevin Lollar Electric LLC',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','Staltari Electrical Services',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','D A K Electric Company',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','G And S Electric, Inc.',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','A A A Froggy Electric Inc.',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','Sarvi Co Electric LLC',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','Aaron Gene Gilbert',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','Allied Electric LLC',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','Arizona Lights Electric LLC',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','Berthil Kristian Smit',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','Blue Arco Solar Solutions LLC',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','Caliber Electrical Contractors LLC',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','Clear Electric LLC',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','Collins Electric LLC',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','Countywide Electric Inc.',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','Custom Home Electric LLC',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','D & S Electrical Services LLC',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','D C M Builders LLC',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','Fann Environmental LLC',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','Hyperion Electric & Solar',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','Integrity Electrical LLC',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','James German Electric LLC',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','Liteguard LLC',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','M H I Residential Inc.',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','Mile High Electric LLC',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','Olympian Electric And Audio Video LLC',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','Ponderosa Electric LLC',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','Price Electric LLC',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','Projected Innovations And Electric, LLC',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','R And L Elliott Power Systems',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','R D Electrical Contracting',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','Rightway Electrical Inc.',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','Sg Solar & Electrical, LLC',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','Sierra Prieta Electric LLC',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','Stephens-Son Electric LLC',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','Wurke Bettler Home Services, LLC',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','Yavapai Power & Lighting LLC',
 'https://homversa.com/az/prescott/electricians','homversa.com','Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment.','assistant vendor census: Prescott Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current ROC electrical-license record registered in Prescott; license scope should be checked before commercial assignment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','facility_maintenance','Building Maintenance Help','Central Basin Roofing, Inc.',
 'https://homversa.com/az/prescott/roofers','homversa.com','Current Prescott roofing company with active dual-scope ROC roofing license as of September 21, 2026.','assistant vendor census: Prescott Building Maintenance Help',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott roofing company with active dual-scope ROC roofing license as of September 21, 2026."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','facility_maintenance','Building Maintenance Help','Granite Basin Roofing Inc.',
 'https://homversa.com/az/prescott/roofers','homversa.com','Current Prescott roofing company with active dual-scope ROC roofing license as of September 21, 2026.','assistant vendor census: Prescott Building Maintenance Help',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott roofing company with active dual-scope ROC roofing license as of September 21, 2026."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','facility_maintenance','Building Maintenance Help','Legacy Roofing LLC',
 'https://homversa.com/az/prescott/roofers','homversa.com','Current Prescott roofing company with active dual-scope ROC roofing license as of September 21, 2026.','assistant vendor census: Prescott Building Maintenance Help',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott roofing company with active dual-scope ROC roofing license as of September 21, 2026."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','facility_maintenance','Building Maintenance Help','Northline Roofing LLC',
 'https://homversa.com/az/prescott/roofers','homversa.com','Current Prescott roofing company with active dual-scope ROC roofing license as of September 21, 2026.','assistant vendor census: Prescott Building Maintenance Help',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott roofing company with active dual-scope ROC roofing license as of September 21, 2026."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','facility_maintenance','Building Maintenance Help','Heritage Roofing Inc.',
 'https://homversa.com/az/prescott/roofers','homversa.com','Current Prescott roofing company with active dual-scope ROC roofing license as of September 21, 2026.','assistant vendor census: Prescott Building Maintenance Help',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott roofing company with active dual-scope ROC roofing license as of September 21, 2026."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','facility_maintenance','Building Maintenance Help','Golden Roofing LLC',
 'https://homversa.com/az/prescott/roofers','homversa.com','Current Prescott roofing company with active dual-scope ROC roofing license as of September 21, 2026.','assistant vendor census: Prescott Building Maintenance Help',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott roofing company with active dual-scope ROC roofing license as of September 21, 2026."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','facility_maintenance','Building Maintenance Help','Sun Spirit Roofing LLC',
 'https://homversa.com/az/prescott/roofers','homversa.com','Current Prescott roofing company with active dual-scope ROC roofing license as of September 21, 2026.','assistant vendor census: Prescott Building Maintenance Help',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott roofing company with active dual-scope ROC roofing license as of September 21, 2026."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','facility_maintenance','Building Maintenance Help','Alexander Roofing LLC',
 'https://homversa.com/az/prescott/roofers','homversa.com','Current Prescott roofing company with active dual-scope ROC roofing license as of September 21, 2026.','assistant vendor census: Prescott Building Maintenance Help',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott roofing company with active dual-scope ROC roofing license as of September 21, 2026."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','facility_maintenance','Building Maintenance Help','North Kings Roofing Corporation',
 'https://homversa.com/az/prescott/roofers','homversa.com','Current Prescott roofing company with active dual-scope ROC roofing license as of September 21, 2026.','assistant vendor census: Prescott Building Maintenance Help',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott roofing company with active dual-scope ROC roofing license as of September 21, 2026."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','facility_maintenance','Building Maintenance Help','Drytop Roofing LLC',
 'https://homversa.com/az/prescott/roofers','homversa.com','Current Prescott roofing company with active dual-scope ROC roofing license as of September 21, 2026.','assistant vendor census: Prescott Building Maintenance Help',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott roofing company with active dual-scope ROC roofing license as of September 21, 2026."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','facility_maintenance','Building Maintenance Help','Az Diamond Roofing LLC',
 'https://homversa.com/az/prescott/roofers','homversa.com','Current Prescott roofing company with active dual-scope ROC roofing license as of September 21, 2026.','assistant vendor census: Prescott Building Maintenance Help',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott roofing company with active dual-scope ROC roofing license as of September 21, 2026."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','facility_maintenance','Building Maintenance Help','Empire Roofing & Contracting LLC',
 'https://homversa.com/az/prescott/roofers','homversa.com','Current Prescott roofing company with active dual-scope ROC roofing license as of September 21, 2026.','assistant vendor census: Prescott Building Maintenance Help',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott roofing company with active dual-scope ROC roofing license as of September 21, 2026."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','facility_maintenance','Building Maintenance Help','Granite Mountain Roofing LLC',
 'https://homversa.com/az/prescott/roofers','homversa.com','Current Prescott roofing company with active dual-scope ROC roofing license as of September 21, 2026.','assistant vendor census: Prescott Building Maintenance Help',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott roofing company with active dual-scope ROC roofing license as of September 21, 2026."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','facility_maintenance','Building Maintenance Help','Vantage Roofing Group LLC',
 'https://homversa.com/az/prescott/roofers','homversa.com','Current Prescott roofing company with active dual-scope ROC roofing license as of September 21, 2026.','assistant vendor census: Prescott Building Maintenance Help',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott roofing company with active dual-scope ROC roofing license as of September 21, 2026."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','hvac_heat','Heating & Air','Comfort Pro Heating & Cooling, Inc.',
 'https://homversa.com/az/prescott','homversa.com','Current Prescott-area HVAC contractor from current local/license-backed business evidence.','assistant vendor census: Prescott Heating & Air',0,
 null,'(928) 899-4250',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott-area HVAC contractor from current local/license-backed business evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','hvac_heat','Heating & Air','Phillips Heating & Cooling, Inc.',
 'https://homversa.com/az/prescott','homversa.com','Current Prescott-area HVAC contractor from current local/license-backed business evidence.','assistant vendor census: Prescott Heating & Air',0,
 null,'(928) 445-0282',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott-area HVAC contractor from current local/license-backed business evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','hvac_heat','Heating & Air','AC Medic Heating & Air',
 'https://homversa.com/az/prescott','homversa.com','Current Prescott-area HVAC contractor from current local/license-backed business evidence.','assistant vendor census: Prescott Heating & Air',0,
 null,'(928) 848-6224',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott-area HVAC contractor from current local/license-backed business evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','hvac_heat','Heating & Air','Advantage Home Performance Inc.',
 'https://homversa.com/az/prescott','homversa.com','Current Prescott-area HVAC contractor from current local/license-backed business evidence.','assistant vendor census: Prescott Heating & Air',0,
 null,'(928) 445-3828',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott-area HVAC contractor from current local/license-backed business evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','hvac_heat','Heating & Air','Allied Electric, Heating & AC Repair',
 'https://homversa.com/az/prescott','homversa.com','Current Prescott-area HVAC contractor from current local/license-backed business evidence.','assistant vendor census: Prescott Heating & Air',0,
 null,'(928) 232-6477',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott-area HVAC contractor from current local/license-backed business evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','hvac_heat','Heating & Air','Arizona Heating And Cooling Inc.',
 'https://homversa.com/az/prescott','homversa.com','Current Prescott-area HVAC contractor from current local/license-backed business evidence.','assistant vendor census: Prescott Heating & Air',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott-area HVAC contractor from current local/license-backed business evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','hvac_heat','Heating & Air','Chino Heating And Cooling Inc.',
 'https://homversa.com/az/prescott','homversa.com','Current Prescott-area HVAC contractor from current local/license-backed business evidence.','assistant vendor census: Prescott Heating & Air',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott-area HVAC contractor from current local/license-backed business evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','hvac_heat','Heating & Air','Mark''s Mechanical',
 'https://homversa.com/az/prescott','homversa.com','Current Prescott-area HVAC contractor from current local/license-backed business evidence.','assistant vendor census: Prescott Heating & Air',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott-area HVAC contractor from current local/license-backed business evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','hvac_heat','Heating & Air','Balanced Heating & Air Conditioning',
 'https://homversa.com/az/prescott','homversa.com','Current Prescott-area HVAC contractor from current local/license-backed business evidence.','assistant vendor census: Prescott Heating & Air',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott-area HVAC contractor from current local/license-backed business evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','hvac_heat','Heating & Air','Horizon Heating & Air LLC',
 'https://homversa.com/az/prescott','homversa.com','Current Prescott-area HVAC contractor from current local/license-backed business evidence.','assistant vendor census: Prescott Heating & Air',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott-area HVAC contractor from current local/license-backed business evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','hvac_heat','Heating & Air','Aire Serv of North Central Arizona',
 'https://homversa.com/az/prescott','homversa.com','Current Prescott-area HVAC contractor from current local/license-backed business evidence.','assistant vendor census: Prescott Heating & Air',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott-area HVAC contractor from current local/license-backed business evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','landscaping','Landscaping & Yard Cleanup','Aspen Landscaping',
 'https://homversa.com/az/prescott','homversa.com','Current Prescott landscaping/property-service candidate.','assistant vendor census: Prescott Landscaping & Yard Cleanup',0,
 null,'(928) 832-2590',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott landscaping/property-service candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','landscaping','Landscaping & Yard Cleanup','Yavapai Landscaping Prescott',
 'https://homversa.com/az/prescott','homversa.com','Current Prescott landscaping/property-service candidate.','assistant vendor census: Prescott Landscaping & Yard Cleanup',0,
 null,'(928) 910-4147',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott landscaping/property-service candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','landscaping','Landscaping & Yard Cleanup','Rocky''s Landscaping',
 'https://homversa.com/az/prescott','homversa.com','Current Prescott landscaping/property-service candidate.','assistant vendor census: Prescott Landscaping & Yard Cleanup',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott landscaping/property-service candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','landscaping','Landscaping & Yard Cleanup','Mortimer''s Custom Landscaping',
 'https://homversa.com/az/prescott','homversa.com','Current Prescott landscaping/property-service candidate.','assistant vendor census: Prescott Landscaping & Yard Cleanup',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott landscaping/property-service candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','landscaping','Landscaping & Yard Cleanup','Common Ground Services LLC',
 'https://homversa.com/az/prescott','homversa.com','Current Prescott landscaping/property-service candidate.','assistant vendor census: Prescott Landscaping & Yard Cleanup',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott landscaping/property-service candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','landscaping','Landscaping & Yard Cleanup','Prescott Landscape Company',
 'https://homversa.com/az/prescott','homversa.com','Current Prescott landscaping/property-service candidate.','assistant vendor census: Prescott Landscaping & Yard Cleanup',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott landscaping/property-service candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','landscaping','Landscaping & Yard Cleanup','Arizona Native Landscapes',
 'https://homversa.com/az/prescott','homversa.com','Current Prescott landscaping/property-service candidate.','assistant vendor census: Prescott Landscaping & Yard Cleanup',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott landscaping/property-service candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','landscaping','Landscaping & Yard Cleanup','Jonny''s Tree & Landscaping',
 'https://prescott-az.gov/wp-content/uploads/2025/10/WAT-List_of_Approved_Backflow_Prevention_Assembly_Testers-20251007.pdf','prescott-az.gov','Current Prescott landscaping/property-service candidate.','assistant vendor census: Prescott Landscaping & Yard Cleanup',0,
 null,'(928) 442-7274',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott landscaping/property-service candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','tree_service','Tree Service & Brush Clearing','Morgan Tree Service',
 'https://www.google.com/search?q=Morgan+Tree+Service+Prescott+AZ','google.com','Current veteran-owned Prescott tree-service company serving Prescott and surrounding communities.','assistant vendor census: Prescott Tree Service & Brush Clearing',0,
 null,'(928) 232-0011',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current veteran-owned Prescott tree-service company serving Prescott and surrounding communities."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','tree_service','Tree Service & Brush Clearing','Patriot Pest & Termite Control',
 'https://www.google.com/search?q=Patriot+Pest+Termite+Control+Prescott','google.com','Current Prescott pest company also offering tree care/plant-health services.','assistant vendor census: Prescott Tree Service & Brush Clearing',0,
 null,'(928) 985-3098',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott pest company also offering tree care/plant-health services."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','pest_control','Pest Control','Patriot Pest & Termite Control',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott pest-control company with residential/commercial service evidence.','assistant vendor census: Prescott Pest Control',0,
 null,'(928) 985-3098',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott pest-control company with residential/commercial service evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','pest_control','Pest Control','AZEX Pest Solutions',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott pest-control company with residential/commercial service evidence.','assistant vendor census: Prescott Pest Control',0,
 null,'(928) 445-5820',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott pest-control company with residential/commercial service evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','pest_control','Pest Control','Green Gecko Pest Solutions',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott pest-control company with residential/commercial service evidence.','assistant vendor census: Prescott Pest Control',0,
 null,'(928) 985-4321',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott pest-control company with residential/commercial service evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','commercial_cleaning','Commercial Cleaning','American Crown Commercial Cleaning',
 'https://americancrowncc.com/','americancrowncc.com','Current Prescott commercial/janitorial cleaning candidate.','assistant vendor census: Prescott Commercial Cleaning',0,
 null,'(928) 250-0490',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott commercial/janitorial cleaning candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','commercial_cleaning','Commercial Cleaning','Superior Maintenance',
 'https://www.yellowpages.com/prescott-az/janitorial-service','yellowpages.com','Current Prescott commercial/janitorial cleaning candidate.','assistant vendor census: Prescott Commercial Cleaning',0,
 null,'(928) 445-2027',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott commercial/janitorial cleaning candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','commercial_cleaning','Commercial Cleaning','Close-Up-Cleaning',
 'https://www.yellowpages.com/prescott-az/janitorial-service','yellowpages.com','Current Prescott commercial/janitorial cleaning candidate.','assistant vendor census: Prescott Commercial Cleaning',0,
 null,'(928) 778-1074',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott commercial/janitorial cleaning candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','commercial_cleaning','Commercial Cleaning','Clean Team Janitorial Services',
 'https://www.yellowpages.com/prescott-az/janitorial-service','yellowpages.com','Current Prescott commercial/janitorial cleaning candidate.','assistant vendor census: Prescott Commercial Cleaning',0,
 null,'(928) 443-5433',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott commercial/janitorial cleaning candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','commercial_cleaning','Commercial Cleaning','Golden Phoenix Solutions',
 'https://www.yellowpages.com/prescott-az/janitorial-service','yellowpages.com','Current Prescott commercial/janitorial cleaning candidate.','assistant vendor census: Prescott Commercial Cleaning',0,
 null,'(928) 277-6293',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott commercial/janitorial cleaning candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','commercial_cleaning','Commercial Cleaning','Kastle Keeper Cleaning Services LLC',
 'https://www.yellowpages.com/prescott-az/janitorial-service','yellowpages.com','Current Prescott commercial/janitorial cleaning candidate.','assistant vendor census: Prescott Commercial Cleaning',0,
 null,'(928) 277-3868',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott commercial/janitorial cleaning candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','commercial_cleaning','Commercial Cleaning','Maid to Shine Bright',
 'https://www.yellowpages.com/prescott-az/janitorial-service','yellowpages.com','Current Prescott commercial/janitorial cleaning candidate.','assistant vendor census: Prescott Commercial Cleaning',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott commercial/janitorial cleaning candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','window_cleaning','Window Cleaning','American Crown Commercial Cleaning',
 'https://americancrowncc.com/','americancrowncc.com','Current Prescott window-cleaning candidate.','assistant vendor census: Prescott Window Cleaning',0,
 null,'(928) 250-0490',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott window-cleaning candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','window_cleaning','Window Cleaning','Window Wranglers',
 'https://windowwranglers.com/','windowwranglers.com','Current Prescott window-cleaning candidate.','assistant vendor census: Prescott Window Cleaning',0,
 null,'(928) 463-5393',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott window-cleaning candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','window_cleaning','Window Cleaning','Clearly Clean Window Cleaners',
 'https://www.yellowpages.com/prescott-az/janitorial-service','yellowpages.com','Current Prescott window-cleaning candidate.','assistant vendor census: Prescott Window Cleaning',0,
 null,'(928) 299-1903',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott window-cleaning candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','window_cleaning','Window Cleaning','Platinum Edge Services',
 'https://platinumedgeservices.com/contact.html','platinumedgeservices.com','Current Prescott window-cleaning candidate.','assistant vendor census: Prescott Window Cleaning',0,
 null,'(928) 227-5725',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott window-cleaning candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','window_cleaning','Window Cleaning','Just Windows',
 'https://www.yellowpages.com/prescott-az/janitorial-service','yellowpages.com','Current Prescott window-cleaning candidate.','assistant vendor census: Prescott Window Cleaning',0,
 null,'(928) 420-0362',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott window-cleaning candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','pressure_washing','Pressure Washing','American Crown Commercial Cleaning',
 'https://americancrowncc.com/','americancrowncc.com','Current Prescott/Quad-City pressure-washing or commercial property-maintenance candidate.','assistant vendor census: Prescott Pressure Washing',0,
 null,'(928) 250-0490',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott/Quad-City pressure-washing or commercial property-maintenance candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','pressure_washing','Pressure Washing','Window Wranglers',
 'https://windowwranglers.com/','windowwranglers.com','Current Prescott/Quad-City pressure-washing or commercial property-maintenance candidate.','assistant vendor census: Prescott Pressure Washing',0,
 null,'(928) 463-5393',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott/Quad-City pressure-washing or commercial property-maintenance candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','pressure_washing','Pressure Washing','Clearly Clean Window Cleaners',
 'https://americancrowncc.com/','americancrowncc.com','Current Prescott/Quad-City pressure-washing or commercial property-maintenance candidate.','assistant vendor census: Prescott Pressure Washing',0,
 null,'(928) 299-1903',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott/Quad-City pressure-washing or commercial property-maintenance candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','pressure_washing','Pressure Washing','Platinum Edge Services',
 'https://platinumedgeservices.com/','platinumedgeservices.com','Current Prescott/Quad-City pressure-washing or commercial property-maintenance candidate.','assistant vendor census: Prescott Pressure Washing',0,
 null,'(928) 227-5725',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott/Quad-City pressure-washing or commercial property-maintenance candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','pressure_washing','Pressure Washing','Swept Away AZ, LLC',
 'https://sweptawayaz.com/','sweptawayaz.com','Current Prescott/Quad-City pressure-washing or commercial property-maintenance candidate.','assistant vendor census: Prescott Pressure Washing',0,
 null,'(928) 775-0405',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott/Quad-City pressure-washing or commercial property-maintenance candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','garage_door','Garage Door Repair','A1 Garage Door Service',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott/Quad-City garage-door repair/installation provider.','assistant vendor census: Prescott Garage Door Repair',0,
 null,'(928) 361-0478',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott/Quad-City garage-door repair/installation provider."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','garage_door','Garage Door Repair','Iconic Garage Door Services',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott/Quad-City garage-door repair/installation provider.','assistant vendor census: Prescott Garage Door Repair',0,
 null,'(928) 216-4210',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott/Quad-City garage-door repair/installation provider."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','garage_door','Garage Door Repair','Neumann High Country Doors',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott/Quad-City garage-door repair/installation provider.','assistant vendor census: Prescott Garage Door Repair',0,
 null,'(928) 772-9738',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott/Quad-City garage-door repair/installation provider."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','locksmith_access','Locks & Access Control','High Desert Lock and Safe',
 'https://web.prescott.org/v12/directory/index.aspx','web.prescott.org','Current Prescott locksmith/safe company serving the Quad City area.','assistant vendor census: Prescott Locks & Access Control',0,
 null,'(928) 445-0197',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Prescott locksmith/safe company serving the Quad City area."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','fire_safety','Fire Safety & Extinguisher Service','All West Fire Protection Systems LLC',
 'https://prescott-az.gov/wp-content/uploads/2025/10/WAT-List_of_Approved_Backflow_Prevention_Assembly_Testers-20251007.pdf','prescott-az.gov','City of Prescott approved backflow tester and local fire-protection company at 2957 State Route 89.','assistant vendor census: Prescott Fire Safety & Extinguisher Service',0,
 null,'(928) 776-7861',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"City of Prescott approved backflow tester and local fire-protection company at 2957 State Route 89."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','fire_safety','Fire Safety & Extinguisher Service','Life & Property Safety LLC',
 'https://prescott-az.gov/wp-content/uploads/2025/10/WAT-List_of_Approved_Backflow_Prevention_Assembly_Testers-20251007.pdf','prescott-az.gov','City of Prescott approved backflow tester/local life-safety service company.','assistant vendor census: Prescott Fire Safety & Extinguisher Service',0,
 null,'(928) 910-6213',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"City of Prescott approved backflow tester/local life-safety service company."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','Dave Morano',
 'https://prescott-az.gov/wp-content/uploads/2025/10/WAT-List_of_Approved_Backflow_Prevention_Assembly_Testers-20251007.pdf','prescott-az.gov','City of Prescott approved backflow-prevention assembly tester.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,'(928) 713-1606',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"City of Prescott approved backflow-prevention assembly tester."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','parking_lot','Parking Lot Cleaning & Striping','Swept Away AZ, LLC',
 'https://sweptawayaz.com/','sweptawayaz.com','Current commercial-property maintenance provider performing parking-lot sweeping, pressure washing, porter work and seasonal services throughout Prescott Quad-City.','assistant vendor census: Prescott Parking Lot Cleaning & Striping',0,
 null,'(928) 775-0405',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current commercial-property maintenance provider performing parking-lot sweeping, pressure washing, porter work and seasonal services throughout Prescott Quad-City."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','pressure_washing','Pressure Washing','Bear Backflow and Pressure Washing LLC',
 'https://prescott-az.gov/wp-content/uploads/2025/10/WAT-List_of_Approved_Backflow_Prevention_Assembly_Testers-20251007.pdf','prescott-az.gov','City of Prescott approved backflow tester; company name explicitly includes pressure washing.','assistant vendor census: Prescott Pressure Washing',0,
 null,'(928) 515-4516',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"City of Prescott approved backflow tester; company name explicitly includes pressure washing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','Bear Backflow and Pressure Washing LLC',
 'https://prescott-az.gov/wp-content/uploads/2025/10/WAT-List_of_Approved_Backflow_Prevention_Assembly_Testers-20251007.pdf','prescott-az.gov','City of Prescott approved backflow tester serving Prescott area.','assistant vendor census: Prescott Backflow & Commercial Plumbing',0,
 null,'(928) 515-4516',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_vendors_02","researched_at":"2026-10-27T01:47:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"City of Prescott approved backflow tester serving Prescott area."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

update market_inventory_progress p set official_candidates=(
 select count(*) from market_inventory_candidates c where c.side=p.side and c.market=p.market
 and c.category_key=p.category_key and c.status='discovered' and c.query_strategy_version=7 and c.official_site=true
),updated_at=now() where p.market='Prescott';


-- Assistant-led verified Prescott batch 03 (2026-10-26)
insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','backflow_plumbing','Backflow & Commercial Plumbing','Franklin Plumbing Services Inc.',
 'https://franklinplumbingaz.com/','franklinplumbingaz.com','Direct Prescott company site lists 690 6th Street and explicitly offers commercial, residential and 24/7 emergency plumbing.','assistant verified research: Prescott Backflow & Commercial Plumbing',0,
 'brian@franklinservicesaz.com','928-445-1045',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_verified_03","researched_at":"2026-10-27T01:55:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct Prescott company site lists 690 6th Street and explicitly offers commercial, residential and 24/7 emergency plumbing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,source_tier='direct',verification_status='direct_evidence',last_verified_at=now(),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','hvac_heat','Heating & Air','Comfort Pro Heating & Cooling, Inc.',
 'https://www.comfortproaz.com/','comfortproaz.com','Direct company site lists Prescott office at 1630 Shoup St and service to Prescott/Quad City homes and workplaces.','assistant verified research: Prescott Heating & Air',0,
 'office@comfortproaz.com','(928) 899-4250',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_verified_03","researched_at":"2026-10-27T01:55:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct company site lists Prescott office at 1630 Shoup St and service to Prescott/Quad City homes and workplaces."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,source_tier='direct',verification_status='direct_evidence',last_verified_at=now(),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','electrical_service','Electrician','S & M Electric',
 'https://sandmelectricinc.com/contact-us/','sandmelectricinc.com','Direct contractor site lists Prescott office at 3 Kiji Dava Dr Suite B and current electrical service operation.','assistant verified research: Prescott Electrician',0,
 null,'(928) 778-1871',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_verified_03","researched_at":"2026-10-27T01:55:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct contractor site lists Prescott office at 3 Kiji Dava Dr Suite B and current electrical service operation."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,source_tier='direct',verification_status='direct_evidence',last_verified_at=now(),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','landscaping','Landscaping & Yard Cleanup','Aspen Landscaping',
 'https://www.aspenlandscapinginc.com/','aspenlandscapinginc.com','Direct site lists Prescott office at 625 5th St and explicitly provides residential and commercial landscaping, maintenance and irrigation.','assistant verified research: Prescott Landscaping & Yard Cleanup',0,
 'info@aspenlandscapinginc.com','928-775-2573',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_verified_03","researched_at":"2026-10-27T01:55:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site lists Prescott office at 625 5th St and explicitly provides residential and commercial landscaping, maintenance and irrigation."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,source_tier='direct',verification_status='direct_evidence',last_verified_at=now(),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','landscaping','Landscaping & Yard Cleanup','Yavapai Landscaping Prescott',
 'https://yavapailandscaping.com/prescott/','yavapailandscaping.com','Direct Prescott page lists 1106 E Gurley St and commercial/residential landscaping, irrigation, FireWise and maintenance services.','assistant verified research: Prescott Landscaping & Yard Cleanup',0,
 'office@yavapailandscaping.com','928-910-4147',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_verified_03","researched_at":"2026-10-27T01:55:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct Prescott page lists 1106 E Gurley St and commercial/residential landscaping, irrigation, FireWise and maintenance services."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,source_tier='direct',verification_status='direct_evidence',last_verified_at=now(),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','commercial_cleaning','Commercial Cleaning','American Crown Commercial Cleaning',
 'https://americancrowncc.com/','americancrowncc.com','Direct site identifies Prescott commercial cleaning company for large buildings, professional offices and restaurants; services include janitorial, event, construction cleanup and sanitizing.','assistant verified research: Prescott Commercial Cleaning',0,
 'donna@americancrowncc.com','(928) 250-0490',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_verified_03","researched_at":"2026-10-27T01:55:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site identifies Prescott commercial cleaning company for large buildings, professional offices and restaurants; services include janitorial, event, construction cleanup and sanitizing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,source_tier='direct',verification_status='direct_evidence',last_verified_at=now(),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','window_cleaning','Window Cleaning','American Crown Commercial Cleaning',
 'https://americancrowncc.com/','americancrowncc.com','Direct site explicitly lists commercial window cleaning in Prescott.','assistant verified research: Prescott Window Cleaning',0,
 'donna@americancrowncc.com','(928) 250-0490',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_verified_03","researched_at":"2026-10-27T01:55:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site explicitly lists commercial window cleaning in Prescott."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,source_tier='direct',verification_status='direct_evidence',last_verified_at=now(),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','pressure_washing','Pressure Washing','American Crown Commercial Cleaning',
 'https://americancrowncc.com/','americancrowncc.com','Direct site explicitly lists pressure/surface cleaning for Prescott commercial clients.','assistant verified research: Prescott Pressure Washing',0,
 'donna@americancrowncc.com','(928) 250-0490',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_verified_03","researched_at":"2026-10-27T01:55:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site explicitly lists pressure/surface cleaning for Prescott commercial clients."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,source_tier='direct',verification_status='direct_evidence',last_verified_at=now(),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','hood_exhaust','Hood & Exhaust Cleaning','American Crown Commercial Cleaning',
 'https://americancrowncc.com/','americancrowncc.com','Direct site says company performs commercial kitchen/restaurant cleaning and is NFPA 96/MFS certified.','assistant verified research: Prescott Hood & Exhaust Cleaning',0,
 'donna@americancrowncc.com','(928) 250-0490',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_verified_03","researched_at":"2026-10-27T01:55:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site says company performs commercial kitchen/restaurant cleaning and is NFPA 96/MFS certified."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,source_tier='direct',verification_status='direct_evidence',last_verified_at=now(),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','window_cleaning','Window Cleaning','Window Wranglers',
 'https://windowwranglers.com/','windowwranglers.com','Direct site lists Prescott address and commercial window cleaning plus gutter and pressure washing across Prescott/Yavapai County.','assistant verified research: Prescott Window Cleaning',0,
 'windowwranglers@gmail.com','(928) 463-5393',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_verified_03","researched_at":"2026-10-27T01:55:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site lists Prescott address and commercial window cleaning plus gutter and pressure washing across Prescott/Yavapai County."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,source_tier='direct',verification_status='direct_evidence',last_verified_at=now(),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','pressure_washing','Pressure Washing','Platinum Edge Services',
 'https://platinumedgeservices.com/contact.html','platinumedgeservices.com','Direct site identifies Prescott-based licensed/insured commercial fleet washing, commercial window cleaning and pressure washing company.','assistant verified research: Prescott Pressure Washing',0,
 'info@platinumedgeservices.com','(928) 227-5725',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_verified_03","researched_at":"2026-10-27T01:55:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site identifies Prescott-based licensed/insured commercial fleet washing, commercial window cleaning and pressure washing company."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,source_tier='direct',verification_status='direct_evidence',last_verified_at=now(),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','locksmith_access','Locks & Access Control','High Desert Lock and Safe',
 'https://www.highdesertlockaz.com/','highdesertlockaz.com','Direct site lists Prescott shop at 1201 Iron Springs Rd Suite 4 and commercial, residential and automotive locksmith/safe services.','assistant verified research: Prescott Locks & Access Control',0,
 null,'(928) 445-0197',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_verified_03","researched_at":"2026-10-27T01:55:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site lists Prescott shop at 1201 Iron Springs Rd Suite 4 and commercial, residential and automotive locksmith/safe services."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,source_tier='direct',verification_status='direct_evidence',last_verified_at=now(),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott','pest_control','Pest Control','Patriot Pest & Termite Control',
 'https://patriotpestprescott.com/','patriotpestprescott.com','Direct company domain corroborated by current Prescott-area REALTOR affiliate directory; current pest/termite control provider.','assistant verified research: Prescott Pest Control',0,
 null,'(928) 442-1566',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_verified_03","researched_at":"2026-10-27T01:55:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct company domain corroborated by current Prescott-area REALTOR affiliate directory; current pest/termite control provider."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,source_tier='direct',verification_status='direct_evidence',last_verified_at=now(),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','hotels_motels','hotels motels lodging','Prescott Resort and Conference Center',
 'https://www.prescottresort.com/','prescottresort.com','Direct resort site lists 160 guest rooms, restaurant/bar, spa, pool and 17,000 sq ft of meeting/event space at 1500 E State Route 69.','assistant verified research: Prescott hotels motels lodging',0,
 'info@prescottresort.com','(928) 227-2313',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_verified_03","researched_at":"2026-10-27T01:55:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct resort site lists 160 guest rooms, restaurant/bar, spa, pool and 17,000 sq ft of meeting/event space at 1500 E State Route 69."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,source_tier='direct',verification_status='direct_evidence',last_verified_at=now(),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','hotels_motels','hotels motels lodging','Hassayampa Inn & Conference Center',
 'https://www.hassayampainn.com/','hassayampainn.com','Direct hotel site lists 122 E Gurley St, Prescott and active lodging, restaurant, laundry/back-of-house and conference operations.','assistant verified research: Prescott hotels motels lodging',0,
 'gm@hassayampainn.com','928-778-9434',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_verified_03","researched_at":"2026-10-27T01:55:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct hotel site lists 122 E Gurley St, Prescott and active lodging, restaurant, laundry/back-of-house and conference operations."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,source_tier='direct',verification_status='direct_evidence',last_verified_at=now(),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','hotels_motels','hotels motels lodging','Hotel St. Michael',
 'https://www.stmichaelhotel.com/','stmichaelhotel.com','Direct hotel site lists 205 W Gurley St, Prescott with active rooms, restaurant/cocktail operations and Whiskey Row location.','assistant verified research: Prescott hotels motels lodging',0,
 'frontdesk@stmichaelhotel.com','928-776-1999',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_verified_03","researched_at":"2026-10-27T01:55:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct hotel site lists 205 W Gurley St, Prescott with active rooms, restaurant/cocktail operations and Whiskey Row location."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,source_tier='direct',verification_status='direct_evidence',last_verified_at=now(),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','schools','schools charter schools private schools','Prescott Unified School District',
 'https://www.prescottschools.com/','prescottschools.com','Official district site lists district office at 300 E Gurley St and active K-12 facilities, transportation and student nutrition operations.','assistant verified research: Prescott schools charter schools private schools',0,
 'info@prescottschools.com','928-445-5400',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_verified_03","researched_at":"2026-10-27T01:55:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official district site lists district office at 300 E Gurley St and active K-12 facilities, transportation and student nutrition operations."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,source_tier='direct',verification_status='direct_evidence',last_verified_at=now(),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','schools','schools charter schools private schools','Yavapai College - Prescott Campus',
 'https://www.yc.edu/','yc.edu','Official college site identifies Prescott as a full-service campus with academic, residential, athletics, event and community facilities.','assistant verified research: Prescott schools charter schools private schools',0,
 'yc.admission@yc.edu','928-445-7300',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_verified_03","researched_at":"2026-10-27T01:55:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official college site identifies Prescott as a full-service campus with academic, residential, athletics, event and community facilities."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,source_tier='direct',verification_status='direct_evidence',last_verified_at=now(),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','public_facilities','government public facilities municipal buildings','City of Prescott',
 'https://prescott-az.gov/','prescott-az.gov','Official municipal site identifies active city departments, maintenance, utilities, recreation, public safety and government facilities.','assistant verified research: Prescott government public facilities municipal buildings',0,
 null,null,true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_verified_03","researched_at":"2026-10-27T01:55:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official municipal site identifies active city departments, maintenance, utilities, recreation, public safety and government facilities."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,source_tier='direct',verification_status='direct_evidence',last_verified_at=now(),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Prescott','medical_centers','hospitals medical centers clinics','Yavapai Regional Medical Center',
 'https://hsapps.azdhs.gov/ls/sod/Facility.aspx?FacId=MED0261','hsapps.azdhs.gov','Official Arizona licensing record: active 134-bed short-term hospital at 1003 Willow Creek Road, Prescott; license active through May 31, 2027.','assistant verified research: Prescott hospitals medical centers clinics',0,
 null,'(928) 445-2700',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_verified_03","researched_at":"2026-10-27T01:55:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official Arizona licensing record: active 134-bed short-term hospital at 1003 Willow Creek Road, Prescott; license active through May 31, 2027."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,source_tier='direct',verification_status='direct_evidence',last_verified_at=now(),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

update market_inventory_progress p set official_candidates=(
 select count(*) from market_inventory_candidates c where c.side=p.side and c.market=p.market
 and c.category_key=p.category_key and c.status='discovered' and c.query_strategy_version=7 and c.official_site=true
),updated_at=now() where p.market='Prescott';


-- Assistant-led Phoenix hospitality/retail census batch 01 (2026-10-26)
insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','hotels_motels','hotels motels lodging','AC Element Phoenix North Norterra',
 'https://business.phoenixchamber.com/list/category/hotels-motels-and-resorts-56','business.phoenixchamber.com','Current Greater Phoenix Chamber hotel/resort listing with Phoenix address.','assistant census research: Phoenix hotels motels lodging',0,
 null,'(602) 837-2510',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber hotel/resort listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','hotels_motels','hotels motels lodging','AC Hotel Phoenix Downtown',
 'https://business.phoenixchamber.com/list/category/hotels-motels-and-resorts-56','business.phoenixchamber.com','Current Greater Phoenix Chamber hotel/resort listing with Phoenix address.','assistant census research: Phoenix hotels motels lodging',0,
 null,'(602) 258-1771',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber hotel/resort listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','hotels_motels','hotels motels lodging','Arizona Grand Resort & Spa',
 'https://business.phoenixchamber.com/list/category/hotels-motels-and-resorts-56','business.phoenixchamber.com','Current Greater Phoenix Chamber hotel/resort listing with Phoenix address.','assistant census research: Phoenix hotels motels lodging',0,
 null,'(602) 438-9000',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber hotel/resort listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','hotels_motels','hotels motels lodging','Courtyard & Residence Inn by Marriott Downtown Phoenix',
 'https://business.phoenixchamber.com/list/category/hotels-motels-and-resorts-56','business.phoenixchamber.com','Current Greater Phoenix Chamber hotel/resort listing with Phoenix address.','assistant census research: Phoenix hotels motels lodging',0,
 null,'(602) 603-2000',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber hotel/resort listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','hotels_motels','hotels motels lodging','Denu Hotel & Spa',
 'https://business.phoenixchamber.com/list/category/hotels-motels-and-resorts-56','business.phoenixchamber.com','Current Greater Phoenix Chamber hotel/resort listing with Phoenix address.','assistant census research: Phoenix hotels motels lodging',0,
 null,'(888) 211-2282',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber hotel/resort listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','hotels_motels','hotels motels lodging','DoubleTree by Hilton Phoenix Midtown',
 'https://business.phoenixchamber.com/list/category/hotels-motels-and-resorts-56','business.phoenixchamber.com','Current Greater Phoenix Chamber hotel/resort listing with Phoenix address.','assistant census research: Phoenix hotels motels lodging',0,
 null,'(602) 279-9811',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber hotel/resort listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','hotels_motels','hotels motels lodging','Hilton Phoenix Tapatio Cliffs Resort',
 'https://business.phoenixchamber.com/list/category/hotels-motels-and-resorts-56','business.phoenixchamber.com','Current Greater Phoenix Chamber hotel/resort listing with Phoenix address.','assistant census research: Phoenix hotels motels lodging',0,
 null,'(602) 866-7500',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber hotel/resort listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','hotels_motels','hotels motels lodging','Holiday Inn Express & Suites Phoenix Downtown-State Capitol',
 'https://business.phoenixchamber.com/list/category/hotels-motels-and-resorts-56','business.phoenixchamber.com','Current Greater Phoenix Chamber hotel/resort listing with Phoenix address.','assistant census research: Phoenix hotels motels lodging',0,
 null,'(602) 675-2894',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber hotel/resort listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','hotels_motels','hotels motels lodging','Home2 Suites by Hilton Phoenix Downtown',
 'https://business.phoenixchamber.com/list/category/hotels-motels-and-resorts-56','business.phoenixchamber.com','Current Greater Phoenix Chamber hotel/resort listing with Phoenix address.','assistant census research: Phoenix hotels motels lodging',0,
 null,'(602) 603-1111',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber hotel/resort listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','hotels_motels','hotels motels lodging','Hyatt Place Phoenix/Downtown',
 'https://business.phoenixchamber.com/list/category/hotels-motels-and-resorts-56','business.phoenixchamber.com','Current Greater Phoenix Chamber hotel/resort listing with Phoenix address.','assistant census research: Phoenix hotels motels lodging',0,
 null,'(602) 388-4888',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber hotel/resort listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','hotels_motels','hotels motels lodging','Hyatt Regency Phoenix',
 'https://business.phoenixchamber.com/list/category/hotels-motels-and-resorts-56','business.phoenixchamber.com','Current Greater Phoenix Chamber hotel/resort listing with Phoenix address.','assistant census research: Phoenix hotels motels lodging',0,
 null,'(602) 252-1234',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber hotel/resort listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','hotels_motels','hotels motels lodging','JW Marriott Phoenix Desert Ridge Resort & Spa',
 'https://business.phoenixchamber.com/list/category/hotels-motels-and-resorts-56','business.phoenixchamber.com','Current Greater Phoenix Chamber hotel/resort listing with Phoenix address.','assistant census research: Phoenix hotels motels lodging',0,
 null,'(480) 293-5000',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber hotel/resort listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','hotels_motels','hotels motels lodging','Moxy Phoenix Downtown',
 'https://business.phoenixchamber.com/list/category/hotels-motels-and-resorts-56','business.phoenixchamber.com','Current Greater Phoenix Chamber hotel/resort listing with Phoenix address.','assistant census research: Phoenix hotels motels lodging',0,
 null,'(623) 291-1200',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber hotel/resort listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','hotels_motels','hotels motels lodging','Placemakr Downtown Phoenix',
 'https://business.phoenixchamber.com/list/category/hotels-motels-and-resorts-56','business.phoenixchamber.com','Current Greater Phoenix Chamber hotel/resort listing with Phoenix address.','assistant census research: Phoenix hotels motels lodging',0,
 null,'(623) 745-4202',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber hotel/resort listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','hotels_motels','hotels motels lodging','Sheraton Phoenix Downtown',
 'https://business.phoenixchamber.com/list/category/hotels-motels-and-resorts-56','business.phoenixchamber.com','Current Greater Phoenix Chamber hotel/resort listing with Phoenix address.','assistant census research: Phoenix hotels motels lodging',0,
 null,'(602) 262-2500',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber hotel/resort listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','hotels_motels','hotels motels lodging','Staybridge Suites Phoenix-Biltmore',
 'https://business.phoenixchamber.com/list/category/hotels-motels-and-resorts-56','business.phoenixchamber.com','Current Greater Phoenix Chamber hotel/resort listing with Phoenix address.','assistant census research: Phoenix hotels motels lodging',0,
 null,'(602) 224-0012',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber hotel/resort listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','hotels_motels','hotels motels lodging','Arizona Biltmore, LXR Hotels & Resorts',
 'https://business.phoenixchamber.com/list/category/hotels-motels-and-resorts-56','business.phoenixchamber.com','Current Greater Phoenix Chamber hotel/resort listing with Phoenix address.','assistant census research: Phoenix hotels motels lodging',0,
 null,'(602) 955-6600',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber hotel/resort listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','hotels_motels','hotels motels lodging','The Westin Phoenix Downtown',
 'https://business.phoenixchamber.com/list/category/hotels-motels-and-resorts-56','business.phoenixchamber.com','Current Greater Phoenix Chamber hotel/resort listing with Phoenix address.','assistant census research: Phoenix hotels motels lodging',0,
 null,'(602) 429-3500',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber hotel/resort listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','Aventura Catering',
 'https://business.phoenixchamber.com/list/ql/restaurants-food-beverages-22','business.phoenixchamber.com','Current Greater Phoenix Chamber food/beverage listing with Phoenix address.','assistant census research: Phoenix restaurants',0,
 null,'(602) 534-8607',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber food/beverage listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','B&B Market',
 'https://business.phoenixchamber.com/list/ql/restaurants-food-beverages-22','business.phoenixchamber.com','Current Greater Phoenix Chamber food/beverage listing with Phoenix address.','assistant census research: Phoenix restaurants',0,
 null,'(602) 440-3185',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber food/beverage listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','Backyard Desert Ridge',
 'https://business.phoenixchamber.com/list/ql/restaurants-food-beverages-22','business.phoenixchamber.com','Current Greater Phoenix Chamber food/beverage listing with Phoenix address.','assistant census research: Phoenix restaurants',0,
 null,'(480) 585-5900',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber food/beverage listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','Bagel Brands DBA Einstein Bros Bagels - 32nd St',
 'https://business.phoenixchamber.com/list/ql/restaurants-food-beverages-22','business.phoenixchamber.com','Current Greater Phoenix Chamber food/beverage listing with Phoenix address.','assistant census research: Phoenix restaurants',0,
 null,'(606) 362-0201',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber food/beverage listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','Barrel & Bushel',
 'https://business.phoenixchamber.com/list/ql/restaurants-food-beverages-22','business.phoenixchamber.com','Current Greater Phoenix Chamber food/beverage listing with Phoenix address.','assistant census research: Phoenix restaurants',0,
 null,'(602) 523-3222',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber food/beverage listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','Black Rifle Coffee Company - Indian School',
 'https://business.phoenixchamber.com/list/ql/restaurants-food-beverages-22','business.phoenixchamber.com','Current Greater Phoenix Chamber food/beverage listing with Phoenix address.','assistant census research: Phoenix restaurants',0,
 null,'(210) 891-0385',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber food/beverage listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','Compass Arizona Grill & Lounge at Hyatt Regency Phoenix',
 'https://business.phoenixchamber.com/list/ql/restaurants-food-beverages-22','business.phoenixchamber.com','Current Greater Phoenix Chamber food/beverage listing with Phoenix address.','assistant census research: Phoenix restaurants',0,
 null,'(602) 440-3166',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber food/beverage listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','Denny''s - Deer Valley',
 'https://business.phoenixchamber.com/list/ql/restaurants-food-beverages-22','business.phoenixchamber.com','Current Greater Phoenix Chamber food/beverage listing with Phoenix address.','assistant census research: Phoenix restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber food/beverage listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','Dog Haus Biergarten Downtown Phoenix',
 'https://business.phoenixchamber.com/list/ql/restaurants-food-beverages-22','business.phoenixchamber.com','Current Greater Phoenix Chamber food/beverage listing with Phoenix address.','assistant census research: Phoenix restaurants',0,
 null,'(480) 910-5430',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber food/beverage listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','Fabulous Food',
 'https://business.phoenixchamber.com/list/ql/restaurants-food-beverages-22','business.phoenixchamber.com','Current Greater Phoenix Chamber food/beverage listing with Phoenix address.','assistant census research: Phoenix restaurants',0,
 null,'(602) 267-1818',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber food/beverage listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','Fairytale Brownies, Inc.',
 'https://business.phoenixchamber.com/list/ql/restaurants-food-beverages-22','business.phoenixchamber.com','Current Greater Phoenix Chamber food/beverage listing with Phoenix address.','assistant census research: Phoenix restaurants',0,
 null,'(800) 531-5209',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber food/beverage listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','Frank & Albert''s Restaurant at the Arizona Biltmore',
 'https://business.phoenixchamber.com/list/ql/restaurants-food-beverages-22','business.phoenixchamber.com','Current Greater Phoenix Chamber food/beverage listing with Phoenix address.','assistant census research: Phoenix restaurants',0,
 null,'(602) 955-6600',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber food/beverage listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','McDonald''s - Bell Rd',
 'https://business.phoenixchamber.com/list/ql/restaurants-food-beverages-22','business.phoenixchamber.com','Current Greater Phoenix Chamber food/beverage listing with Phoenix address.','assistant census research: Phoenix restaurants',0,
 null,'(602) 993-3413',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber food/beverage listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','McDonald''s - E Bell Rd',
 'https://business.phoenixchamber.com/list/ql/restaurants-food-beverages-22','business.phoenixchamber.com','Current Greater Phoenix Chamber food/beverage listing with Phoenix address.','assistant census research: Phoenix restaurants',0,
 null,'(602) 993-3151',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber food/beverage listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','McDonald''s - Deer Valley Rd',
 'https://business.phoenixchamber.com/list/ql/restaurants-food-beverages-22','business.phoenixchamber.com','Current Greater Phoenix Chamber food/beverage listing with Phoenix address.','assistant census research: Phoenix restaurants',0,
 null,'(623) 581-1879',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber food/beverage listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','McDonald''s - Sky Harbor Terminal 4',
 'https://business.phoenixchamber.com/list/ql/restaurants-food-beverages-22','business.phoenixchamber.com','Current Greater Phoenix Chamber food/beverage listing with Phoenix address.','assistant census research: Phoenix restaurants',0,
 null,'(602) 273-2642',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber food/beverage listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','MERITAGE - An Urban Tavern at JW Marriott Desert Ridge',
 'https://business.phoenixchamber.com/list/ql/restaurants-food-beverages-22','business.phoenixchamber.com','Current Greater Phoenix Chamber food/beverage listing with Phoenix address.','assistant census research: Phoenix restaurants',0,
 null,'(480) 293-5000',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber food/beverage listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','Mi Patio',
 'https://business.phoenixchamber.com/list/ql/restaurants-food-beverages-22','business.phoenixchamber.com','Current Greater Phoenix Chamber food/beverage listing with Phoenix address.','assistant census research: Phoenix restaurants',0,
 null,'(602) 277-4831',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber food/beverage listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','Mountain Mike''s Pizza - 99th Ave',
 'https://business.phoenixchamber.com/list/ql/restaurants-food-beverages-22','business.phoenixchamber.com','Current Greater Phoenix Chamber food/beverage listing with Phoenix address.','assistant census research: Phoenix restaurants',0,
 null,'(602) 533-0125',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber food/beverage listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','Network Bar & Grill at Hyatt Regency Phoenix',
 'https://business.phoenixchamber.com/list/ql/restaurants-food-beverages-22','business.phoenixchamber.com','Current Greater Phoenix Chamber food/beverage listing with Phoenix address.','assistant census research: Phoenix restaurants',0,
 null,'(602) 440-3198',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber food/beverage listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','Nothing Bundt Cakes - Baseline',
 'https://business.phoenixchamber.com/list/ql/restaurants-food-beverages-22','business.phoenixchamber.com','Current Greater Phoenix Chamber food/beverage listing with Phoenix address.','assistant census research: Phoenix restaurants',0,
 null,'(915) 309-6922',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber food/beverage listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','Ocean Prime Phoenix',
 'https://business.phoenixchamber.com/list/ql/restaurants-food-beverages-22','business.phoenixchamber.com','Current Greater Phoenix Chamber food/beverage listing with Phoenix address.','assistant census research: Phoenix restaurants',0,
 null,'(480) 347-1313',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber food/beverage listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','Panda Express - Glendale Ave',
 'https://business.phoenixchamber.com/list/ql/restaurants-food-beverages-22','business.phoenixchamber.com','Current Greater Phoenix Chamber food/beverage listing with Phoenix address.','assistant census research: Phoenix restaurants',0,
 null,'(602) 848-2979',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber food/beverage listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','Pedal Haus Brewery Phoenix',
 'https://business.phoenixchamber.com/list/ql/restaurants-food-beverages-22','business.phoenixchamber.com','Current Greater Phoenix Chamber food/beverage listing with Phoenix address.','assistant census research: Phoenix restaurants',0,
 null,'(623) 213-8229',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber food/beverage listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','Pete''s Fish & Chips - 44th St',
 'https://business.phoenixchamber.com/list/ql/restaurants-food-beverages-22','business.phoenixchamber.com','Current Greater Phoenix Chamber food/beverage listing with Phoenix address.','assistant census research: Phoenix restaurants',0,
 null,'(602) 840-0630',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber food/beverage listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','The Old Spaghetti Factory - Phoenix',
 'https://business.phoenixchamber.com/list/ql/restaurants-food-beverages-22','business.phoenixchamber.com','Current Greater Phoenix Chamber food/beverage listing with Phoenix address.','assistant census research: Phoenix restaurants',0,
 null,'(602) 257-0380',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber food/beverage listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','Ocotillo Restaurant',
 'https://www.visitphoenix.com/greater-phoenix/phoenix/','visitphoenix.com','Current Phoenix dining/business listing from Visit Phoenix or current local-business evidence.','assistant census research: Phoenix restaurants',0,
 null,'(602) 687-9080',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Phoenix dining/business listing from Visit Phoenix or current local-business evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','Restaurant Progress',
 'https://www.visitphoenix.com/greater-phoenix/phoenix/','visitphoenix.com','Current Phoenix dining/business listing from Visit Phoenix or current local-business evidence.','assistant census research: Phoenix restaurants',0,
 null,'(602) 441-0553',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Phoenix dining/business listing from Visit Phoenix or current local-business evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','Welcome Diner',
 'https://www.visitphoenix.com/greater-phoenix/phoenix/','visitphoenix.com','Current Phoenix dining/business listing from Visit Phoenix or current local-business evidence.','assistant census research: Phoenix restaurants',0,
 null,'(602) 495-1111',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Phoenix dining/business listing from Visit Phoenix or current local-business evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','Richardson''s Restaurant',
 'https://www.visitphoenix.com/greater-phoenix/phoenix/','visitphoenix.com','Current Phoenix dining/business listing from Visit Phoenix or current local-business evidence.','assistant census research: Phoenix restaurants',0,
 null,'(602) 265-5886',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Phoenix dining/business listing from Visit Phoenix or current local-business evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','Rokerij',
 'https://www.visitphoenix.com/greater-phoenix/phoenix/','visitphoenix.com','Current Phoenix dining/business listing from Visit Phoenix or current local-business evidence.','assistant census research: Phoenix restaurants',0,
 null,'(602) 287-8900',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Phoenix dining/business listing from Visit Phoenix or current local-business evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','Rusconi''s American Kitchen',
 'https://www.visitphoenix.com/greater-phoenix/phoenix/','visitphoenix.com','Current Phoenix dining/business listing from Visit Phoenix or current local-business evidence.','assistant census research: Phoenix restaurants',0,
 null,'(480) 483-0009',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Phoenix dining/business listing from Visit Phoenix or current local-business evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','TexAZ Grill',
 'https://www.visitphoenix.com/greater-phoenix/phoenix/','visitphoenix.com','Current Phoenix dining/business listing from Visit Phoenix or current local-business evidence.','assistant census research: Phoenix restaurants',0,
 null,'(602) 248-7827',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Phoenix dining/business listing from Visit Phoenix or current local-business evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','Phoenix City Grille',
 'https://www.visitphoenix.com/greater-phoenix/phoenix/','visitphoenix.com','Current Phoenix dining/business listing from Visit Phoenix or current local-business evidence.','assistant census research: Phoenix restaurants',0,
 null,'(602) 266-3001',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Phoenix dining/business listing from Visit Phoenix or current local-business evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','First & Last',
 'https://www.visitphoenix.com/greater-phoenix/phoenix/','visitphoenix.com','Current Phoenix dining/business listing from Visit Phoenix or current local-business evidence.','assistant census research: Phoenix restaurants',0,
 null,'(602) 975-8297',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Phoenix dining/business listing from Visit Phoenix or current local-business evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','Pizzeria Bianco - Heritage Square',
 'https://www.visitphoenix.com/greater-phoenix/phoenix/','visitphoenix.com','Current Phoenix dining/business listing from Visit Phoenix or current local-business evidence.','assistant census research: Phoenix restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Phoenix dining/business listing from Visit Phoenix or current local-business evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','Arizona Wilderness Brewing Co. - Downtown',
 'https://www.visitphoenix.com/greater-phoenix/phoenix/','visitphoenix.com','Current Phoenix dining/business listing from Visit Phoenix or current local-business evidence.','assistant census research: Phoenix restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Phoenix dining/business listing from Visit Phoenix or current local-business evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','Huss Brewing Co. - Uptown',
 'https://www.visitphoenix.com/greater-phoenix/phoenix/','visitphoenix.com','Current Phoenix dining/business listing from Visit Phoenix or current local-business evidence.','assistant census research: Phoenix restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Phoenix dining/business listing from Visit Phoenix or current local-business evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','restaurants','restaurants','Little Rituals',
 'https://www.visitphoenix.com/greater-phoenix/phoenix/','visitphoenix.com','Current Phoenix dining/business listing from Visit Phoenix or current local-business evidence.','assistant census research: Phoenix restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Phoenix dining/business listing from Visit Phoenix or current local-business evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','theaters_entertainment','theaters cinemas entertainment venues','Arizona Exposition & State Fair',
 'https://business.phoenixchamber.com/list/category/entertainment-10072','business.phoenixchamber.com','Current Greater Phoenix Chamber entertainment/venue listing with Phoenix address.','assistant census research: Phoenix theaters cinemas entertainment venues',0,
 null,'(602) 252-6771',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber entertainment/venue listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','theaters_entertainment','theaters cinemas entertainment venues','Ballet Arizona',
 'https://business.phoenixchamber.com/list/category/entertainment-10072','business.phoenixchamber.com','Current Greater Phoenix Chamber entertainment/venue listing with Phoenix address.','assistant census research: Phoenix theaters cinemas entertainment venues',0,
 null,'(602) 381-0184',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber entertainment/venue listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','theaters_entertainment','theaters cinemas entertainment venues','Desert Ridge Marketplace',
 'https://business.phoenixchamber.com/list/category/entertainment-10072','business.phoenixchamber.com','Current Greater Phoenix Chamber entertainment/venue listing with Phoenix address.','assistant census research: Phoenix theaters cinemas entertainment venues',0,
 null,'(480) 513-7586',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber entertainment/venue listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','theaters_entertainment','theaters cinemas entertainment venues','Live Nation - Arizona Financial Theatre / The Van Buren / Talking Stick Resort Amphitheatre',
 'https://business.phoenixchamber.com/list/category/entertainment-10072','business.phoenixchamber.com','Current Greater Phoenix Chamber entertainment/venue listing with Phoenix address.','assistant census research: Phoenix theaters cinemas entertainment venues',0,
 null,'(602) 379-8257',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber entertainment/venue listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','theaters_entertainment','theaters cinemas entertainment venues','Live Nation Premium Seating - Phoenix',
 'https://business.phoenixchamber.com/list/category/entertainment-10072','business.phoenixchamber.com','Current Greater Phoenix Chamber entertainment/venue listing with Phoenix address.','assistant census research: Phoenix theaters cinemas entertainment venues',0,
 null,'(623) 518-1775',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber entertainment/venue listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','theaters_entertainment','theaters cinemas entertainment venues','Onstage Entertainment Group',
 'https://business.phoenixchamber.com/list/category/entertainment-10072','business.phoenixchamber.com','Current Greater Phoenix Chamber entertainment/venue listing with Phoenix address.','assistant census research: Phoenix theaters cinemas entertainment venues',0,
 null,'(480) 681-0444',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber entertainment/venue listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','theaters_entertainment','theaters cinemas entertainment venues','The Escape Game Phoenix',
 'https://business.phoenixchamber.com/list/category/entertainment-10072','business.phoenixchamber.com','Current Greater Phoenix Chamber entertainment/venue listing with Phoenix address.','assistant census research: Phoenix theaters cinemas entertainment venues',0,
 null,'(623) 745-1862',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber entertainment/venue listing with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','theaters_entertainment','theaters cinemas entertainment venues','S''edav Va''aki Museum',
 'https://www.visitphoenix.com/things-to-do/arts-culture/museums/','visitphoenix.com','Current Visit Phoenix museum/cultural attraction with Phoenix address.','assistant census research: Phoenix theaters cinemas entertainment venues',0,
 null,'(602) 495-0901',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Visit Phoenix museum/cultural attraction with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','theaters_entertainment','theaters cinemas entertainment venues','Arizona Science Center',
 'https://www.visitphoenix.com/things-to-do/arts-culture/museums/','visitphoenix.com','Current Visit Phoenix museum/cultural attraction with Phoenix address.','assistant census research: Phoenix theaters cinemas entertainment venues',0,
 null,'(602) 716-2000',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Visit Phoenix museum/cultural attraction with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','theaters_entertainment','theaters cinemas entertainment venues','Children''s Museum of Phoenix',
 'https://www.visitphoenix.com/things-to-do/arts-culture/museums/','visitphoenix.com','Current Visit Phoenix museum/cultural attraction with Phoenix address.','assistant census research: Phoenix theaters cinemas entertainment venues',0,
 null,'(602) 253-0501',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Visit Phoenix museum/cultural attraction with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','theaters_entertainment','theaters cinemas entertainment venues','FOUND:RE Contemporary',
 'https://www.visitphoenix.com/things-to-do/arts-culture/museums/','visitphoenix.com','Current Visit Phoenix museum/cultural attraction with Phoenix address.','assistant census research: Phoenix theaters cinemas entertainment venues',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Visit Phoenix museum/cultural attraction with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','theaters_entertainment','theaters cinemas entertainment venues','Hall of Flame Museum of Firefighting',
 'https://www.visitphoenix.com/things-to-do/arts-culture/museums/','visitphoenix.com','Current Visit Phoenix museum/cultural attraction with Phoenix address.','assistant census research: Phoenix theaters cinemas entertainment venues',0,
 null,'(602) 275-3473',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Visit Phoenix museum/cultural attraction with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','theaters_entertainment','theaters cinemas entertainment venues','Heard Museum',
 'https://www.visitphoenix.com/things-to-do/arts-culture/museums/','visitphoenix.com','Current Visit Phoenix museum/cultural attraction with Phoenix address.','assistant census research: Phoenix theaters cinemas entertainment venues',0,
 null,'(602) 252-8840',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Visit Phoenix museum/cultural attraction with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','theaters_entertainment','theaters cinemas entertainment venues','Musical Instrument Museum',
 'https://www.visitphoenix.com/things-to-do/arts-culture/museums/','visitphoenix.com','Current Visit Phoenix museum/cultural attraction with Phoenix address.','assistant census research: Phoenix theaters cinemas entertainment venues',0,
 null,'(480) 478-6000',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Visit Phoenix museum/cultural attraction with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','theaters_entertainment','theaters cinemas entertainment venues','Penske Racing Museum',
 'https://www.visitphoenix.com/things-to-do/arts-culture/museums/','visitphoenix.com','Current Visit Phoenix museum/cultural attraction with Phoenix address.','assistant census research: Phoenix theaters cinemas entertainment venues',0,
 null,'(480) 538-4444',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Visit Phoenix museum/cultural attraction with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','theaters_entertainment','theaters cinemas entertainment venues','Phoenix Art Museum',
 'https://www.visitphoenix.com/things-to-do/arts-culture/museums/','visitphoenix.com','Current Visit Phoenix museum/cultural attraction with Phoenix address.','assistant census research: Phoenix theaters cinemas entertainment venues',0,
 null,'(602) 257-1880',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Visit Phoenix museum/cultural attraction with Phoenix address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','theaters_entertainment','theaters cinemas entertainment venues','Footprint Center',
 'https://www.visitphoenix.com/greater-phoenix/phoenix/','visitphoenix.com','Major current Downtown Phoenix event/sports/convention facility.','assistant census research: Phoenix theaters cinemas entertainment venues',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Major current Downtown Phoenix event/sports/convention facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','theaters_entertainment','theaters cinemas entertainment venues','Chase Field',
 'https://www.visitphoenix.com/greater-phoenix/phoenix/','visitphoenix.com','Major current Downtown Phoenix event/sports/convention facility.','assistant census research: Phoenix theaters cinemas entertainment venues',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Major current Downtown Phoenix event/sports/convention facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','theaters_entertainment','theaters cinemas entertainment venues','Phoenix Convention Center',
 'https://www.visitphoenix.com/greater-phoenix/phoenix/','visitphoenix.com','Major current Downtown Phoenix event/sports/convention facility.','assistant census research: Phoenix theaters cinemas entertainment venues',0,
 null,'(602) 262-6225',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Major current Downtown Phoenix event/sports/convention facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','theaters_entertainment','theaters cinemas entertainment venues','810 Billiards & Bowling - CityScape',
 'https://www.visitphoenix.com/greater-phoenix/phoenix/','visitphoenix.com','Major current Downtown Phoenix event/sports/convention facility.','assistant census research: Phoenix theaters cinemas entertainment venues',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Major current Downtown Phoenix event/sports/convention facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','retail','retail stores shopping stores','Amazon - W Mohave St',
 'https://business.phoenixchamber.com/list/ql/shopping-specialty-retail-23','business.phoenixchamber.com','Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address.','assistant census research: Phoenix retail stores shopping stores',0,
 null,'(602) 353-5961',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','retail','retail stores shopping stores','The UPS Store #5340 - N 19th Ave',
 'https://business.phoenixchamber.com/list/ql/shopping-specialty-retail-23','business.phoenixchamber.com','Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address.','assistant census research: Phoenix retail stores shopping stores',0,
 null,'(602) 864-3646',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','retail','retail stores shopping stores','Boot Barn - W Peoria Ave',
 'https://business.phoenixchamber.com/list/ql/shopping-specialty-retail-23','business.phoenixchamber.com','Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address.','assistant census research: Phoenix retail stores shopping stores',0,
 null,'(602) 878-5590',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','retail','retail stores shopping stores','Border States Electric Supply - E Washington St',
 'https://business.phoenixchamber.com/list/ql/shopping-specialty-retail-23','business.phoenixchamber.com','Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address.','assistant census research: Phoenix retail stores shopping stores',0,
 null,'(602) 244-0331',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','retail','retail stores shopping stores','Corporate Interior Systems, Inc.',
 'https://business.phoenixchamber.com/list/ql/shopping-specialty-retail-23','business.phoenixchamber.com','Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address.','assistant census research: Phoenix retail stores shopping stores',0,
 null,'(602) 304-0100',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','retail','retail stores shopping stores','Desert Ridge Marketplace',
 'https://business.phoenixchamber.com/list/ql/shopping-specialty-retail-23','business.phoenixchamber.com','Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address.','assistant census research: Phoenix retail stores shopping stores',0,
 null,'(480) 513-7586',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','retail','retail stores shopping stores','Elontec, LLC',
 'https://business.phoenixchamber.com/list/ql/shopping-specialty-retail-23','business.phoenixchamber.com','Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address.','assistant census research: Phoenix retail stores shopping stores',0,
 null,'(602) 759-5500',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','retail','retail stores shopping stores','Fairytale Brownies, Inc. Retail/Production',
 'https://business.phoenixchamber.com/list/ql/shopping-specialty-retail-23','business.phoenixchamber.com','Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address.','assistant census research: Phoenix retail stores shopping stores',0,
 null,'(800) 531-5209',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','retail','retail stores shopping stores','Goodwill Retail Operations Center',
 'https://business.phoenixchamber.com/list/ql/shopping-specialty-retail-23','business.phoenixchamber.com','Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address.','assistant census research: Phoenix retail stores shopping stores',0,
 null,'(602) 322-7058',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','retail','retail stores shopping stores','Macerich - N Tatum Blvd',
 'https://business.phoenixchamber.com/list/ql/shopping-specialty-retail-23','business.phoenixchamber.com','Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address.','assistant census research: Phoenix retail stores shopping stores',0,
 null,'(602) 953-6200',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','retail','retail stores shopping stores','MetroMerch Phx',
 'https://business.phoenixchamber.com/list/ql/shopping-specialty-retail-23','business.phoenixchamber.com','Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address.','assistant census research: Phoenix retail stores shopping stores',0,
 null,'(323) 825-9815',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','retail','retail stores shopping stores','Phoenix Pawn and Gold',
 'https://business.phoenixchamber.com/list/ql/shopping-specialty-retail-23','business.phoenixchamber.com','Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address.','assistant census research: Phoenix retail stores shopping stores',0,
 null,'(602) 272-3449',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','retail','retail stores shopping stores','Q.Contrary',
 'https://business.phoenixchamber.com/list/ql/shopping-specialty-retail-23','business.phoenixchamber.com','Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address.','assistant census research: Phoenix retail stores shopping stores',0,
 null,'(602) 301-6987',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','retail','retail stores shopping stores','Quantum Qarat',
 'https://business.phoenixchamber.com/list/ql/shopping-specialty-retail-23','business.phoenixchamber.com','Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address.','assistant census research: Phoenix retail stores shopping stores',0,
 null,'(480) 221-5194',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','retail','retail stores shopping stores','Schmitt Jewelers',
 'https://business.phoenixchamber.com/list/ql/shopping-specialty-retail-23','business.phoenixchamber.com','Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address.','assistant census research: Phoenix retail stores shopping stores',0,
 null,'(602) 840-1144',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','retail','retail stores shopping stores','The Salvation Army Family Store - Greenway',
 'https://business.phoenixchamber.com/list/ql/shopping-specialty-retail-23','business.phoenixchamber.com','Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address.','assistant census research: Phoenix retail stores shopping stores',0,
 null,'(602) 256-4501',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','retail','retail stores shopping stores','Goodwill - 16th St & Indian School',
 'https://business.phoenixchamber.com/list/ql/shopping-specialty-retail-23','business.phoenixchamber.com','Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address.','assistant census research: Phoenix retail stores shopping stores',0,
 null,'(602) 279-5870',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','retail','retail stores shopping stores','Goodwill - 19th Ave & Baseline',
 'https://business.phoenixchamber.com/list/ql/shopping-specialty-retail-23','business.phoenixchamber.com','Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address.','assistant census research: Phoenix retail stores shopping stores',0,
 null,'(602) 276-0488',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','retail','retail stores shopping stores','Goodwill - 19th Ave & Bell',
 'https://business.phoenixchamber.com/list/ql/shopping-specialty-retail-23','business.phoenixchamber.com','Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address.','assistant census research: Phoenix retail stores shopping stores',0,
 null,'(602) 564-2829',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','retail','retail stores shopping stores','Goodwill - 19th Ave & Camelback',
 'https://business.phoenixchamber.com/list/ql/shopping-specialty-retail-23','business.phoenixchamber.com','Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address.','assistant census research: Phoenix retail stores shopping stores',0,
 null,'(602) 864-0810',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','retail','retail stores shopping stores','Goodwill - 32nd St & Cactus',
 'https://business.phoenixchamber.com/list/ql/shopping-specialty-retail-23','business.phoenixchamber.com','Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address.','assistant census research: Phoenix retail stores shopping stores',0,
 null,'(602) 493-4705',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','retail','retail stores shopping stores','Goodwill - 32nd St & Greenway',
 'https://business.phoenixchamber.com/list/ql/shopping-specialty-retail-23','business.phoenixchamber.com','Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address.','assistant census research: Phoenix retail stores shopping stores',0,
 null,'(602) 482-0182',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','retail','retail stores shopping stores','Goodwill - 32nd St & Thomas',
 'https://business.phoenixchamber.com/list/ql/shopping-specialty-retail-23','business.phoenixchamber.com','Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address.','assistant census research: Phoenix retail stores shopping stores',0,
 null,'(602) 808-0821',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','retail','retail stores shopping stores','Goodwill - 35th Ave & Greenway',
 'https://business.phoenixchamber.com/list/ql/shopping-specialty-retail-23','business.phoenixchamber.com','Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address.','assistant census research: Phoenix retail stores shopping stores',0,
 null,'(602) 942-1432',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','retail','retail stores shopping stores','Goodwill - 35th Ave & Peoria',
 'https://business.phoenixchamber.com/list/ql/shopping-specialty-retail-23','business.phoenixchamber.com','Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address.','assistant census research: Phoenix retail stores shopping stores',0,
 null,'(602) 698-1925',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','retail','retail stores shopping stores','Goodwill - 40th St & Thunderbird',
 'https://business.phoenixchamber.com/list/ql/shopping-specialty-retail-23','business.phoenixchamber.com','Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address.','assistant census research: Phoenix retail stores shopping stores',0,
 null,'(602) 569-9004',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','retail','retail stores shopping stores','Goodwill - 43rd Ave & Bethany Home',
 'https://business.phoenixchamber.com/list/ql/shopping-specialty-retail-23','business.phoenixchamber.com','Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address.','assistant census research: Phoenix retail stores shopping stores',0,
 null,'(602) 973-8530',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','retail','retail stores shopping stores','Goodwill - 75th Ave',
 'https://business.phoenixchamber.com/list/ql/shopping-specialty-retail-23','business.phoenixchamber.com','Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address.','assistant census research: Phoenix retail stores shopping stores',0,
 null,'(623) 846-4900',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','retail','retail stores shopping stores','Goodwill - 7th St & Dunlap',
 'https://business.phoenixchamber.com/list/ql/shopping-specialty-retail-23','business.phoenixchamber.com','Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address.','assistant census research: Phoenix retail stores shopping stores',0,
 null,'(602) 944-1214',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','retail','retail stores shopping stores','Goodwill - Cave Creek & Cactus',
 'https://business.phoenixchamber.com/list/ql/shopping-specialty-retail-23','business.phoenixchamber.com','Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address.','assistant census research: Phoenix retail stores shopping stores',0,
 null,'(602) 331-9527',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','retail','retail stores shopping stores','Goodwill - Chandler Blvd & 32nd St',
 'https://business.phoenixchamber.com/list/ql/shopping-specialty-retail-23','business.phoenixchamber.com','Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address.','assistant census research: Phoenix retail stores shopping stores',0,
 null,'(480) 704-0645',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','retail','retail stores shopping stores','North Phoenix Pawn',
 'https://business.phoenixchamber.com/list/ql/shopping-specialty-retail-23','business.phoenixchamber.com','Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address.','assistant census research: Phoenix retail stores shopping stores',0,
 null,'(602) 780-7594',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','retail','retail stores shopping stores','Phoenix Title Loans - N 19th Ave',
 'https://business.phoenixchamber.com/list/ql/shopping-specialty-retail-23','business.phoenixchamber.com','Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address.','assistant census research: Phoenix retail stores shopping stores',0,
 null,'(602) 357-1141',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','retail','retail stores shopping stores','SMILE Biscotti',
 'https://business.phoenixchamber.com/list/ql/shopping-specialty-retail-23','business.phoenixchamber.com','Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address.','assistant census research: Phoenix retail stores shopping stores',0,
 null,'(602) 758-7292',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Phoenix Chamber shopping/specialty retail listing with Phoenix facility address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','retail','retail stores shopping stores','The Newton PHX',
 'https://www.visitphoenix.com/greater-phoenix/phoenix/','visitphoenix.com','Current Visit Phoenix shopping/dining destination or retailer.','assistant census research: Phoenix retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Visit Phoenix shopping/dining destination or retailer."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','retail','retail stores shopping stores','Uptown Plaza',
 'https://www.visitphoenix.com/greater-phoenix/phoenix/','visitphoenix.com','Current Visit Phoenix shopping/dining destination or retailer.','assistant census research: Phoenix retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Visit Phoenix shopping/dining destination or retailer."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','retail','retail stores shopping stores','The Colony',
 'https://www.visitphoenix.com/greater-phoenix/phoenix/','visitphoenix.com','Current Visit Phoenix shopping/dining destination or retailer.','assistant census research: Phoenix retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Visit Phoenix shopping/dining destination or retailer."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Phoenix','retail','retail stores shopping stores','Phoenix General',
 'https://www.visitphoenix.com/greater-phoenix/phoenix/','visitphoenix.com','Current Visit Phoenix shopping/dining destination or retailer.','assistant census research: Phoenix retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_phoenix_hospitality_retail_01","researched_at":"2026-10-27T02:18:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Visit Phoenix shopping/dining destination or retailer."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

update market_inventory_progress p set official_candidates=(
 select count(*) from market_inventory_candidates c where c.side=p.side and c.market=p.market
 and c.category_key=p.category_key and c.status='discovered' and c.query_strategy_version=7 and c.official_site=true
),updated_at=now() where p.market='Phoenix';
