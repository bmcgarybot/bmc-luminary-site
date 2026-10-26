

-- Assistant-led Dewey-Humboldt census batch 05 (2026-10-26)
-- Dewey agriculture/ranch/equine and current storage-facility expansion.
-- Inventory evidence only; preserve closed status and never promote/stage/send.

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Dewey-Humboldt','general_business','other local businesses','Mortimer Inc',
 'https://www.whereorg.com/businesses/agriculture-in-dewey-az','whereorg.com','Dewey agriculture-category farm/ranch/equine facility candidate; direct/current verification remains required.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 632-1551',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_05","researched_at":"2026-10-27T00:24:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey agriculture-category farm/ranch/equine facility candidate; direct/current verification remains required."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Dewey-Humboldt','general_business','other local businesses','Cherry Creek Ranch',
 'https://www.whereorg.com/businesses/agriculture-in-dewey-az','whereorg.com','Dewey agriculture-category farm/ranch/equine facility candidate; direct/current verification remains required.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 632-5656',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_05","researched_at":"2026-10-27T00:24:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey agriculture-category farm/ranch/equine facility candidate; direct/current verification remains required."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Dewey-Humboldt','general_business','other local businesses','Olsen''s Grain Inc',
 'https://www.whereorg.com/businesses/agriculture-in-dewey-az','whereorg.com','Dewey agriculture-category farm/ranch/equine facility candidate; direct/current verification remains required.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 632-5233',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_05","researched_at":"2026-10-27T00:24:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey agriculture-category farm/ranch/equine facility candidate; direct/current verification remains required."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Dewey-Humboldt','general_business','other local businesses','Painted 7 Ranch',
 'https://www.whereorg.com/businesses/agriculture-in-dewey-az','whereorg.com','Dewey agriculture-category farm/ranch/equine facility candidate; direct/current verification remains required.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 632-5615',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_05","researched_at":"2026-10-27T00:24:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey agriculture-category farm/ranch/equine facility candidate; direct/current verification remains required."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Dewey-Humboldt','general_business','other local businesses','Blue Collar',
 'https://www.whereorg.com/businesses/agriculture-in-dewey-az','whereorg.com','Dewey agriculture-category farm/ranch/equine facility candidate; direct/current verification remains required.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 632-7500',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_05","researched_at":"2026-10-27T00:24:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey agriculture-category farm/ranch/equine facility candidate; direct/current verification remains required."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Dewey-Humboldt','general_business','other local businesses','Horsebreakers Unlimited',
 'https://www.whereorg.com/businesses/agriculture-in-dewey-az','whereorg.com','Dewey agriculture-category farm/ranch/equine facility candidate; direct/current verification remains required.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 632-5728',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_05","researched_at":"2026-10-27T00:24:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey agriculture-category farm/ranch/equine facility candidate; direct/current verification remains required."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Dewey-Humboldt','general_business','other local businesses','Coldwater Farm',
 'https://www.whereorg.com/businesses/agriculture-in-dewey-az','whereorg.com','Dewey agriculture-category farm/ranch/equine facility candidate; direct/current verification remains required.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 772-7111',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_05","researched_at":"2026-10-27T00:24:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey agriculture-category farm/ranch/equine facility candidate; direct/current verification remains required."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Dewey-Humboldt','general_business','other local businesses','Rocking M Ranch',
 'https://www.whereorg.com/businesses/agriculture-in-dewey-az','whereorg.com','Dewey agriculture-category farm/ranch/equine facility candidate; direct/current verification remains required.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 632-9436',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_05","researched_at":"2026-10-27T00:24:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey agriculture-category farm/ranch/equine facility candidate; direct/current verification remains required."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Dewey-Humboldt','general_business','other local businesses','Young''s Farm',
 'https://www.whereorg.com/businesses/agriculture-in-dewey-az','whereorg.com','Dewey agriculture-category farm/ranch/equine facility candidate; direct/current verification remains required.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 632-7272',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_05","researched_at":"2026-10-27T00:24:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey agriculture-category farm/ranch/equine facility candidate; direct/current verification remains required."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Dewey-Humboldt','general_business','other local businesses','Deer Pass Boarding Stables',
 'https://www.whereorg.com/businesses/agriculture-in-dewey-az','whereorg.com','Dewey agriculture-category farm/ranch/equine facility candidate; direct/current verification remains required.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 632-5615',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_05","researched_at":"2026-10-27T00:24:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey agriculture-category farm/ranch/equine facility candidate; direct/current verification remains required."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Dewey-Humboldt','general_business','other local businesses','Painted Seven Ranch',
 'https://www.whereorg.com/businesses/agriculture-in-dewey-az','whereorg.com','Dewey agriculture-category farm/ranch/equine facility candidate; direct/current verification remains required.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 632-5615',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_05","researched_at":"2026-10-27T00:24:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey agriculture-category farm/ranch/equine facility candidate; direct/current verification remains required."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Dewey-Humboldt','general_business','other local businesses','Shepherds All Ranch Kennels',
 'https://www.whereorg.com/businesses/agriculture-in-dewey-az','whereorg.com','Dewey agriculture-category farm/ranch/equine facility candidate; direct/current verification remains required.','assistant bootstrap research: Dewey other local businesses',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_05","researched_at":"2026-10-27T00:24:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey agriculture-category farm/ranch/equine facility candidate; direct/current verification remains required."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Dewey-Humboldt','general_business','other local businesses','Donald Kells Farms Inc',
 'https://www.whereorg.com/businesses/agriculture-in-dewey-az','whereorg.com','Dewey agriculture-category farm/ranch/equine facility candidate; direct/current verification remains required.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 759-2643',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_05","researched_at":"2026-10-27T00:24:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey agriculture-category farm/ranch/equine facility candidate; direct/current verification remains required."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Dewey-Humboldt','general_business','other local businesses','Golden Weeping Willow Ranch LLC',
 'https://www.whereorg.com/businesses/agriculture-in-dewey-az','whereorg.com','Dewey agriculture-category farm/ranch/equine facility candidate; direct/current verification remains required.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(480) 267-3387',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_05","researched_at":"2026-10-27T00:24:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey agriculture-category farm/ranch/equine facility candidate; direct/current verification remains required."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Dewey-Humboldt','general_business','other local businesses','Ranch Works 4 Jc LLC',
 'https://www.whereorg.com/businesses/agriculture-in-dewey-az','whereorg.com','Dewey agriculture-category farm/ranch/equine facility candidate; direct/current verification remains required.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 632-8279',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_05","researched_at":"2026-10-27T00:24:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey agriculture-category farm/ranch/equine facility candidate; direct/current verification remains required."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Dewey-Humboldt','general_business','other local businesses','R Dewey Ranch',
 'https://www.whereorg.com/businesses/agriculture-in-dewey-az','whereorg.com','Dewey agriculture-category farm/ranch/equine facility candidate; direct/current verification remains required.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 916-0012',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_05","researched_at":"2026-10-27T00:24:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey agriculture-category farm/ranch/equine facility candidate; direct/current verification remains required."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Dewey-Humboldt','general_business','other local businesses','Blue Yonder Stables',
 'https://www.whereorg.com/businesses/agriculture-in-dewey-az','whereorg.com','Dewey agriculture-category farm/ranch/equine facility candidate; direct/current verification remains required.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 632-8625',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_05","researched_at":"2026-10-27T00:24:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey agriculture-category farm/ranch/equine facility candidate; direct/current verification remains required."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Dewey-Humboldt','general_business','other local businesses','D''s Pets Services & In Home Pet Care LLC',
 'https://www.whereorg.com/businesses/agriculture-in-dewey-az','whereorg.com','Dewey animal-service business candidate from agriculture directory; direct/current verification remains required.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 632-5720',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_05","researched_at":"2026-10-27T00:24:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey animal-service business candidate from agriculture directory; direct/current verification remains required."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Dewey-Humboldt','general_business','other local businesses','Farbenholt Dog Training',
 'https://www.whereorg.com/businesses/agriculture-in-dewey-az','whereorg.com','Dewey animal-service business candidate from agriculture directory; direct/current verification remains required.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 632-7557',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_05","researched_at":"2026-10-27T00:24:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey animal-service business candidate from agriculture directory; direct/current verification remains required."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Dewey-Humboldt','landscaping','Landscaping & Yard Cleanup','First Impressions Count Landscaping',
 'https://www.whereorg.com/businesses/agriculture-in-dewey-az','whereorg.com','Dewey agriculture-category landscape/tree service candidate; direct verification remains required.','assistant bootstrap research: Dewey Landscaping & Yard Cleanup',0,
 null,'(928) 632-5455',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_05","researched_at":"2026-10-27T00:24:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey agriculture-category landscape/tree service candidate; direct verification remains required."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Dewey-Humboldt','tree_service','Tree Service & Brush Clearing','Tree Pro Prescott LLC',
 'https://www.whereorg.com/businesses/agriculture-in-dewey-az','whereorg.com','Dewey agriculture-category landscape/tree service candidate; direct verification remains required.','assistant bootstrap research: Dewey Tree Service & Brush Clearing',0,
 null,'(928) 632-0630',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_05","researched_at":"2026-10-27T00:24:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey agriculture-category landscape/tree service candidate; direct verification remains required."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Dewey-Humboldt','tree_service','Tree Service & Brush Clearing','Arbor One Tree Consulting',
 'https://www.whereorg.com/businesses/agriculture-in-dewey-az','whereorg.com','Dewey agriculture-category landscape/tree service candidate; direct verification remains required.','assistant bootstrap research: Dewey Tree Service & Brush Clearing',0,
 null,'(928) 632-7667',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_05","researched_at":"2026-10-27T00:24:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey agriculture-category landscape/tree service candidate; direct verification remains required."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Dewey-Humboldt','schools','schools charter schools private schools','Equine Learning Center Inc',
 'https://www.whereorg.com/businesses/agriculture-in-dewey-az','whereorg.com','Dewey equine education/training facility at 12000 E Deer Path Rd; agriculture directory candidate.','assistant bootstrap research: Dewey schools charter schools private schools',0,
 null,'(928) 458-7834',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_05","researched_at":"2026-10-27T00:24:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey equine education/training facility at 12000 E Deer Path Rd; agriculture directory candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Dewey-Humboldt','warehouses_industrial','warehouses industrial businesses distribution centers','Pacific Domes',
 'https://www.whereorg.com/businesses/agriculture-in-dewey-az','whereorg.com','Dewey manufacturing/agricultural-structure business at 11800 E Sarah Jane Ln; current-operation verification remains required.','assistant bootstrap research: Dewey warehouses industrial businesses distribution centers',0,
 null,'(928) 759-7239',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_05","researched_at":"2026-10-27T00:24:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey manufacturing/agricultural-structure business at 11800 E Sarah Jane Ln; current-operation verification remains required."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Dewey-Humboldt','warehouses_industrial','warehouses industrial businesses distribution centers','Dewey Mini Storage',
 'https://www.prescottdeweystorage.com/','prescottdeweystorage.com','Official current self-storage and outdoor RV storage facility at 150 S Hwy 69, Dewey; locally owned and serving Dewey-Humboldt for 30+ years.','assistant bootstrap research: Dewey warehouses industrial businesses distribution centers',0,
 'deweyministorage@outlook.com','(928) 632-9450',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_05","researched_at":"2026-10-27T00:24:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official current self-storage and outdoor RV storage facility at 150 S Hwy 69, Dewey; locally owned and serving Dewey-Humboldt for 30+ years."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Dewey-Humboldt','warehouses_industrial','warehouses industrial businesses distribution centers','Kachina Mini Storage',
 'https://www.whereorg.com/dewey-az','whereorg.com','Current Dewey self-storage/vehicle/boat/RV storage facility at 171 AZ-69 A; current local-business evidence confirms operation.','assistant bootstrap research: Dewey warehouses industrial businesses distribution centers',0,
 null,'(928) 632-7944',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_05","researched_at":"2026-10-27T00:24:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Dewey self-storage/vehicle/boat/RV storage facility at 171 AZ-69 A; current local-business evidence confirms operation."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Dewey-Humboldt','warehouses_industrial','warehouses industrial businesses distribution centers','My Storage Prescott Valley',
 'https://www.whereorg.com/dewey-az','whereorg.com','Current storage/RV facility at 11460 E Santa Fe Loop, Dewey 86327; facility markets to Prescott Valley/Dewey-Humboldt.','assistant bootstrap research: Dewey warehouses industrial businesses distribution centers',0,
 null,'(928) 642-2304',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_05","researched_at":"2026-10-27T00:24:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current storage/RV facility at 11460 E Santa Fe Loop, Dewey 86327; facility markets to Prescott Valley/Dewey-Humboldt."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Dewey-Humboldt','warehouses_industrial','warehouses industrial businesses distribution centers','Dewey RV Storage',
 'https://www.whereorg.com/dewey-az','whereorg.com','Current family-owned RV/boat/vehicle storage facility at 1983 S AZ-69, Dewey.','assistant bootstrap research: Dewey warehouses industrial businesses distribution centers',0,
 null,'(928) 632-8500',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_05","researched_at":"2026-10-27T00:24:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current family-owned RV/boat/vehicle storage facility at 1983 S AZ-69, Dewey."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Dewey-Humboldt','warehouses_industrial','warehouses industrial businesses distribution centers','L Bar L Security Storage',
 'https://www.whereorg.com/dewey-az','whereorg.com','Current self-storage/RV facility on State Route 69 in Humboldt/Dewey-Humboldt.','assistant bootstrap research: Dewey warehouses industrial businesses distribution centers',0,
 null,'(928) 632-7091',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_05","researched_at":"2026-10-27T00:24:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current self-storage/RV facility on State Route 69 in Humboldt/Dewey-Humboldt."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Dewey-Humboldt','warehouses_industrial','warehouses industrial businesses distribution centers','Universal Portable Storage',
 'https://www.whereorg.com/dewey-az','whereorg.com','Current Humboldt-based portable-container storage provider serving Dewey-Humboldt.','assistant bootstrap research: Dewey warehouses industrial businesses distribution centers',0,
 null,'(928) 632-0555',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_05","researched_at":"2026-10-27T00:24:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Humboldt-based portable-container storage provider serving Dewey-Humboldt."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Dewey-Humboldt','warehouses_industrial','warehouses industrial businesses distribution centers','AZ Strongbox, LLC',
 'https://www.whereorg.com/dewey-az','whereorg.com','Current Dewey container supplier/storage-rental operation at 588 S Cold Water Ln.','assistant bootstrap research: Dewey warehouses industrial businesses distribution centers',0,
 null,'(928) 592-3252',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_05","researched_at":"2026-10-27T00:24:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Dewey container supplier/storage-rental operation at 588 S Cold Water Ln."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Dewey-Humboldt','warehouses_industrial','warehouses industrial businesses distribution centers','Blue Hills Mini Storage',
 'https://www.whereorg.com/dewey-az','whereorg.com','Current Dewey mini-storage facility candidate with consistent Dewey 86327 contact information.','assistant bootstrap research: Dewey warehouses industrial businesses distribution centers',0,
 null,'(928) 632-7766',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_05","researched_at":"2026-10-27T00:24:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Dewey mini-storage facility candidate with consistent Dewey 86327 contact information."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Dewey-Humboldt','general_business','other local businesses','Proven Spots Ranch',
 'https://www.whereorg.com/businesses/agriculture-in-dewey-az','whereorg.com','Current family-run Dewey equestrian/ranch facility at 10220 E Rocky Hill Rd with riding instruction and horse programs.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 582-0217',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_05","researched_at":"2026-10-27T00:24:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current family-run Dewey equestrian/ranch facility at 10220 E Rocky Hill Rd with riding instruction and horse programs."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Dewey-Humboldt','general_business','other local businesses','Cuddle Corral',
 'https://www.whereorg.com/businesses/agriculture-in-dewey-az','whereorg.com','Current Dewey ranch/animal-experience operation; local-business evidence shows by-appointment farm experience.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 202-1273',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_05","researched_at":"2026-10-27T00:24:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Dewey ranch/animal-experience operation; local-business evidence shows by-appointment farm experience."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Dewey-Humboldt','general_business','other local businesses','Arizona Contracting & Livestock',
 'https://www.whereorg.com/businesses/agriculture-in-dewey-az','whereorg.com','Current ranch/agricultural-services operation at 10220 E Rocky Hill Rd, Dewey.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(602) 809-4053',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_05","researched_at":"2026-10-27T00:24:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current ranch/agricultural-services operation at 10220 E Rocky Hill Rd, Dewey."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Dewey-Humboldt','general_business','other local businesses','Mulberry King Orchards',
 'https://www.whereorg.com/businesses/agriculture-in-dewey-az','whereorg.com','Current small Dewey-Humboldt orchard/farm at 10645 E Powerline Rd with seasonal u-pick activity.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(480) 326-1831',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_05","researched_at":"2026-10-27T00:24:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current small Dewey-Humboldt orchard/farm at 10645 E Powerline Rd with seasonal u-pick activity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Dewey-Humboldt','general_business','other local businesses','Adams Family Farm',
 'https://www.usfarmtrail.com/states/arizona','usfarmtrail.com','Current Arizona farm directory identifies Adams Family Farm in Dewey as an agritourism/farm-stand operation.','assistant bootstrap research: Dewey other local businesses',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_05","researched_at":"2026-10-27T00:24:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Arizona farm directory identifies Adams Family Farm in Dewey as an agritourism/farm-stand operation."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Dewey-Humboldt','general_business','other local businesses','Mortimer Farms',
 'https://www.azcattlegrowers.org/ranchers/yavapai','azcattlegrowers.org','Arizona Cattle Growers Association current Yavapai rancher listing identifies Mortimer Farms in Dewey; this supplements the direct Mortimer facility evidence.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 830-1116',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_05","researched_at":"2026-10-27T00:24:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Arizona Cattle Growers Association current Yavapai rancher listing identifies Mortimer Farms in Dewey; this supplements the direct Mortimer facility evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

update market_inventory_progress p
set official_candidates=(
 select count(*) from market_inventory_candidates c
 where c.side=p.side and c.market=p.market and c.category_key=p.category_key
   and c.status='discovered' and c.query_strategy_version=7 and c.official_site=true
), updated_at=now()
where p.market='Dewey-Humboldt';


-- Assistant-led Camp Verde census batch 01 (2026-10-26)
insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','restaurants','restaurants','Alfonsos',
 'https://campverdebiz.com/restaurants','campverdebiz.com','Current Camp Verde restaurant listing from the local Chamber business guide.','assistant census research: Camp Verde restaurants',0,
 null,'9285677296',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Camp Verde restaurant listing from the local Chamber business guide."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','restaurants','restaurants','Babe''s Round Up',
 'https://campverdebiz.com/restaurants','campverdebiz.com','Current Camp Verde restaurant listing from the local Chamber business guide.','assistant census research: Camp Verde restaurants',0,
 null,'9285676969',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Camp Verde restaurant listing from the local Chamber business guide."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','restaurants','restaurants','Beto''s Corner',
 'https://campverdebiz.com/restaurants','campverdebiz.com','Current Camp Verde restaurant listing from the local Chamber business guide.','assistant census research: Camp Verde restaurants',0,
 null,'9285678897',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Camp Verde restaurant listing from the local Chamber business guide."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','restaurants','restaurants','Burger King',
 'https://campverdebiz.com/restaurants','campverdebiz.com','Current Camp Verde restaurant listing from the local Chamber business guide.','assistant census research: Camp Verde restaurants',0,
 null,'9285673401',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Camp Verde restaurant listing from the local Chamber business guide."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','restaurants','restaurants','Crusty''s Pizza',
 'https://campverdebiz.com/restaurants','campverdebiz.com','Current Camp Verde restaurant listing from the local Chamber business guide.','assistant census research: Camp Verde restaurants',0,
 null,'9285676444',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Camp Verde restaurant listing from the local Chamber business guide."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','restaurants','restaurants','Dairy Queen',
 'https://campverdebiz.com/restaurants','campverdebiz.com','Current Camp Verde restaurant listing from the local Chamber business guide.','assistant census research: Camp Verde restaurants',0,
 null,'9285673229',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Camp Verde restaurant listing from the local Chamber business guide."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','restaurants','restaurants','Denny''s',
 'https://campverdebiz.com/restaurants','campverdebiz.com','Current Camp Verde restaurant listing from the local Chamber business guide.','assistant census research: Camp Verde restaurants',0,
 null,'9285679505',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Camp Verde restaurant listing from the local Chamber business guide."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','restaurants','restaurants','Domino''s',
 'https://campverdebiz.com/restaurants','campverdebiz.com','Current Camp Verde restaurant listing from the local Chamber business guide.','assistant census research: Camp Verde restaurants',0,
 null,'9285540999',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Camp Verde restaurant listing from the local Chamber business guide."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','restaurants','restaurants','Filiberto''s',
 'https://campverdebiz.com/restaurants','campverdebiz.com','Current Camp Verde restaurant listing from the local Chamber business guide.','assistant census research: Camp Verde restaurants',0,
 null,'9285678754',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Camp Verde restaurant listing from the local Chamber business guide."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','restaurants','restaurants','Gabriela''s',
 'https://campverdebiz.com/restaurants','campverdebiz.com','Current Camp Verde restaurant listing from the local Chamber business guide.','assistant census research: Camp Verde restaurants',0,
 null,'9285672120',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Camp Verde restaurant listing from the local Chamber business guide."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','restaurants','restaurants','JT''s Steakhouse',
 'https://campverdebiz.com/restaurants','campverdebiz.com','Current Camp Verde restaurant listing from the local Chamber business guide.','assistant census research: Camp Verde restaurants',0,
 null,'9285672418',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Camp Verde restaurant listing from the local Chamber business guide."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','restaurants','restaurants','La Casita',
 'https://campverdebiz.com/restaurants','campverdebiz.com','Current Camp Verde restaurant listing from the local Chamber business guide.','assistant census research: Camp Verde restaurants',0,
 null,'9285673202',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Camp Verde restaurant listing from the local Chamber business guide."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','restaurants','restaurants','La Fonda Mexican Food',
 'https://campverdebiz.com/restaurants','campverdebiz.com','Current Camp Verde restaurant listing from the local Chamber business guide.','assistant census research: Camp Verde restaurants',0,
 null,'9285673500',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Camp Verde restaurant listing from the local Chamber business guide."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','restaurants','restaurants','Little Caesars',
 'https://campverdebiz.com/restaurants','campverdebiz.com','Current Camp Verde restaurant listing from the local Chamber business guide.','assistant census research: Camp Verde restaurants',0,
 null,'9285673165',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Camp Verde restaurant listing from the local Chamber business guide."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','restaurants','restaurants','Low Places Bar and Grill',
 'https://campverdebiz.com/restaurants','campverdebiz.com','Current Camp Verde restaurant listing from the local Chamber business guide.','assistant census research: Camp Verde restaurants',0,
 null,'9285678722',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Camp Verde restaurant listing from the local Chamber business guide."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','restaurants','restaurants','Magic Wok Kitchen & Bar',
 'https://campverdebiz.com/restaurants','campverdebiz.com','Current Camp Verde restaurant listing from the local Chamber business guide.','assistant census research: Camp Verde restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Camp Verde restaurant listing from the local Chamber business guide."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','restaurants','restaurants','Taco Bell',
 'https://campverdebiz.com/restaurants','campverdebiz.com','Current Camp Verde restaurant listing from the local Chamber business guide.','assistant census research: Camp Verde restaurants',0,
 null,'9285540233',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Camp Verde restaurant listing from the local Chamber business guide."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','restaurants','restaurants','Thanks A Latte',
 'https://campverdebiz.com/restaurants','campverdebiz.com','Current Camp Verde restaurant listing from the local Chamber business guide.','assistant census research: Camp Verde restaurants',0,
 null,'9285676450',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Camp Verde restaurant listing from the local Chamber business guide."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','restaurants','restaurants','Udderly Divine',
 'https://campverdebiz.com/restaurants','campverdebiz.com','Current Camp Verde restaurant listing from the local Chamber business guide.','assistant census research: Camp Verde restaurants',0,
 null,'9286070967',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Camp Verde restaurant listing from the local Chamber business guide."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','restaurants','restaurants','Verde Brewing Co.',
 'https://campverdebiz.com/restaurants','campverdebiz.com','Current Camp Verde restaurant listing from the local Chamber business guide.','assistant census research: Camp Verde restaurants',0,
 null,'5205007269',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Camp Verde restaurant listing from the local Chamber business guide."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','restaurants','restaurants','Wendy''s',
 'https://campverdebiz.com/restaurants','campverdebiz.com','Current Camp Verde restaurant listing from the local Chamber business guide.','assistant census research: Camp Verde restaurants',0,
 null,'9285679276',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Camp Verde restaurant listing from the local Chamber business guide."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','restaurants','restaurants','Wingfield Bread Co.',
 'https://campverdebiz.com/restaurants','campverdebiz.com','Current Camp Verde restaurant listing from the local Chamber business guide.','assistant census research: Camp Verde restaurants',0,
 null,'9283019300',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Camp Verde restaurant listing from the local Chamber business guide."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','hotels_motels','hotels motels lodging','Comfort Inn Camp Verde',
 'https://campverdebiz.com/hwy-260-west','campverdebiz.com','Current Camp Verde lodging/RV facility listing.','assistant census research: Camp Verde hotels motels lodging',0,
 null,'9285679000',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Camp Verde lodging/RV facility listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','hotels_motels','hotels motels lodging','Cloverleaf RV Village',
 'https://campverdebiz.com/hwy-260-west','campverdebiz.com','Current Camp Verde lodging/RV facility listing.','assistant census research: Camp Verde hotels motels lodging',0,
 null,'9288533553',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Camp Verde lodging/RV facility listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','hotels_motels','hotels motels lodging','Copper Canyon Inn',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Current Camp Verde lodging/RV facility listing.','assistant census research: Camp Verde hotels motels lodging',0,
 null,'9285672622',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Camp Verde lodging/RV facility listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','hotels_motels','hotels motels lodging','Days Inn & Suites Camp Verde',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Current Camp Verde lodging/RV facility listing.','assistant census research: Camp Verde hotels motels lodging',0,
 null,'9285673700',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Camp Verde lodging/RV facility listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','hotels_motels','hotels motels lodging','Clear Creek RV Park',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Current Camp Verde lodging/RV facility listing.','assistant census research: Camp Verde hotels motels lodging',0,
 null,'9283003705',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Camp Verde lodging/RV facility listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','hotels_motels','hotels motels lodging','Cliff Castle Casino Hotel',
 'https://campverdebiz.com/middle-verde','campverdebiz.com','Major Camp Verde casino hotel with 122 rooms, restaurants, bowling, nightclub and event space.','assistant census research: Camp Verde hotels motels lodging',0,
 null,'9285677999',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Major Camp Verde casino hotel with 122 rooms, restaurants, bowling, nightclub and event space."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','hotels_motels','hotels motels lodging','Zane Grey RV Village',
 'https://selectcampverde.com/local-businesses/','selectcampverde.com','Town Economic Development business directory listing.','assistant census research: Camp Verde hotels motels lodging',0,
 null,'9285674320',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Town Economic Development business directory listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','hotels_motels','hotels motels lodging','Verde Ranch RV Resort',
 'https://campverdebiz.com/','campverdebiz.com','Current Camp Verde Chamber member.','assistant census research: Camp Verde hotels motels lodging',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Camp Verde Chamber member."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','warehouses_industrial','warehouses industrial businesses distribution centers','AAA Mini Storage',
 'https://campverdebiz.com/downtown','campverdebiz.com','Camp Verde storage facility.','assistant census research: Camp Verde warehouses industrial businesses distribution centers',0,
 null,'9285673310',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde storage facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','warehouses_industrial','warehouses industrial businesses distribution centers','2 Brothers Boat & RV Storage',
 'https://campverdebiz.com/hwy-260-west','campverdebiz.com','Camp Verde storage facility.','assistant census research: Camp Verde warehouses industrial businesses distribution centers',0,
 null,'9285676331',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde storage facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','warehouses_industrial','warehouses industrial businesses distribution centers','A-1 Affordable Mini & RV Storage',
 'https://campverdebiz.com/hwy-260-west','campverdebiz.com','Camp Verde storage facility.','assistant census research: Camp Verde warehouses industrial businesses distribution centers',0,
 null,'9282241549',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde storage facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','warehouses_industrial','warehouses industrial businesses distribution centers','Camp Verde 24 Hr Storage',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde storage facility with 24-hour access and on-site management.','assistant census research: Camp Verde warehouses industrial businesses distribution centers',0,
 null,'9285673000',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde storage facility with 24-hour access and on-site management."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','warehouses_industrial','warehouses industrial businesses distribution centers','Camp Verde Mini Storage & RV',
 'https://visitcampverde.com/all-listings/page/8/','visitcampverde.com','Town business directory storage listing.','assistant census research: Camp Verde warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Town business directory storage listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','warehouses_industrial','warehouses industrial businesses distribution centers','Verde Ranch RV Storage',
 'https://selectcampverde.com/local-businesses/','selectcampverde.com','Town Economic Development directory listing at 162 N Goswick Way.','assistant census research: Camp Verde warehouses industrial businesses distribution centers',0,
 null,'9286288696',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Town Economic Development directory listing at 162 N Goswick Way."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','warehouses_industrial','warehouses industrial businesses distribution centers','Verde Ranch Self Storage',
 'https://campverdebiz.com/','campverdebiz.com','Current Camp Verde Chamber member.','assistant census research: Camp Verde warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Camp Verde Chamber member."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','schools','schools charter schools private schools','American Heritage Academy - Camp Verde',
 'https://verdevalleydirectory.com/camp-verde/','verdevalleydirectory.com','Verified Camp Verde school listing with current location details.','assistant census research: Camp Verde schools charter schools private schools',0,
 null,'9285670462',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Verified Camp Verde school listing with current location details."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','schools','schools charter schools private schools','Camp Verde Elementary School',
 'https://verdevalleydirectory.com/camp-verde/','verdevalleydirectory.com','Verified Camp Verde school listing with current location details.','assistant census research: Camp Verde schools charter schools private schools',0,
 null,'9285678060',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Verified Camp Verde school listing with current location details."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','schools','schools charter schools private schools','Camp Verde High School',
 'https://verdevalleydirectory.com/camp-verde/','verdevalleydirectory.com','Verified Camp Verde school listing with current location details.','assistant census research: Camp Verde schools charter schools private schools',0,
 null,'9285678036',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Verified Camp Verde school listing with current location details."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','schools','schools charter schools private schools','Screentime Academy',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde education/gaming academy at 661 Howards Rd.','assistant census research: Camp Verde schools charter schools private schools',0,
 null,'6233328960',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde education/gaming academy at 661 Howards Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','senior_daycare','senior living assisted living daycare childcare','N.A.C.O.G. - Camp Verde Head Start',
 'https://verdevalleydirectory.com/camp-verde/','verdevalleydirectory.com','Verified licensed Camp Verde child-care facility.','assistant census research: Camp Verde senior living assisted living daycare childcare',0,
 null,'9285673182',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Verified licensed Camp Verde child-care facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','senior_daycare','senior living assisted living daycare childcare','Rays Of Sunshine Center',
 'https://verdevalleydirectory.com/camp-verde/','verdevalleydirectory.com','Verified licensed Camp Verde child-care facility.','assistant census research: Camp Verde senior living assisted living daycare childcare',0,
 null,'9285676299',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Verified licensed Camp Verde child-care facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','senior_daycare','senior living assisted living daycare childcare','United Christian School',
 'https://verdevalleydirectory.com/camp-verde/','verdevalleydirectory.com','Verified licensed Camp Verde child-care facility.','assistant census research: Camp Verde senior living assisted living daycare childcare',0,
 null,'9285670415',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Verified licensed Camp Verde child-care facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','public_facilities','government public facilities municipal buildings','Camp Verde Community Library',
 'https://campverdebiz.com/','campverdebiz.com','Camp Verde public library/community facility.','assistant census research: Camp Verde government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde public library/community facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','public_facilities','government public facilities municipal buildings','Town of Camp Verde',
 'https://www.campverde.az.gov/','campverde.az.gov','Municipal government and facilities buyer.','assistant census research: Camp Verde government public facilities municipal buildings',0,
 null,null,true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Municipal government and facilities buyer."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','public_facilities','government public facilities municipal buildings','Camp Verde Parks and Recreation',
 'https://campverdebiz.com/downtown','campverdebiz.com','Town parks and recreation department facility buyer.','assistant census research: Camp Verde government public facilities municipal buildings',0,
 null,'9285540828',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Town parks and recreation department facility buyer."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','churches','churches worship centers','Asamblea De Dios Aqua Viva',
 'https://campverdebiz.com/churches','campverdebiz.com','Camp Verde Chamber church directory listing.','assistant census research: Camp Verde churches worship centers',0,
 null,'9285676807',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde Chamber church directory listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','churches','churches worship centers','Beaver Creek Baptist Church',
 'https://campverdebiz.com/churches','campverdebiz.com','Camp Verde Chamber church directory listing.','assistant census research: Camp Verde churches worship centers',0,
 null,'9285674557',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde Chamber church directory listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','churches','churches worship centers','Calvary Chapel of Camp Verde',
 'https://campverdebiz.com/churches','campverdebiz.com','Camp Verde Chamber church directory listing.','assistant census research: Camp Verde churches worship centers',0,
 null,'9285672171',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde Chamber church directory listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','churches','churches worship centers','Camp Verde Baptist Church',
 'https://campverdebiz.com/churches','campverdebiz.com','Camp Verde Chamber church directory listing.','assistant census research: Camp Verde churches worship centers',0,
 null,'9285673324',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde Chamber church directory listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','churches','churches worship centers','Camp Verde Christian Assembly',
 'https://campverdebiz.com/churches','campverdebiz.com','Camp Verde Chamber church directory listing.','assistant census research: Camp Verde churches worship centers',0,
 null,'9286344321',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde Chamber church directory listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','churches','churches worship centers','Camp Verde Christian Church',
 'https://campverdebiz.com/churches','campverdebiz.com','Camp Verde Chamber church directory listing.','assistant census research: Camp Verde churches worship centers',0,
 null,'9285679784',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde Chamber church directory listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','churches','churches worship centers','Camp Verde Community Church',
 'https://campverdebiz.com/churches','campverdebiz.com','Camp Verde Chamber church directory listing.','assistant census research: Camp Verde churches worship centers',0,
 null,'928597347',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde Chamber church directory listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','churches','churches worship centers','Church of Jesus Christ of Latter Day Saints',
 'https://campverdebiz.com/churches','campverdebiz.com','Camp Verde Chamber church directory listing.','assistant census research: Camp Verde churches worship centers',0,
 null,'9285673206',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde Chamber church directory listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','churches','churches worship centers','Church of Christ-Verde Valley',
 'https://campverdebiz.com/churches','campverdebiz.com','Camp Verde Chamber church directory listing.','assistant census research: Camp Verde churches worship centers',0,
 null,'9285675317',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde Chamber church directory listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','churches','churches worship centers','Desert Willow Church Assembly of God',
 'https://campverdebiz.com/churches','campverdebiz.com','Camp Verde Chamber church directory listing.','assistant census research: Camp Verde churches worship centers',0,
 null,'9285670451',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde Chamber church directory listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','churches','churches worship centers','Grace Community Lutheran Church',
 'https://campverdebiz.com/churches','campverdebiz.com','Camp Verde Chamber church directory listing.','assistant census research: Camp Verde churches worship centers',0,
 null,'9285674608',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde Chamber church directory listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','churches','churches worship centers','Lighthouse Baptist Church',
 'https://campverdebiz.com/churches','campverdebiz.com','Camp Verde Chamber church directory listing.','assistant census research: Camp Verde churches worship centers',0,
 null,'9286341008',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde Chamber church directory listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','churches','churches worship centers','Middle Verde Rock Church',
 'https://campverdebiz.com/churches','campverdebiz.com','Camp Verde Chamber church directory listing.','assistant census research: Camp Verde churches worship centers',0,
 null,'9285540232',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde Chamber church directory listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','churches','churches worship centers','Montezuma Chapel',
 'https://campverdebiz.com/churches','campverdebiz.com','Camp Verde Chamber church directory listing.','assistant census research: Camp Verde churches worship centers',0,
 null,'9285674804',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde Chamber church directory listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','senior_daycare','senior living assisted living daycare childcare','Haven Health of Camp Verde',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde care/social-service facility.','assistant census research: Camp Verde senior living assisted living daycare childcare',0,
 null,'9285675253',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde care/social-service facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','senior_daycare','senior living assisted living daycare childcare','Alternative Choices',
 'https://campverdebiz.com/middle-verde','campverdebiz.com','Camp Verde care/social-service facility.','assistant census research: Camp Verde senior living assisted living daycare childcare',0,
 null,'9286394574',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde care/social-service facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','medical_centers','hospitals medical centers clinics','Central AZ Sports & Physical Therapy',
 'https://campverdebiz.com/','campverdebiz.com','Current Camp Verde Chamber health-care member.','assistant census research: Camp Verde hospitals medical centers clinics',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Camp Verde Chamber health-care member."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','dental','dentists dental offices orthodontists','Creative Dental Designs',
 'https://campverdebiz.com/middle-verde','campverdebiz.com','Camp Verde dental laboratory/professional facility.','assistant census research: Camp Verde dentists dental offices orthodontists',0,
 null,'9282823082',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde dental laboratory/professional facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','general_business','other local businesses','Anasazi Animal Clinic',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Full-service Camp Verde animal clinic with emergency and boarding services.','assistant census research: Camp Verde other local businesses',0,
 null,'9285673807',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Full-service Camp Verde animal clinic with emergency and boarding services."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','general_business','other local businesses','Hillside Canine Resort and Spa',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde canine resort/training facility.','assistant census research: Camp Verde other local businesses',0,
 null,'9285673539',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde canine resort/training facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','general_business','other local businesses','Animal Guardian Network',
 'https://campverdebiz.com/middle-verde','campverdebiz.com','Camp Verde animal sanctuary/nonprofit facility.','assistant census research: Camp Verde other local businesses',0,
 null,'6025685636',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde animal sanctuary/nonprofit facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','general_business','other local businesses','Camp Verde Arena Association',
 'https://visitcampverde.com/all-listings/page/7/','visitcampverde.com','Town directory nonprofit/event-facility listing.','assistant census research: Camp Verde other local businesses',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Town directory nonprofit/event-facility listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','general_business','other local businesses','Camp Verde Library Endowment',
 'https://visitcampverde.com/all-listings/page/8/','visitcampverde.com','Town directory nonprofit listing.','assistant census research: Camp Verde other local businesses',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Town directory nonprofit listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','theaters_entertainment','theaters cinemas entertainment venues','Copper Star Indoor Shooting Range',
 'https://campverdebiz.com/hwy-260-west','campverdebiz.com','Camp Verde recreation/entertainment venue.','assistant census research: Camp Verde theaters cinemas entertainment venues',0,
 null,'9285675300',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde recreation/entertainment venue."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','theaters_entertainment','theaters cinemas entertainment venues','Verde Valley Archaeology Center',
 'https://campverdebiz.com/finnie-flat','campverdebiz.com','Camp Verde museum/visitor facility.','assistant census research: Camp Verde theaters cinemas entertainment venues',0,
 null,'9285670066',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde museum/visitor facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','theaters_entertainment','theaters cinemas entertainment venues','Cliff Castle Casino',
 'https://campverdebiz.com/middle-verde','campverdebiz.com','Major Camp Verde entertainment, dining and event facility.','assistant census research: Camp Verde theaters cinemas entertainment venues',0,
 null,'9285677999',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Major Camp Verde entertainment, dining and event facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','retail','retail stores shopping stores','Ace Hardware Camp Verde',
 'https://campverdebiz.com/downtown','campverdebiz.com','Camp Verde retail/business facility.','assistant census research: Camp Verde retail stores shopping stores',0,
 null,'9285674172',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde retail/business facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','retail','retail stores shopping stores','Camp Verde Feed & Country Store',
 'https://campverdebiz.com/downtown','campverdebiz.com','Camp Verde retail/business facility.','assistant census research: Camp Verde retail stores shopping stores',0,
 null,'9285673351',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde retail/business facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','retail','retail stores shopping stores','Crystal Lattice Funky Market & Gifts',
 'https://campverdebiz.com/downtown','campverdebiz.com','Camp Verde retail/business facility.','assistant census research: Camp Verde retail stores shopping stores',0,
 null,'9285671212',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde retail/business facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','retail','retail stores shopping stores','Cowboy Corner',
 'https://campverdebiz.com/downtown','campverdebiz.com','Camp Verde retail/business facility.','assistant census research: Camp Verde retail stores shopping stores',0,
 null,'9285676699',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde retail/business facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','retail','retail stores shopping stores','Ruby Road Resale Mall',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde retail/business facility.','assistant census research: Camp Verde retail stores shopping stores',0,
 null,'9285675759',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde retail/business facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','retail','retail stores shopping stores','Montana Mercantile',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde retail/business facility.','assistant census research: Camp Verde retail stores shopping stores',0,
 null,'4807202565',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde retail/business facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','retail','retail stores shopping stores','Stitches-Steigman Embroidery',
 'https://campverdebiz.com/finnie-flat','campverdebiz.com','Camp Verde retail/business facility.','assistant census research: Camp Verde retail stores shopping stores',0,
 null,'9285677183',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde retail/business facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','retail','retail stores shopping stores','Canyon Wood Supply',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde retail/business facility.','assistant census research: Camp Verde retail stores shopping stores',0,
 null,'9285673481',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde retail/business facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','retail','retail stores shopping stores','PIEH Tool Company Inc',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde retail/business facility.','assistant census research: Camp Verde retail stores shopping stores',0,
 null,'9285540700',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde retail/business facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','retail','retail stores shopping stores','Eagle Eye Barrels',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde retail/business facility.','assistant census research: Camp Verde retail stores shopping stores',0,
 null,'9288213089',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde retail/business facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','grocery','grocery stores supermarkets markets','Circle K',
 'https://campverdebiz.com/new-to-camp-verde','campverdebiz.com','Camp Verde convenience/gas retail facility.','assistant census research: Camp Verde grocery stores supermarkets markets',0,
 null,'9285674067',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde convenience/gas retail facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','grocery','grocery stores supermarkets markets','Good 2 Go / Chevron',
 'https://campverdebiz.com/new-to-camp-verde','campverdebiz.com','Camp Verde convenience/gas retail facility.','assistant census research: Camp Verde grocery stores supermarkets markets',0,
 null,'9285671463',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde convenience/gas retail facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','grocery','grocery stores supermarkets markets','Minute Mart #48 / Shell',
 'https://campverdebiz.com/new-to-camp-verde','campverdebiz.com','Camp Verde convenience/gas retail facility.','assistant census research: Camp Verde grocery stores supermarkets markets',0,
 null,'9285673886',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde convenience/gas retail facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','grocery','grocery stores supermarkets markets','Conoco Gas Station and Market Place',
 'https://campverdebiz.com/hwy-260-west','campverdebiz.com','Camp Verde convenience/gas retail facility.','assistant census research: Camp Verde grocery stores supermarkets markets',0,
 null,'9285678881',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde convenience/gas retail facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','grocery','grocery stores supermarkets markets','Chevron Gas Station & Market Place',
 'https://campverdebiz.com/middle-verde','campverdebiz.com','Camp Verde convenience/gas retail facility.','assistant census research: Camp Verde grocery stores supermarkets markets',0,
 null,'9285547031',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde convenience/gas retail facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','insurance_professional','insurance agents professional offices','Arizona Central Land and Home',
 'https://campverdebiz.com/downtown','campverdebiz.com','Camp Verde professional/finance/office facility.','assistant census research: Camp Verde insurance agents professional offices',0,
 null,'9285670770',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde professional/finance/office facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','insurance_professional','insurance agents professional offices','Yavapai Title Agency',
 'https://campverdebiz.com/downtown','campverdebiz.com','Camp Verde professional/finance/office facility.','assistant census research: Camp Verde insurance agents professional offices',0,
 null,'9285670590',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde professional/finance/office facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','insurance_professional','insurance agents professional offices','Cross Country Mortgage - John Smoley',
 'https://campverdebiz.com/downtown','campverdebiz.com','Camp Verde professional/finance/office facility.','assistant census research: Camp Verde insurance agents professional offices',0,
 null,'9286159940',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde professional/finance/office facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','insurance_professional','insurance agents professional offices','Arizona Exposure Marketing',
 'https://campverdebiz.com/hwy-260-west','campverdebiz.com','Camp Verde professional/finance/office facility.','assistant census research: Camp Verde insurance agents professional offices',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde professional/finance/office facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','insurance_professional','insurance agents professional offices','Alternative Blue Print',
 'https://campverdebiz.com/downtown','campverdebiz.com','Camp Verde professional/finance/office facility.','assistant census research: Camp Verde insurance agents professional offices',0,
 null,'9285674949',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde professional/finance/office facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','insurance_professional','insurance agents professional offices','Camp Verde Bookkeeping',
 'https://campverdebiz.com/downtown','campverdebiz.com','Camp Verde professional/finance/office facility.','assistant census research: Camp Verde insurance agents professional offices',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde professional/finance/office facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','insurance_professional','insurance agents professional offices','Farm Bureau Financial Services',
 'https://campverdebiz.com/downtown','campverdebiz.com','Camp Verde professional/finance/office facility.','assistant census research: Camp Verde insurance agents professional offices',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde professional/finance/office facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','insurance_professional','insurance agents professional offices','State Farm Insurance - Karen Cole',
 'https://campverdebiz.com/downtown','campverdebiz.com','Camp Verde professional/finance/office facility.','assistant census research: Camp Verde insurance agents professional offices',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde professional/finance/office facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','insurance_professional','insurance agents professional offices','Northern AZ Mortgage Corp - John Smoley',
 'https://campverdebiz.com/downtown','campverdebiz.com','Camp Verde professional/finance/office facility.','assistant census research: Camp Verde insurance agents professional offices',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde professional/finance/office facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','insurance_professional','insurance agents professional offices','OneAZ Credit Union',
 'https://campverdebiz.com/downtown','campverdebiz.com','Camp Verde professional/finance/office facility.','assistant census research: Camp Verde insurance agents professional offices',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde professional/finance/office facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','property_management','property management companies apartment communities','Camp Verde Realty Inc',
 'https://visitcampverde.com/all-listings/page/8/','visitcampverde.com','Camp Verde real-estate/property business.','assistant census research: Camp Verde property management companies apartment communities',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde real-estate/property business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','property_management','property management companies apartment communities','Tierra Verde Investments',
 'https://campverdebiz.com/','campverdebiz.com','Camp Verde real-estate/property business.','assistant census research: Camp Verde property management companies apartment communities',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde real-estate/property business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','property_management','property management companies apartment communities','Bloomtree Realty',
 'https://campverdebiz.com/','campverdebiz.com','Camp Verde real-estate/property business.','assistant census research: Camp Verde property management companies apartment communities',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde real-estate/property business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','property_management','property management companies apartment communities','Hull Homes AZ',
 'https://campverdebiz.com/','campverdebiz.com','Camp Verde real-estate/property business.','assistant census research: Camp Verde property management companies apartment communities',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde real-estate/property business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','property_management','property management companies apartment communities','Mingus Mountain Real Estate - Diana Stoneberg',
 'https://campverdebiz.com/','campverdebiz.com','Camp Verde real-estate/property business.','assistant census research: Camp Verde property management companies apartment communities',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde real-estate/property business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','property_management','property management companies apartment communities','Montezuma Realty - Shelly Church',
 'https://campverdebiz.com/','campverdebiz.com','Camp Verde real-estate/property business.','assistant census research: Camp Verde property management companies apartment communities',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde real-estate/property business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','property_management','property management companies apartment communities','Realty One Group Mountain Desert',
 'https://campverdebiz.com/','campverdebiz.com','Camp Verde real-estate/property business.','assistant census research: Camp Verde property management companies apartment communities',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde real-estate/property business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','property_management','property management companies apartment communities','RE/MAX Camp Verde',
 'https://campverdebiz.com/','campverdebiz.com','Camp Verde real-estate/property business.','assistant census research: Camp Verde property management companies apartment communities',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde real-estate/property business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','warehouses_industrial','warehouses industrial businesses distribution centers','ABB Etch Co.',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde manufacturing, industrial, agricultural or distribution business.','assistant census research: Camp Verde warehouses industrial businesses distribution centers',0,
 null,'9285679935',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde manufacturing, industrial, agricultural or distribution business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','warehouses_industrial','warehouses industrial businesses distribution centers','Aerotube Technology',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde manufacturing, industrial, agricultural or distribution business.','assistant census research: Camp Verde warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde manufacturing, industrial, agricultural or distribution business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','warehouses_industrial','warehouses industrial businesses distribution centers','AGM Power Systems',
 'https://campverdebiz.com/hwy-260-west','campverdebiz.com','Camp Verde manufacturing, industrial, agricultural or distribution business.','assistant census research: Camp Verde warehouses industrial businesses distribution centers',0,
 null,'9286342223',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde manufacturing, industrial, agricultural or distribution business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','warehouses_industrial','warehouses industrial businesses distribution centers','American Steel Carports',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde manufacturing, industrial, agricultural or distribution business.','assistant census research: Camp Verde warehouses industrial businesses distribution centers',0,
 null,'9802170441',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde manufacturing, industrial, agricultural or distribution business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','warehouses_industrial','warehouses industrial businesses distribution centers','Canyon State Concrete',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde manufacturing, industrial, agricultural or distribution business.','assistant census research: Camp Verde warehouses industrial businesses distribution centers',0,
 null,'9285676786',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde manufacturing, industrial, agricultural or distribution business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','warehouses_industrial','warehouses industrial businesses distribution centers','Roto-Fab LLC',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde manufacturing, industrial, agricultural or distribution business.','assistant census research: Camp Verde warehouses industrial businesses distribution centers',0,
 null,'2603754480',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde manufacturing, industrial, agricultural or distribution business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','warehouses_industrial','warehouses industrial businesses distribution centers','Sinagua Malt',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde manufacturing, industrial, agricultural or distribution business.','assistant census research: Camp Verde warehouses industrial businesses distribution centers',0,
 null,'9283009013',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde manufacturing, industrial, agricultural or distribution business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','warehouses_industrial','warehouses industrial businesses distribution centers','Specialty Powder Coating',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde manufacturing, industrial, agricultural or distribution business.','assistant census research: Camp Verde warehouses industrial businesses distribution centers',0,
 null,'9285672130',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde manufacturing, industrial, agricultural or distribution business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','warehouses_industrial','warehouses industrial businesses distribution centers','Seekins Enterprises',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde manufacturing, industrial, agricultural or distribution business.','assistant census research: Camp Verde warehouses industrial businesses distribution centers',0,
 null,'9285679102',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde manufacturing, industrial, agricultural or distribution business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','warehouses_industrial','warehouses industrial businesses distribution centers','All American Pet Products Inc',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde manufacturing, industrial, agricultural or distribution business.','assistant census research: Camp Verde warehouses industrial businesses distribution centers',0,
 null,'9285678459',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde manufacturing, industrial, agricultural or distribution business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','warehouses_industrial','warehouses industrial businesses distribution centers','NaturMed Inc.',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde manufacturing, industrial, agricultural or distribution business.','assistant census research: Camp Verde warehouses industrial businesses distribution centers',0,
 null,'9285675175',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde manufacturing, industrial, agricultural or distribution business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','warehouses_industrial','warehouses industrial businesses distribution centers','Bar LH Farms LLC',
 'https://visitcampverde.com/all-listings/page/4/','visitcampverde.com','Camp Verde manufacturing, industrial, agricultural or distribution business.','assistant census research: Camp Verde warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde manufacturing, industrial, agricultural or distribution business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','warehouses_industrial','warehouses industrial businesses distribution centers','Fasteen Farms',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde manufacturing, industrial, agricultural or distribution business.','assistant census research: Camp Verde warehouses industrial businesses distribution centers',0,
 null,'6122720084',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde manufacturing, industrial, agricultural or distribution business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','warehouses_industrial','warehouses industrial businesses distribution centers','Dos Tortugas LLC',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde manufacturing, industrial, agricultural or distribution business.','assistant census research: Camp Verde warehouses industrial businesses distribution centers',0,
 null,'928300753',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde manufacturing, industrial, agricultural or distribution business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','warehouses_industrial','warehouses industrial businesses distribution centers','Cree Windmills',
 'https://campverdebiz.com/hwy-260-west','campverdebiz.com','Camp Verde manufacturing, industrial, agricultural or distribution business.','assistant census research: Camp Verde warehouses industrial businesses distribution centers',0,
 null,'6028100344',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde manufacturing, industrial, agricultural or distribution business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','general_business','other local businesses','Camp Verde Automotive LLC',
 'https://visitcampverde.com/all-listings/','visitcampverde.com','Camp Verde automotive/RV business facility.','assistant census research: Camp Verde other local businesses',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde automotive/RV business facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','general_business','other local businesses','B & B Transmission & Auto',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde automotive/RV business facility.','assistant census research: Camp Verde other local businesses',0,
 null,'9285678650',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde automotive/RV business facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','general_business','other local businesses','All Pro Motorcycle & ATV Repair',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde automotive/RV business facility.','assistant census research: Camp Verde other local businesses',0,
 null,'9285673183',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde automotive/RV business facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','general_business','other local businesses','Express Automotive',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde automotive/RV business facility.','assistant census research: Camp Verde other local businesses',0,
 null,'9288622572',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde automotive/RV business facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','general_business','other local businesses','Jones Ford Verde Valley',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde automotive/RV business facility.','assistant census research: Camp Verde other local businesses',0,
 null,'9286343673',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde automotive/RV business facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','general_business','other local businesses','AutoZone',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde automotive/RV business facility.','assistant census research: Camp Verde other local businesses',0,
 null,'9285670000',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde automotive/RV business facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','general_business','other local businesses','Fort River Auto Glass',
 'https://campverdebiz.com/downtown','campverdebiz.com','Camp Verde automotive/RV business facility.','assistant census research: Camp Verde other local businesses',0,
 null,'9283015287',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde automotive/RV business facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','general_business','other local businesses','The Jr''s Auto Detail',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde automotive/RV business facility.','assistant census research: Camp Verde other local businesses',0,
 null,'9282547949',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde automotive/RV business facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','general_business','other local businesses','All In The Polish Detailing',
 'https://visitcampverde.com/all-listings/','visitcampverde.com','Camp Verde automotive/RV business facility.','assistant census research: Camp Verde other local businesses',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde automotive/RV business facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','general_business','other local businesses','Affinity RV Services, Sales &',
 'https://visitcampverde.com/all-listings/','visitcampverde.com','Camp Verde automotive/RV business facility.','assistant census research: Camp Verde other local businesses',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde automotive/RV business facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Camp Verde','hvac_heat','Heating & Air','Ability Repair LLC',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde vendor/service candidate for Heating & Air.','assistant census research: Camp Verde Heating & Air',0,
 null,'9285502181',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde vendor/service candidate for Heating & Air."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Camp Verde','hvac_heat','Heating & Air','Goettl''s High Desert Mechanical',
 'https://verdevalleydirectory.com/camp-verde/','verdevalleydirectory.com','Camp Verde vendor/service candidate for Heating & Air.','assistant census research: Camp Verde Heating & Air',0,
 null,'9289856132',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde vendor/service candidate for Heating & Air."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Camp Verde','hvac_heat','Heating & Air','Verde Sol Air',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde vendor/service candidate for Heating & Air.','assistant census research: Camp Verde Heating & Air',0,
 null,'9285675315',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde vendor/service candidate for Heating & Air."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Camp Verde','hvac_heat','Heating & Air','Aire Serv of North Central Arizona',
 'https://verdevalleydirectory.com/camp-verde/','verdevalleydirectory.com','Camp Verde vendor/service candidate for Heating & Air.','assistant census research: Camp Verde Heating & Air',0,
 null,'8882240848',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde vendor/service candidate for Heating & Air."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Camp Verde','backflow_plumbing','Backflow & Commercial Plumbing','D-Best Plumbing',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde vendor/service candidate for Backflow & Commercial Plumbing.','assistant census research: Camp Verde Backflow & Commercial Plumbing',0,
 null,'9285678755',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde vendor/service candidate for Backflow & Commercial Plumbing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Camp Verde','backflow_plumbing','Backflow & Commercial Plumbing','Camp Verde Plumbing',
 'https://campverdebiz.com/surrounding-area','campverdebiz.com','Camp Verde vendor/service candidate for Backflow & Commercial Plumbing.','assistant census research: Camp Verde Backflow & Commercial Plumbing',0,
 null,'8442875862',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde vendor/service candidate for Backflow & Commercial Plumbing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Camp Verde','electrical_service','Electrician','MJB Electric Inc',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde vendor/service candidate for Electrician.','assistant census research: Camp Verde Electrician',0,
 null,'6022782191',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde vendor/service candidate for Electrician."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Camp Verde','electrical_service','Electrician','CV Electric LLC',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde vendor/service candidate for Electrician.','assistant census research: Camp Verde Electrician',0,
 null,'9285929146',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde vendor/service candidate for Electrician."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Camp Verde','rural_property','Septic, Grading & Wells','A.L.D. Development Inc',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde vendor/service candidate for Septic, Grading & Wells.','assistant census research: Camp Verde Septic, Grading & Wells',0,
 null,'9283004578',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde vendor/service candidate for Septic, Grading & Wells."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Camp Verde','rural_property','Septic, Grading & Wells','Blevins Backhoe Service',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde vendor/service candidate for Septic, Grading & Wells.','assistant census research: Camp Verde Septic, Grading & Wells',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde vendor/service candidate for Septic, Grading & Wells."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Camp Verde','rural_property','Septic, Grading & Wells','Brewer Excavating LLC',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde vendor/service candidate for Septic, Grading & Wells.','assistant census research: Camp Verde Septic, Grading & Wells',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde vendor/service candidate for Septic, Grading & Wells."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Camp Verde','landscaping','Landscaping & Yard Cleanup','Bob''s Tree and Landscaping',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde vendor/service candidate for Landscaping & Yard Cleanup.','assistant census research: Camp Verde Landscaping & Yard Cleanup',0,
 null,'9285676744',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde vendor/service candidate for Landscaping & Yard Cleanup."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Camp Verde','landscaping','Landscaping & Yard Cleanup','S & J Landscaping and Maintenance LLC',
 'https://verdevalleydirectory.com/camp-verde/','verdevalleydirectory.com','Camp Verde vendor/service candidate for Landscaping & Yard Cleanup.','assistant census research: Camp Verde Landscaping & Yard Cleanup',0,
 null,'9282184012',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde vendor/service candidate for Landscaping & Yard Cleanup."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Camp Verde','floor_carpet','Floor & Carpet Cleaning','Advanced Cleaning Technologies',
 'https://campverdebiz.com/middle-verde','campverdebiz.com','Camp Verde vendor/service candidate for Floor & Carpet Cleaning.','assistant census research: Camp Verde Floor & Carpet Cleaning',0,
 null,'9283007452',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde vendor/service candidate for Floor & Carpet Cleaning."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Camp Verde','pest_control','Pest Control','Alternative Pest & Termite',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde vendor/service candidate for Pest Control.','assistant census research: Camp Verde Pest Control',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde vendor/service candidate for Pest Control."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Camp Verde','facility_maintenance','Building Maintenance Help','Kocisko Construction',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde vendor/service candidate for Building Maintenance Help.','assistant census research: Camp Verde Building Maintenance Help',0,
 null,'9285678702',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde vendor/service candidate for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Camp Verde','facility_maintenance','Building Maintenance Help','MJP Contractors LLC',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde vendor/service candidate for Building Maintenance Help.','assistant census research: Camp Verde Building Maintenance Help',0,
 null,'9282200003',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde vendor/service candidate for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Camp Verde','facility_maintenance','Building Maintenance Help','Pierce Builders LLC',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde vendor/service candidate for Building Maintenance Help.','assistant census research: Camp Verde Building Maintenance Help',0,
 null,'9283013226',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde vendor/service candidate for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Camp Verde','facility_maintenance','Building Maintenance Help','Triple X Construction Inc',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde vendor/service candidate for Building Maintenance Help.','assistant census research: Camp Verde Building Maintenance Help',0,
 null,'9283018449',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde vendor/service candidate for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Camp Verde','facility_maintenance','Building Maintenance Help','Tierra Verde Builders',
 'https://campverdebiz.com/finnie-flat','campverdebiz.com','Camp Verde vendor/service candidate for Building Maintenance Help.','assistant census research: Camp Verde Building Maintenance Help',0,
 null,'9285672477',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde vendor/service candidate for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Camp Verde','facility_maintenance','Building Maintenance Help','Brady Custom Builders',
 'https://campverdebiz.com/hwy-260-east','campverdebiz.com','Camp Verde vendor/service candidate for Building Maintenance Help.','assistant census research: Camp Verde Building Maintenance Help',0,
 null,'9287108731',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde vendor/service candidate for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Camp Verde','fire_safety','Fire Safety & Extinguisher Service','AZ Fire Sprinklers LLC',
 'https://visitcampverde.com/all-listings/','visitcampverde.com','Camp Verde vendor/service candidate for Fire Safety & Extinguisher Service.','assistant census research: Camp Verde Fire Safety & Extinguisher Service',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde vendor/service candidate for Fire Safety & Extinguisher Service."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Camp Verde','towing_roadside','Towing & Roadside Help','Alpha Towing & Transport',
 'https://visitcampverde.com/all-listings/','visitcampverde.com','Camp Verde vendor/service candidate for Towing & Roadside Help.','assistant census research: Camp Verde Towing & Roadside Help',0,
 null,'9285675130',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde vendor/service candidate for Towing & Roadside Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Camp Verde','towing_roadside','Towing & Roadside Help','TNT Towing & Transport LLC',
 'https://visitcampverde.com/all-listings/','visitcampverde.com','Camp Verde vendor/service candidate for Towing & Roadside Help.','assistant census research: Camp Verde Towing & Roadside Help',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_batch_01","researched_at":"2026-10-26T23:25:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Camp Verde vendor/service candidate for Towing & Roadside Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

update market_inventory_progress p
set official_candidates=(
 select count(*) from market_inventory_candidates c
 where c.side=p.side and c.market=p.market and c.category_key=p.category_key
   and c.status='discovered' and c.query_strategy_version=7 and c.official_site=true
), updated_at=now()
where p.market='Camp Verde';


-- Assistant-led verified Camp Verde batch 02 (2026-10-26)
insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Camp Verde','hvac_heat','Heating & Air','Goettl''s High Desert Mechanical',
 'https://goettlshdm.com/camp-verde-az/','goettlshdm.com','Direct Camp Verde service page; Camp Verde location at 4650 Old Highway 279 and active ROC licenses published.','assistant verified research: Camp Verde Heating & Air',0,
 null,'(928) 567-2200',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_verified_02","researched_at":"2026-10-26T23:31:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct Camp Verde service page; Camp Verde location at 4650 Old Highway 279 and active ROC licenses published."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,source_tier='direct',verification_status='direct_evidence',
 last_verified_at=now(),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Camp Verde','backflow_plumbing','Backflow & Commercial Plumbing','Goettl''s High Desert Mechanical',
 'https://goettlshdm.com/camp-verde-az/','goettlshdm.com','Direct Camp Verde page explicitly offers plumbing and drain service; company publishes ROC plumbing license 307525.','assistant verified research: Camp Verde Backflow & Commercial Plumbing',0,
 null,'(928) 567-2200',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_verified_02","researched_at":"2026-10-26T23:31:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct Camp Verde page explicitly offers plumbing and drain service; company publishes ROC plumbing license 307525."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,source_tier='direct',verification_status='direct_evidence',
 last_verified_at=now(),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Camp Verde','hvac_heat','Heating & Air','Verde Sol-Air Services',
 'https://www.verdesolair.com/','verdesolair.com','Direct business site reached from a current Camp Verde verified listing; Camp Verde HVAC company.','assistant verified research: Camp Verde Heating & Air',0,
 null,'(928) 567-5315',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_verified_02","researched_at":"2026-10-26T23:31:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct business site reached from a current Camp Verde verified listing; Camp Verde HVAC company."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,source_tier='direct',verification_status='direct_evidence',
 last_verified_at=now(),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Camp Verde','hvac_heat','Heating & Air','Aire Serv of North Central Arizona',
 'https://www.aireserv.com/north-central-arizona/geo/camp-verde/','aireserv.com','Direct Camp Verde HVAC service page; current license-backed listing identifies Camp Verde location and ROC 297131.','assistant verified research: Camp Verde Heating & Air',0,
 null,'(888) 224-0848',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_verified_02","researched_at":"2026-10-26T23:31:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct Camp Verde HVAC service page; current license-backed listing identifies Camp Verde location and ROC 297131."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,source_tier='direct',verification_status='direct_evidence',
 last_verified_at=now(),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Camp Verde','landscaping','Landscaping & Yard Cleanup','Bob''s Tree and Landscaping',
 'https://bobstreeandlandscaping.com/','bobstreeandlandscaping.com','Direct company site; current verified listing identifies Camp Verde service and active ROC 200344.','assistant verified research: Camp Verde Landscaping & Yard Cleanup',0,
 null,'(928) 567-6744',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_verified_02","researched_at":"2026-10-26T23:31:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct company site; current verified listing identifies Camp Verde service and active ROC 200344."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,source_tier='direct',verification_status='direct_evidence',
 last_verified_at=now(),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Camp Verde','landscaping','Landscaping & Yard Cleanup','Mario and Mario Landscaping',
 'https://marioandmariolandscaping.net/','marioandmariolandscaping.net','Direct company site; current verified listing includes Camp Verde and active ROC 165704.','assistant verified research: Camp Verde Landscaping & Yard Cleanup',0,
 null,'(928) 282-3118',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_verified_02","researched_at":"2026-10-26T23:31:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct company site; current verified listing includes Camp Verde and active ROC 165704."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,source_tier='direct',verification_status='direct_evidence',
 last_verified_at=now(),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Camp Verde','landscaping','Landscaping & Yard Cleanup','S & J Landscaping and Maintenance LLC',
 'https://landscapercottonwood.com/','landscapercottonwood.com','Direct company site; current verified listing explicitly includes Camp Verde service area.','assistant verified research: Camp Verde Landscaping & Yard Cleanup',0,
 null,'(928) 218-4012',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_verified_02","researched_at":"2026-10-26T23:31:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct company site; current verified listing explicitly includes Camp Verde service area."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,source_tier='direct',verification_status='direct_evidence',
 last_verified_at=now(),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Camp Verde','facility_maintenance','Building Maintenance Help','Tierra Verde Builders',
 'https://www.tierraverdebuilders.com/','tierraverdebuilders.com','Direct site lists Camp Verde head office, commercial construction, tenant improvements, and ROC licenses 261021/327240.','assistant verified research: Camp Verde Building Maintenance Help',0,
 'info@tierraverdebuilders.com','(928) 567-2477',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_verified_02","researched_at":"2026-10-26T23:31:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site lists Camp Verde head office, commercial construction, tenant improvements, and ROC licenses 261021/327240."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,source_tier='direct',verification_status='direct_evidence',
 last_verified_at=now(),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Camp Verde','facility_maintenance','Building Maintenance Help','Triple X Construction Inc',
 'https://triplexconstructionaz.com/','triplexconstructionaz.com','Direct site identifies full-service licensed general contractor serving Camp Verde; direct contact page lists Camp Verde mailing address.','assistant verified research: Camp Verde Building Maintenance Help',0,
 null,'(928) 567-5180',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_verified_02","researched_at":"2026-10-26T23:31:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site identifies full-service licensed general contractor serving Camp Verde; direct contact page lists Camp Verde mailing address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,source_tier='direct',verification_status='direct_evidence',
 last_verified_at=now(),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','general_business','other local businesses','Anasazi Animal Clinic',
 'https://anasazianimalclinic.com/','anasazianimalclinic.com','Direct veterinary practice site states it serves Camp Verde and surrounding areas.','assistant verified research: Camp Verde other local businesses',0,
 null,'(928) 567-3807',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_verified_02","researched_at":"2026-10-26T23:31:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct veterinary practice site states it serves Camp Verde and surrounding areas."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,source_tier='direct',verification_status='direct_evidence',
 last_verified_at=now(),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','hotels_motels','hotels motels lodging','Cliff Castle Casino Hotel',
 'https://www.cliffcastlecasinohotel.com/','cliffcastlecasinohotel.com','Direct hotel/casino site lists 555 Middle Verde Road, Camp Verde and lodging, meetings, weddings, dining and entertainment.','assistant verified research: Camp Verde hotels motels lodging',0,
 'guestservices@cliffcastlecasino.net','1-800-381-7568',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_verified_02","researched_at":"2026-10-26T23:31:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct hotel/casino site lists 555 Middle Verde Road, Camp Verde and lodging, meetings, weddings, dining and entertainment."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,source_tier='direct',verification_status='direct_evidence',
 last_verified_at=now(),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','general_business','other local businesses','Jones Ford Verde Valley',
 'https://www.jonesfordverdevalley.com/','jonesfordverdevalley.com','Direct dealership site reached from current Camp Verde verified listing; dealership sells and services vehicles in Camp Verde.','assistant verified research: Camp Verde other local businesses',0,
 null,'(928) 634-3673',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_verified_02","researched_at":"2026-10-26T23:31:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct dealership site reached from current Camp Verde verified listing; dealership sells and services vehicles in Camp Verde."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,source_tier='direct',verification_status='direct_evidence',
 last_verified_at=now(),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','general_business','other local businesses','Express Automotive',
 'https://expressautomotivecottonwood.com/','expressautomotivecottonwood.com','Direct automotive business site reached from current Camp Verde verified listing; shop location is 673 S 1st St, Camp Verde.','assistant verified research: Camp Verde other local businesses',0,
 null,'(928) 862-2572',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_verified_02","researched_at":"2026-10-26T23:31:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct automotive business site reached from current Camp Verde verified listing; shop location is 673 S 1st St, Camp Verde."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,source_tier='direct',verification_status='direct_evidence',
 last_verified_at=now(),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','schools','schools charter schools private schools','American Heritage Academy - Camp Verde',
 'https://www.americanheritageacademy.org/','americanheritageacademy.org','Direct school site corroborated by current Camp Verde verified school listing at 132 W General Crook Trail.','assistant verified research: Camp Verde schools charter schools private schools',0,
 null,'(928) 567-0462',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_verified_02","researched_at":"2026-10-26T23:31:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct school site corroborated by current Camp Verde verified school listing at 132 W General Crook Trail."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,source_tier='direct',verification_status='direct_evidence',
 last_verified_at=now(),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','churches','churches worship centers','Camp Verde Baptist Church',
 'https://www.campverdebaptist.com/','campverdebaptist.com','Direct church site linked by the Camp Verde church directory; location at 299 E Hollamon St.','assistant verified research: Camp Verde churches worship centers',0,
 null,'(928) 567-3324',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_verified_02","researched_at":"2026-10-26T23:31:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct church site linked by the Camp Verde church directory; location at 299 E Hollamon St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,source_tier='direct',verification_status='direct_evidence',
 last_verified_at=now(),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Camp Verde','public_facilities','government public facilities municipal buildings','Town of Camp Verde',
 'https://www.campverde.az.gov/','campverde.az.gov','Official municipal site for Town of Camp Verde facilities and departments.','assistant verified research: Camp Verde government public facilities municipal buildings',0,
 null,null,true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_camp_verde_verified_02","researched_at":"2026-10-26T23:31:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official municipal site for Town of Camp Verde facilities and departments."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,source_tier='direct',verification_status='direct_evidence',
 last_verified_at=now(),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

update market_inventory_progress p
set official_candidates=(
 select count(*) from market_inventory_candidates c
 where c.side=p.side and c.market=p.market and c.category_key=p.category_key
   and c.status='discovered' and c.query_strategy_version=7 and c.official_site=true
), updated_at=now()
where p.market='Camp Verde';


-- Assistant-led Cottonwood census batch 01 (2026-10-26)
insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','restaurants','restaurants','Annie''s',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood restaurant/food-service business listing.','assistant census research: Cottonwood restaurants',0,
 null,'(928) 634-4121',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood restaurant/food-service business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','restaurants','restaurants','Aqui Arizona Kitchen & Agave Bar',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood restaurant/food-service business listing.','assistant census research: Cottonwood restaurants',0,
 null,'(928) 852-7664',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood restaurant/food-service business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','restaurants','restaurants','Belfry Wood-Fired Grill & Brewery',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood restaurant/food-service business listing.','assistant census research: Cottonwood restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood restaurant/food-service business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','restaurants','restaurants','Bing''s Burger Station',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood restaurant/food-service business listing.','assistant census research: Cottonwood restaurants',0,
 null,'(928) 852-0109',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood restaurant/food-service business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','restaurants','restaurants','Black Bear Diner',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood restaurant/food-service business listing.','assistant census research: Cottonwood restaurants',0,
 null,'(928) 634-8188',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood restaurant/food-service business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','restaurants','restaurants','Bocce',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood restaurant/food-service business listing.','assistant census research: Cottonwood restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood restaurant/food-service business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','restaurants','restaurants','Carl''s Jr',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood restaurant/food-service business listing.','assistant census research: Cottonwood restaurants',0,
 null,'(928) 634-5338',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood restaurant/food-service business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','restaurants','restaurants','Crema Craft Kitchen',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood restaurant/food-service business listing.','assistant census research: Cottonwood restaurants',0,
 null,'(928) 649-5785',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood restaurant/food-service business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','restaurants','restaurants','Denny''s',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood restaurant/food-service business listing.','assistant census research: Cottonwood restaurants',0,
 null,'(928) 639-3805',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood restaurant/food-service business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','restaurants','restaurants','DQ Grill & Chill',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood restaurant/food-service business listing.','assistant census research: Cottonwood restaurants',0,
 null,'(928) 634-5355',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood restaurant/food-service business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','restaurants','restaurants','EDEN',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood restaurant/food-service business listing.','assistant census research: Cottonwood restaurants',0,
 null,'(928) 649-2675',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood restaurant/food-service business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','restaurants','restaurants','Nic''s Italian Steak & Crab House',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood restaurant/food-service business listing.','assistant census research: Cottonwood restaurants',0,
 null,'(928) 634-9626',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood restaurant/food-service business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','restaurants','restaurants','Pizzeria Bocce',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood restaurant/food-service business listing.','assistant census research: Cottonwood restaurants',0,
 null,'(928) 202-3597',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood restaurant/food-service business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','restaurants','restaurants','Plaza Bonita Mexican Restaurant',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood restaurant/food-service business listing.','assistant census research: Cottonwood restaurants',0,
 null,'(928) 634-7018',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood restaurant/food-service business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','restaurants','restaurants','Sonic Drive-In',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood restaurant/food-service business listing.','assistant census research: Cottonwood restaurants',0,
 null,'(928) 639-4769',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood restaurant/food-service business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','restaurants','restaurants','Starbucks',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood restaurant/food-service business listing.','assistant census research: Cottonwood restaurants',0,
 null,'(928) 499-2716',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood restaurant/food-service business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','restaurants','restaurants','Verde Lea Market Deli & Grill',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood restaurant/food-service business listing.','assistant census research: Cottonwood restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood restaurant/food-service business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','restaurants','restaurants','Acme Pizzaria',
 'https://visitcottonwoodaz.org/business-directory/','visitcottonwoodaz.org','Current Cottonwood restaurant/food-service business listing.','assistant census research: Cottonwood restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood restaurant/food-service business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','restaurants','restaurants','Adriana''s Mexican Restaurant',
 'https://visitcottonwoodaz.org/business-directory/','visitcottonwoodaz.org','Current Cottonwood restaurant/food-service business listing.','assistant census research: Cottonwood restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood restaurant/food-service business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','restaurants','restaurants','Ay Chihuahua Mexican Food',
 'https://visitcottonwoodaz.org/business-directory/','visitcottonwoodaz.org','Current Cottonwood restaurant/food-service business listing.','assistant census research: Cottonwood restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood restaurant/food-service business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','restaurants','restaurants','Bananas In Old Town',
 'https://visitcottonwoodaz.org/business-directory/','visitcottonwoodaz.org','Current Cottonwood restaurant/food-service business listing.','assistant census research: Cottonwood restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood restaurant/food-service business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','restaurants','restaurants','Berry Divine @ Strada',
 'https://visitcottonwoodaz.org/business-directory/','visitcottonwoodaz.org','Current Cottonwood restaurant/food-service business listing.','assistant census research: Cottonwood restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood restaurant/food-service business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','restaurants','restaurants','BV''s Italian Kitchen',
 'https://visitcottonwoodaz.org/business-directory/','visitcottonwoodaz.org','Current Cottonwood restaurant/food-service business listing.','assistant census research: Cottonwood restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood restaurant/food-service business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','restaurants','restaurants','Calavera Bar & Grill',
 'https://visitcottonwoodaz.org/business-directory/','visitcottonwoodaz.org','Current Cottonwood restaurant/food-service business listing.','assistant census research: Cottonwood restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood restaurant/food-service business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','theaters_entertainment','theaters cinemas entertainment venues','Arizona Stronghold Vineyards Tasting Room',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Cottonwood winery/brewery/tasting-room or visitor venue.','assistant census research: Cottonwood theaters cinemas entertainment venues',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Cottonwood winery/brewery/tasting-room or visitor venue."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','theaters_entertainment','theaters cinemas entertainment venues','Burning Tree Cellars',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Cottonwood winery/brewery/tasting-room or visitor venue.','assistant census research: Cottonwood theaters cinemas entertainment venues',0,
 null,'(928) 649-8733',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Cottonwood winery/brewery/tasting-room or visitor venue."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','theaters_entertainment','theaters cinemas entertainment venues','Cellar 433',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Cottonwood winery/brewery/tasting-room or visitor venue.','assistant census research: Cottonwood theaters cinemas entertainment venues',0,
 null,'(928) 852-4002',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Cottonwood winery/brewery/tasting-room or visitor venue."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','theaters_entertainment','theaters cinemas entertainment venues','Two-Tailed Brewing',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Cottonwood winery/brewery/tasting-room or visitor venue.','assistant census research: Cottonwood theaters cinemas entertainment venues',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Cottonwood winery/brewery/tasting-room or visitor venue."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','theaters_entertainment','theaters cinemas entertainment venues','Verde Valley Wine Consortium',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Cottonwood winery/brewery/tasting-room or visitor venue.','assistant census research: Cottonwood theaters cinemas entertainment venues',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Cottonwood winery/brewery/tasting-room or visitor venue."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','theaters_entertainment','theaters cinemas entertainment venues','Verde Valley Wine Trail',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Cottonwood winery/brewery/tasting-room or visitor venue.','assistant census research: Cottonwood theaters cinemas entertainment venues',0,
 null,'(928) 634-7593',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Cottonwood winery/brewery/tasting-room or visitor venue."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','hotels_motels','hotels motels lodging','Best Western Cottonwood Inn',
 'https://visitcottonwoodaz.org/business-directory/','visitcottonwoodaz.org','Current Cottonwood lodging facility.','assistant census research: Cottonwood hotels motels lodging',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood lodging facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','hotels_motels','hotels motels lodging','Lux Verde Hotel',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood lodging facility.','assistant census research: Cottonwood hotels motels lodging',0,
 null,'(928) 634-4207',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood lodging facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','hotels_motels','hotels motels lodging','SpringHill Suites',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood lodging facility.','assistant census research: Cottonwood hotels motels lodging',0,
 null,'(928) 395-3697',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood lodging facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','hotels_motels','hotels motels lodging','Lofts of Old Town LLC',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood lodging facility.','assistant census research: Cottonwood hotels motels lodging',0,
 null,'(609) 351-6425',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood lodging facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','schools','schools charter schools private schools','American Heritage Academy - Cottonwood',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood school facility.','assistant census research: Cottonwood schools charter schools private schools',0,
 null,'(928) 634-2144',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood school facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','schools','schools charter schools private schools','Arizona iZone Institute',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood school facility.','assistant census research: Cottonwood schools charter schools private schools',0,
 null,'(928) 634-2288',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood school facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','schools','schools charter schools private schools','Cottonwood Community School',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood school facility.','assistant census research: Cottonwood schools charter schools private schools',0,
 null,'(928) 634-2231',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood school facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','schools','schools charter schools private schools','Dr. Daniel Bright Elementary School',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood school facility.','assistant census research: Cottonwood schools charter schools private schools',0,
 null,'(928) 634-7039',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood school facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','senior_daycare','senior living assisted living daycare childcare','Bright Futures Child Care',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood childcare facility with licensed-program evidence in local directory.','assistant census research: Cottonwood senior living assisted living daycare childcare',0,
 null,'(928) 649-1330',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood childcare facility with licensed-program evidence in local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','senior_daycare','senior living assisted living daycare childcare','N.A.C.O.G. Cottonwood Head Start',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood childcare facility with licensed-program evidence in local directory.','assistant census research: Cottonwood senior living assisted living daycare childcare',0,
 null,'(928) 634-8236',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood childcare facility with licensed-program evidence in local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','senior_daycare','senior living assisted living daycare childcare','Verde Christian Academy Daycare',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood childcare facility with licensed-program evidence in local directory.','assistant census research: Cottonwood senior living assisted living daycare childcare',0,
 null,'(928) 634-8113',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood childcare facility with licensed-program evidence in local directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','churches','churches worship centers','Faith Lutheran Church',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood church/worship facility.','assistant census research: Cottonwood churches worship centers',0,
 null,'(928) 634-7876',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood church/worship facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','churches','churches worship centers','Immaculate Conception Catholic Parish',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood church/worship facility.','assistant census research: Cottonwood churches worship centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood church/worship facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','churches','churches worship centers','Mountain View United Methodist Church',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood church/worship facility.','assistant census research: Cottonwood churches worship centers',0,
 null,'(928) 634-8857',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood church/worship facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','dental','dentists dental offices orthodontists','Arizona Smile Designers',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood dental practice.','assistant census research: Cottonwood dentists dental offices orthodontists',0,
 null,'(928) 634-8610',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood dental practice."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','dental','dentists dental offices orthodontists','Around the Mountain Pediatric Dentistry',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood dental practice.','assistant census research: Cottonwood dentists dental offices orthodontists',0,
 null,'(928) 975-5808',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood dental practice."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','dental','dentists dental offices orthodontists','Cottonwood Modern Dentistry & Orthodontics',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood dental practice.','assistant census research: Cottonwood dentists dental offices orthodontists',0,
 null,'(928) 239-3254',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood dental practice."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','dental','dentists dental offices orthodontists','Mackey Family Dentistry',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood dental practice.','assistant census research: Cottonwood dentists dental offices orthodontists',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood dental practice."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','dental','dentists dental offices orthodontists','VIP Family & Sedation Dentistry',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood dental practice.','assistant census research: Cottonwood dentists dental offices orthodontists',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood dental practice."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','medical_centers','hospitals medical centers clinics','Emergency Department at Northern Arizona Healthcare',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood medical/health-care facility.','assistant census research: Cottonwood hospitals medical centers clinics',0,
 null,'(928) 639-6172',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood medical/health-care facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','medical_centers','hospitals medical centers clinics','Breakthrough Medicine Integrative & Longevity Center',
 'https://visitcottonwoodaz.org/business-directory/','visitcottonwoodaz.org','Current Cottonwood medical/health-care facility.','assistant census research: Cottonwood hospitals medical centers clinics',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood medical/health-care facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','therapy_behavioral','therapy counseling behavioral health clinics','NAZCARE Serenity Circle Wellness Center',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood behavioral-health/wellness facility.','assistant census research: Cottonwood therapy counseling behavioral health clinics',0,
 null,'(928) 442-9205',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood behavioral-health/wellness facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','general_business','other local businesses','Verde Veterinary Hospital',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood veterinary facility.','assistant census research: Cottonwood other local businesses',0,
 null,'(928) 634-7538',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood veterinary facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','general_business','other local businesses','Catholic Charities Community Services',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood nonprofit/community-service facility.','assistant census research: Cottonwood other local businesses',0,
 null,'(928) 634-4254',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood nonprofit/community-service facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','general_business','other local businesses','House of Ruth Pregnancy Care Center',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood nonprofit/community-service facility.','assistant census research: Cottonwood other local businesses',0,
 null,'(928) 634-0212',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood nonprofit/community-service facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','general_business','other local businesses','Angie''s House',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood nonprofit/community-service facility.','assistant census research: Cottonwood other local businesses',0,
 null,'(928) 301-2169',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood nonprofit/community-service facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','general_business','other local businesses','The Station on 6th',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood nonprofit/community-service facility.','assistant census research: Cottonwood other local businesses',0,
 null,'(928) 634-5450',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood nonprofit/community-service facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','general_business','other local businesses','American Legion Post #25',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood nonprofit/community-service facility.','assistant census research: Cottonwood other local businesses',0,
 null,'(928) 634-3004',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood nonprofit/community-service facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','public_facilities','government public facilities municipal buildings','Cottonwood Public Library',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current City of Cottonwood public library facility.','assistant census research: Cottonwood government public facilities municipal buildings',0,
 null,'(928) 634-7559',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current City of Cottonwood public library facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','public_facilities','government public facilities municipal buildings','Cottonwood Utility Department',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current City of Cottonwood utility/public facility.','assistant census research: Cottonwood government public facilities municipal buildings',0,
 null,'(928) 634-0186',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current City of Cottonwood utility/public facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','public_facilities','government public facilities municipal buildings','Dead Horse Ranch State Park',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood-area state park/public facility.','assistant census research: Cottonwood government public facilities municipal buildings',0,
 null,'(928) 634-5283',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood-area state park/public facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','retail','retail stores shopping stores','Home Furnishings Direct',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood retail/showroom/supply business.','assistant census research: Cottonwood retail stores shopping stores',0,
 null,'(928) 649-8300',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood retail/showroom/supply business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','retail','retail stores shopping stores','Crazy Tony''s Old Town Market',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood retail/showroom/supply business.','assistant census research: Cottonwood retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood retail/showroom/supply business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','retail','retail stores shopping stores','Art Glitter',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood retail/showroom/supply business.','assistant census research: Cottonwood retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood retail/showroom/supply business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','retail','retail stores shopping stores','Queen B Vinyl Café',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood retail/showroom/supply business.','assistant census research: Cottonwood retail stores shopping stores',0,
 null,'(928) 639-3516',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood retail/showroom/supply business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','retail','retail stores shopping stores','All Things Creative',
 'https://visitcottonwoodaz.org/business-directory/','visitcottonwoodaz.org','Current Cottonwood retail/showroom/supply business.','assistant census research: Cottonwood retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood retail/showroom/supply business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','retail','retail stores shopping stores','Arizona Hot Tub Company',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood retail/showroom/supply business.','assistant census research: Cottonwood retail stores shopping stores',0,
 null,'(928) 775-9886',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood retail/showroom/supply business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','retail','retail stores shopping stores','Canyon Pipe & Supply',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood retail/showroom/supply business.','assistant census research: Cottonwood retail stores shopping stores',0,
 null,'(928) 646-9499',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood retail/showroom/supply business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','retail','retail stores shopping stores','Hughes Supply - Cottonwood',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood retail/showroom/supply business.','assistant census research: Cottonwood retail stores shopping stores',0,
 null,'(928) 639-0577',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood retail/showroom/supply business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','property_management','property management companies apartment communities','Adobe Group Realty',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood real-estate/property-services business.','assistant census research: Cottonwood property management companies apartment communities',0,
 null,'(928) 634-1099',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood real-estate/property-services business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','property_management','property management companies apartment communities','Coldwell Banker Northland',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood real-estate/property-services business.','assistant census research: Cottonwood property management companies apartment communities',0,
 null,'(928) 634-9536',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood real-estate/property-services business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','property_management','property management companies apartment communities','ND Property Solutions',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood real-estate/property-services business.','assistant census research: Cottonwood property management companies apartment communities',0,
 null,'(928) 517-7505',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood real-estate/property-services business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','property_management','property management companies apartment communities','Luxe Property Services',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood real-estate/property-services business.','assistant census research: Cottonwood property management companies apartment communities',0,
 null,'(928) 451-4559',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood real-estate/property-services business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','insurance_professional','insurance agents professional offices','Brian Bocchino State Farm',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood finance/insurance/professional office.','assistant census research: Cottonwood insurance agents professional offices',0,
 null,'(928) 634-2763',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood finance/insurance/professional office."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','insurance_professional','insurance agents professional offices','State Farm - Fudge Insurance Agency',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood finance/insurance/professional office.','assistant census research: Cottonwood insurance agents professional offices',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood finance/insurance/professional office."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','insurance_professional','insurance agents professional offices','American National Insurance',
 'https://business.cottonwoodchamberaz.org/list','business.cottonwoodchamberaz.org','Current Cottonwood finance/insurance/professional office.','assistant census research: Cottonwood insurance agents professional offices',0,
 null,'(928) 634-3030',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood finance/insurance/professional office."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','insurance_professional','insurance agents professional offices','Credit Union West',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood finance/insurance/professional office.','assistant census research: Cottonwood insurance agents professional offices',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood finance/insurance/professional office."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','insurance_professional','insurance agents professional offices','Yavapai Title Agency',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood finance/insurance/professional office.','assistant census research: Cottonwood insurance agents professional offices',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood finance/insurance/professional office."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','warehouses_industrial','warehouses industrial businesses distribution centers','Aspen Mini Storage',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood storage/agriculture/industrial facility.','assistant census research: Cottonwood warehouses industrial businesses distribution centers',0,
 null,'(928) 634-7337',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood storage/agriculture/industrial facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','warehouses_industrial','warehouses industrial businesses distribution centers','Alpha Self Storage',
 'https://business.cottonwoodchamberaz.org/list','business.cottonwoodchamberaz.org','Current Cottonwood storage/agriculture/industrial facility.','assistant census research: Cottonwood warehouses industrial businesses distribution centers',0,
 null,'(928) 634-0744',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood storage/agriculture/industrial facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','warehouses_industrial','warehouses industrial businesses distribution centers','AZ Barn and Storage Solutions',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood storage/agriculture/industrial facility.','assistant census research: Cottonwood warehouses industrial businesses distribution centers',0,
 null,'(480) 273-3562',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood storage/agriculture/industrial facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','warehouses_industrial','warehouses industrial businesses distribution centers','ECO Farm',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood storage/agriculture/industrial facility.','assistant census research: Cottonwood warehouses industrial businesses distribution centers',0,
 null,'(928) 451-4853',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood storage/agriculture/industrial facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','general_business','other local businesses','360 Automotive',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood automotive/motorsports business.','assistant census research: Cottonwood other local businesses',0,
 null,'(928) 227-5432',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood automotive/motorsports business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','general_business','other local businesses','Big Brand Tire & Service',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood automotive/motorsports business.','assistant census research: Cottonwood other local businesses',0,
 null,'(928) 493-8502',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood automotive/motorsports business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','general_business','other local businesses','D&K Service Cycle & ATV / Epic Motorsports',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood automotive/motorsports business.','assistant census research: Cottonwood other local businesses',0,
 null,'(928) 649-8822',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood automotive/motorsports business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','general_business','other local businesses','R&T Repair Inc',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood automotive/motorsports business.','assistant census research: Cottonwood other local businesses',0,
 null,'(928) 646-5342',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood automotive/motorsports business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Cottonwood','general_business','other local businesses','AZ Auto Lenders',
 'https://business.cottonwoodchamberaz.org/list','business.cottonwoodchamberaz.org','Current Cottonwood automotive/motorsports business.','assistant census research: Cottonwood other local businesses',0,
 null,'(928) 634-0818',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood automotive/motorsports business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Cottonwood','garage_door','Garage Door Repair','A1 Garage Door Service',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood vendor listing for Garage Door Repair; direct/license verification can upgrade this evidence.','assistant census research: Cottonwood Garage Door Repair',0,
 null,'(928) 250-6725',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood vendor listing for Garage Door Repair; direct/license verification can upgrade this evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Cottonwood','hvac_heat','Heating & Air','Absolute Comfort HVAC LLC',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood vendor listing for Heating & Air; direct/license verification can upgrade this evidence.','assistant census research: Cottonwood Heating & Air',0,
 null,'(928) 606-1030',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood vendor listing for Heating & Air; direct/license verification can upgrade this evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Cottonwood','hvac_heat','Heating & Air','Aire Serv of North Central Arizona',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood vendor listing for Heating & Air; direct/license verification can upgrade this evidence.','assistant census research: Cottonwood Heating & Air',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood vendor listing for Heating & Air; direct/license verification can upgrade this evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Cottonwood','hvac_heat','Heating & Air','Comfort Kings HVAC',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood vendor listing for Heating & Air; direct/license verification can upgrade this evidence.','assistant census research: Cottonwood Heating & Air',0,
 null,'(928) 592-7995',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood vendor listing for Heating & Air; direct/license verification can upgrade this evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Cottonwood','hvac_heat','Heating & Air','Polar Mechanical',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood vendor listing for Heating & Air; direct/license verification can upgrade this evidence.','assistant census research: Cottonwood Heating & Air',0,
 null,'(928) 463-5857',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood vendor listing for Heating & Air; direct/license verification can upgrade this evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Cottonwood','hvac_heat','Heating & Air','Trio Quality Service',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood vendor listing for Heating & Air; direct/license verification can upgrade this evidence.','assistant census research: Cottonwood Heating & Air',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood vendor listing for Heating & Air; direct/license verification can upgrade this evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Cottonwood','hvac_heat','Heating & Air','Nichols Plumbing Electrical & HVAC',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood vendor listing for Heating & Air; direct/license verification can upgrade this evidence.','assistant census research: Cottonwood Heating & Air',0,
 null,'(928) 228-0234',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood vendor listing for Heating & Air; direct/license verification can upgrade this evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Cottonwood','backflow_plumbing','Backflow & Commercial Plumbing','Nichols Plumbing Electrical & HVAC',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood vendor listing for Backflow & Commercial Plumbing; direct/license verification can upgrade this evidence.','assistant census research: Cottonwood Backflow & Commercial Plumbing',0,
 null,'(928) 228-0234',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood vendor listing for Backflow & Commercial Plumbing; direct/license verification can upgrade this evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Cottonwood','electrical_service','Electrician','Nichols Plumbing Electrical & HVAC',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood vendor listing for Electrician; direct/license verification can upgrade this evidence.','assistant census research: Cottonwood Electrician',0,
 null,'(928) 228-0234',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood vendor listing for Electrician; direct/license verification can upgrade this evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Cottonwood','backflow_plumbing','Backflow & Commercial Plumbing','Dewey''s Plumbing',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood vendor listing for Backflow & Commercial Plumbing; direct/license verification can upgrade this evidence.','assistant census research: Cottonwood Backflow & Commercial Plumbing',0,
 null,'(928) 301-8798',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood vendor listing for Backflow & Commercial Plumbing; direct/license verification can upgrade this evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Cottonwood','backflow_plumbing','Backflow & Commercial Plumbing','Victory Plumbing Solutions LLC',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood vendor listing for Backflow & Commercial Plumbing; direct/license verification can upgrade this evidence.','assistant census research: Cottonwood Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood vendor listing for Backflow & Commercial Plumbing; direct/license verification can upgrade this evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Cottonwood','electrical_service','Electrician','Arizona Wide Electric',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood vendor listing for Electrician; direct/license verification can upgrade this evidence.','assistant census research: Cottonwood Electrician',0,
 null,'(928) 646-3059',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood vendor listing for Electrician; direct/license verification can upgrade this evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Cottonwood','electrical_service','Electrician','Connolly Electric & Mechanical',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood vendor listing for Electrician; direct/license verification can upgrade this evidence.','assistant census research: Cottonwood Electrician',0,
 null,'(928) 639-4251',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood vendor listing for Electrician; direct/license verification can upgrade this evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Cottonwood','electrical_service','Electrician','EMF Electrician / My Quiet Home',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood vendor listing for Electrician; direct/license verification can upgrade this evidence.','assistant census research: Cottonwood Electrician',0,
 null,'(818) 292-1271',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood vendor listing for Electrician; direct/license verification can upgrade this evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Cottonwood','rural_property','Septic, Grading & Wells','Advanced Septic Service',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood vendor listing for Septic, Grading & Wells; direct/license verification can upgrade this evidence.','assistant census research: Cottonwood Septic, Grading & Wells',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood vendor listing for Septic, Grading & Wells; direct/license verification can upgrade this evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Cottonwood','landscaping','Landscaping & Yard Cleanup','Charlies Landscaping',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood vendor listing for Landscaping & Yard Cleanup; direct/license verification can upgrade this evidence.','assistant census research: Cottonwood Landscaping & Yard Cleanup',0,
 null,'(928) 634-8798',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood vendor listing for Landscaping & Yard Cleanup; direct/license verification can upgrade this evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Cottonwood','landscaping','Landscaping & Yard Cleanup','Lukas Scape LLC',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood vendor listing for Landscaping & Yard Cleanup; direct/license verification can upgrade this evidence.','assistant census research: Cottonwood Landscaping & Yard Cleanup',0,
 null,'(928) 284-8866',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood vendor listing for Landscaping & Yard Cleanup; direct/license verification can upgrade this evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Cottonwood','pest_control','Pest Control','Arizona Bug Co',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood vendor listing for Pest Control; direct/license verification can upgrade this evidence.','assistant census research: Cottonwood Pest Control',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood vendor listing for Pest Control; direct/license verification can upgrade this evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Cottonwood','pest_control','Pest Control','Conn Pest Control',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood vendor listing for Pest Control; direct/license verification can upgrade this evidence.','assistant census research: Cottonwood Pest Control',0,
 null,'(928) 634-7373',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood vendor listing for Pest Control; direct/license verification can upgrade this evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Cottonwood','floor_carpet','Floor & Carpet Cleaning','Stanley Steemer',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood vendor listing for Floor & Carpet Cleaning; direct/license verification can upgrade this evidence.','assistant census research: Cottonwood Floor & Carpet Cleaning',0,
 null,'(800) 783-3637',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood vendor listing for Floor & Carpet Cleaning; direct/license verification can upgrade this evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Cottonwood','window_cleaning','Window Cleaning','Budget Blinds of Northern Arizona',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood vendor listing for Window Cleaning; direct/license verification can upgrade this evidence.','assistant census research: Cottonwood Window Cleaning',0,
 null,'(928) 707-2199',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood vendor listing for Window Cleaning; direct/license verification can upgrade this evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Cottonwood','facility_maintenance','Building Maintenance Help','Noah''s Ark Roofing & Sheet Metal LLC',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood vendor listing for Building Maintenance Help; direct/license verification can upgrade this evidence.','assistant census research: Cottonwood Building Maintenance Help',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood vendor listing for Building Maintenance Help; direct/license verification can upgrade this evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Cottonwood','facility_maintenance','Building Maintenance Help','D&O Crane Enterprises',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood vendor listing for Building Maintenance Help; direct/license verification can upgrade this evidence.','assistant census research: Cottonwood Building Maintenance Help',0,
 null,'(928) 202-9686',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood vendor listing for Building Maintenance Help; direct/license verification can upgrade this evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Cottonwood','facility_maintenance','Building Maintenance Help','Awnings and Misting Systems / Future Enterprises LLC',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood vendor listing for Building Maintenance Help; direct/license verification can upgrade this evidence.','assistant census research: Cottonwood Building Maintenance Help',0,
 null,'(928) 274-3408',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood vendor listing for Building Maintenance Help; direct/license verification can upgrade this evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Cottonwood','facility_maintenance','Building Maintenance Help','Solar One Southwest Energy Group',
 'https://verdevalleydirectory.com/cottonwood/','verdevalleydirectory.com','Current Cottonwood vendor listing for Building Maintenance Help; direct/license verification can upgrade this evidence.','assistant census research: Cottonwood Building Maintenance Help',0,
 null,'(928) 445-3737',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_batch_01","researched_at":"2026-10-26T23:34:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Cottonwood vendor listing for Building Maintenance Help; direct/license verification can upgrade this evidence."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

update market_inventory_progress p
set official_candidates=(
 select count(*) from market_inventory_candidates c
 where c.side=p.side and c.market=p.market and c.category_key=p.category_key
   and c.status='discovered' and c.query_strategy_version=7 and c.official_site=true
), updated_at=now()
where p.market='Cottonwood';


-- Assistant-led verified Cottonwood batch 02 (2026-10-26)
insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Cottonwood','hvac_heat','Heating & Air','Nichols Plumbing, Electrical, & HVAC',
 'https://nicholsaz.com/','nicholsaz.com','Direct site: Cottonwood headquarters at 4140 Western Dr; triple-licensed local company serving commercial and residential HVAC.','assistant verified research: Cottonwood Heating & Air',0,
 null,'(928) 300-1221',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_verified_02","researched_at":"2026-10-26T23:38:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site: Cottonwood headquarters at 4140 Western Dr; triple-licensed local company serving commercial and residential HVAC."}'::jsonb
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
 'vendor','Cottonwood','backflow_plumbing','Backflow & Commercial Plumbing','Nichols Plumbing, Electrical, & HVAC',
 'https://nicholsaz.com/','nicholsaz.com','Direct site explicitly offers commercial and residential plumbing from Cottonwood headquarters.','assistant verified research: Cottonwood Backflow & Commercial Plumbing',0,
 null,'(928) 300-1221',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_verified_02","researched_at":"2026-10-26T23:38:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site explicitly offers commercial and residential plumbing from Cottonwood headquarters."}'::jsonb
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
 'vendor','Cottonwood','electrical_service','Electrician','Nichols Plumbing, Electrical, & HVAC',
 'https://nicholsaz.com/','nicholsaz.com','Direct site states three Arizona ROC licenses covering HVAC, plumbing and electrical; Cottonwood headquarters.','assistant verified research: Cottonwood Electrician',0,
 null,'(928) 300-1221',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_verified_02","researched_at":"2026-10-26T23:38:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site states three Arizona ROC licenses covering HVAC, plumbing and electrical; Cottonwood headquarters."}'::jsonb
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
 'vendor','Cottonwood','hvac_heat','Heating & Air','Absolute Comfort HVAC LLC',
 'https://www.absolute-comforthvac.com/','absolute-comforthvac.com','Direct site identifies Cottonwood HVAC contractor at 1460 E State Route 89A Suite C, licensed/bonded/insured ROC 342111 and serving residential/commercial.','assistant verified research: Cottonwood Heating & Air',0,
 'absolutecomforthvacllc@gmail.com','(928) 606-1030',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_verified_02","researched_at":"2026-10-26T23:38:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site identifies Cottonwood HVAC contractor at 1460 E State Route 89A Suite C, licensed/bonded/insured ROC 342111 and serving residential/commercial."}'::jsonb
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
 'vendor','Cottonwood','hvac_heat','Heating & Air','Connolly Electric & Mechanical',
 'https://www.connollyelectric.com/','connollyelectric.com','Direct site says locally owned HVAC/electrical company serving Cottonwood and Verde Valley since 1997; 2651 S Union Dr.','assistant verified research: Cottonwood Heating & Air',0,
 null,'(928) 862-5977',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_verified_02","researched_at":"2026-10-26T23:38:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site says locally owned HVAC/electrical company serving Cottonwood and Verde Valley since 1997; 2651 S Union Dr."}'::jsonb
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
 'vendor','Cottonwood','electrical_service','Electrician','Connolly Electric & Mechanical',
 'https://www.connollyelectric.com/about/','connollyelectric.com','Direct company about page explicitly states electrical installation, maintenance and repair in Cottonwood/Verde Valley; license numbers published.','assistant verified research: Cottonwood Electrician',0,
 null,'(928) 862-5977',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_verified_02","researched_at":"2026-10-26T23:38:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct company about page explicitly states electrical installation, maintenance and repair in Cottonwood/Verde Valley; license numbers published."}'::jsonb
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
 'vendor','Cottonwood','electrical_service','Electrician','Arizona Wide Electric',
 'https://www.arizonawideelectric.com/','arizonawideelectric.com','Direct site: commercial-only electrical contractor based in Cottonwood, serving all Arizona counties; ROC 159818.','assistant verified research: Cottonwood Electrician',0,
 null,'(928) 646-3059',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_verified_02","researched_at":"2026-10-26T23:38:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site: commercial-only electrical contractor based in Cottonwood, serving all Arizona counties; ROC 159818."}'::jsonb
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
 'buyer','Cottonwood','general_business','other local businesses','Verde Veterinary Hospital',
 'https://www.verdevethospital.com/','verdevethospital.com','Direct site lists full-service animal hospital at 1201 East Cherry St, Cottonwood.','assistant verified research: Cottonwood other local businesses',0,
 null,'(928) 634-7538',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_verified_02","researched_at":"2026-10-26T23:38:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site lists full-service animal hospital at 1201 East Cherry St, Cottonwood."}'::jsonb
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
 'buyer','Cottonwood','dental','dentists dental offices orthodontists','Cottonwood Modern Dentistry and Orthodontics',
 'https://www.cottonwoodmoderndentistry.com/','cottonwoodmoderndentistry.com','Direct dental office site lists 1061 S State Route 260, Cottonwood and current office hours/services.','assistant verified research: Cottonwood dentists dental offices orthodontists',0,
 null,'(928) 239-3254',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_verified_02","researched_at":"2026-10-26T23:38:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct dental office site lists 1061 S State Route 260, Cottonwood and current office hours/services."}'::jsonb
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
 'buyer','Cottonwood','hotels_motels','hotels motels lodging','Lux Verde Hotel',
 'https://luxverdehotel.com/','luxverdehotel.com','Direct hotel site lists 301 W SR 89-A, Cottonwood and current lodging operations.','assistant verified research: Cottonwood hotels motels lodging',0,
 'info@luxverdehotel.com','(928) 634-4207',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_verified_02","researched_at":"2026-10-26T23:38:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct hotel site lists 301 W SR 89-A, Cottonwood and current lodging operations."}'::jsonb
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
 'buyer','Cottonwood','hotels_motels','hotels motels lodging','SpringHill Suites by Marriott Cottonwood',
 'https://www.marriott.com/en-us/hotels/prccw-springhill-suites-cottonwood/overview/','marriott.com','Official Marriott property page lists 565 South 6th Street, Cottonwood, with lodging, meeting space, pool and fitness center.','assistant verified research: Cottonwood hotels motels lodging',0,
 null,'(928) 395-3697',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_verified_02","researched_at":"2026-10-26T23:38:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official Marriott property page lists 565 South 6th Street, Cottonwood, with lodging, meeting space, pool and fitness center."}'::jsonb
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
 'buyer','Cottonwood','schools','schools charter schools private schools','American Heritage Academy - Cottonwood',
 'https://ahacottonwood.org/','ahacottonwood.org','Direct school site lists Cottonwood campus at 2030 E Cherry St.','assistant verified research: Cottonwood schools charter schools private schools',0,
 null,'(928) 634-2144',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_verified_02","researched_at":"2026-10-26T23:38:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct school site lists Cottonwood campus at 2030 E Cherry St."}'::jsonb
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
 'buyer','Cottonwood','schools','schools charter schools private schools','Cottonwood Community School',
 'https://www.cocsd.us/','cocsd.us','Official Cottonwood-Oak Creek School District evidence identifies Cottonwood Community School at 1 N Willard St.','assistant verified research: Cottonwood schools charter schools private schools',0,
 null,'(928) 634-2231',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_verified_02","researched_at":"2026-10-26T23:38:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official Cottonwood-Oak Creek School District evidence identifies Cottonwood Community School at 1 N Willard St."}'::jsonb
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
 'buyer','Cottonwood','schools','schools charter schools private schools','Dr. Daniel Bright School',
 'https://www.cocsd.us/','cocsd.us','Official Cottonwood-Oak Creek School District evidence identifies Dr. Daniel Bright School at 1500 S Monte Tesoro St.','assistant verified research: Cottonwood schools charter schools private schools',0,
 null,'(928) 634-7039',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_verified_02","researched_at":"2026-10-26T23:38:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official Cottonwood-Oak Creek School District evidence identifies Dr. Daniel Bright School at 1500 S Monte Tesoro St."}'::jsonb
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
 'buyer','Cottonwood','public_facilities','government public facilities municipal buildings','Cottonwood Public Library',
 'https://cottonwoodaz.gov/facilities/facility/details/Library-2','cottonwoodaz.gov','Official City of Cottonwood facility page lists public library at 100 S 6th St.','assistant verified research: Cottonwood government public facilities municipal buildings',0,
 null,'(928) 634-7559',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_cottonwood_verified_02","researched_at":"2026-10-26T23:38:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official City of Cottonwood facility page lists public library at 100 S 6th St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,source_tier='direct',verification_status='direct_evidence',last_verified_at=now(),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

update market_inventory_progress p
set official_candidates=(
 select count(*) from market_inventory_candidates c
 where c.side=p.side and c.market=p.market and c.category_key=p.category_key
   and c.status='discovered' and c.query_strategy_version=7 and c.official_site=true
), updated_at=now()
where p.market='Cottonwood';


-- Assistant-led Sedona census batch 01 (2026-10-26)
insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','Arroyo Pinion Sedona Hotel LLC',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 204-1146',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','Dreamcatcher Inn of Sedona',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 282-6680',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','Element by Westin',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 862-3000',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','Enchantment',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 282-2900',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','GreenTree Inn Sedona',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 282-9166',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','Hilton Sedona Resort at Bell Rock',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 284-4040',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','Kokopelli Inn Sedona',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 284-1100',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','L''Auberge de Sedona',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(888) 387-4853',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','Las Posadas of Sedona',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 284-5288',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','Mii amo',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 203-8500',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','Outbound Sedona',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 282-7333',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','Sky Ranch Lodge',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 282-6400',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','Southwest Inn at Sedona',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 282-3344',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','The Wilde Resort',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 203-4111',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','The Arabella Sedona',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 282-7151',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','Wildflower Inn at Bell Rock',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 284-3937',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','Aiden by Best Western Sedona',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 282-1533',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','Amara Resort & Spa',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 282-4828',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','Connie''s Place, a Sedona Inn',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 203-9405',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','Courtyard by Marriott Sedona',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 325-0055',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','El Portal Sedona Hotel',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(800) 313-0017',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','Hampton Inn Sedona',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 282-4700',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','Holiday Inn Express Sedona - Oak Creek',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 284-0711',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','Residence Inn by Marriott Sedona',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 239-7470',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','Sedona Springs Resort',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 204-3400',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','Villas at Poco Diablo',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 204-3300',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','Villas of Sedona',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 204-3400',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','A Sunset Chateau',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 239-7007',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','Ambiente, A Landscape Hotel',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','Bell Rock Inn',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 282-4161',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','BEST WESTERN PLUS Arroyo Roble Hotel & Creekside Villas',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 282-4001',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','Casa Sedona Inn',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 282-2938',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','Club Wyndham Sedona',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 203-1026',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','Don Hoel''s Cabins & Cafe',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 203-7633',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','Hilton Vacation Club Ridge on Sedona',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 284-1200',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','Hilton Vacation Club Sedona Summit',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 204-3100',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','Hilton Vacation Club Los Abrigados Resort & Spa Sedona',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 282-1777',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','Junipine Resort',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 282-3375',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','La Petite Sedona',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 282-7301',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','Lantern Light Inn & Wedding Gardens',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 282-3419',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','Matterhorn Inn',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 282-7176',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','Mountain Modern Sedona',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 282-1414',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','Whispering Creek Bed & Breakfast',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 862-4006',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','hotels_motels','hotels motels lodging','Eagle Dancer Resort',
 'https://visitsedona.com/where-to-stay/hotels-motels-resorts/','visitsedona.com','Current Greater Sedona Chamber/Visit Sedona lodging listing.','assistant census research: Sedona hotels motels lodging',0,
 null,'(928) 821-7766',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber/Visit Sedona lodging listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','restaurants','restaurants','ShadowRock Tap + Table',
 'https://visitsedona.com/dining-drinks/restaurants/','visitsedona.com','Current Visit Sedona restaurant listing.','assistant census research: Sedona restaurants',0,
 null,'(928) 284-4040',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Visit Sedona restaurant listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','restaurants','restaurants','Broome and Orchard',
 'https://visitsedona.com/dining-drinks/restaurants/','visitsedona.com','Current Visit Sedona restaurant listing.','assistant census research: Sedona restaurants',0,
 null,'(928) 282-2713',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Visit Sedona restaurant listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','restaurants','restaurants','Canyon Breeze Restaurant & Bar',
 'https://visitsedona.com/dining-drinks/restaurants/','visitsedona.com','Current Visit Sedona restaurant listing.','assistant census research: Sedona restaurants',0,
 null,'(928) 282-2112',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Visit Sedona restaurant listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','restaurants','restaurants','Creekside American Bistro',
 'https://visitsedona.com/dining-drinks/restaurants/','visitsedona.com','Current Visit Sedona restaurant listing.','assistant census research: Sedona restaurants',0,
 null,'(928) 282-1705',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Visit Sedona restaurant listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','restaurants','restaurants','Don Diego Mexican Cuisine',
 'https://visitsedona.com/dining-drinks/restaurants/','visitsedona.com','Current Visit Sedona restaurant listing.','assistant census research: Sedona restaurants',0,
 null,'(928) 203-5655',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Visit Sedona restaurant listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','restaurants','restaurants','Mesa Grill Sedona',
 'https://visitsedona.com/dining-drinks/restaurants/','visitsedona.com','Current Visit Sedona restaurant listing.','assistant census research: Sedona restaurants',0,
 null,'(928) 282-2400',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Visit Sedona restaurant listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','restaurants','restaurants','Open Range Grill & Tavern',
 'https://visitsedona.com/dining-drinks/restaurants/','visitsedona.com','Current Visit Sedona restaurant listing.','assistant census research: Sedona restaurants',0,
 null,'(928) 282-0002',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Visit Sedona restaurant listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','restaurants','restaurants','Rascal Modern American Diner & Bar',
 'https://visitsedona.com/dining-drinks/restaurants/','visitsedona.com','Current Visit Sedona restaurant listing.','assistant census research: Sedona restaurants',0,
 null,'(928) 852-1852',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Visit Sedona restaurant listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','restaurants','restaurants','Rene at Tlaquepaque',
 'https://visitsedona.com/dining-drinks/restaurants/','visitsedona.com','Current Visit Sedona restaurant listing.','assistant census research: Sedona restaurants',0,
 null,'(928) 282-9225',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Visit Sedona restaurant listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','restaurants','restaurants','Cress on Oak Creek',
 'https://visitsedona.com/dining-drinks/restaurants/','visitsedona.com','Current Visit Sedona restaurant listing.','assistant census research: Sedona restaurants',0,
 null,'(928) 282-1661',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Visit Sedona restaurant listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','restaurants','restaurants','Cucina Rustica',
 'https://visitsedona.com/dining-drinks/restaurants/','visitsedona.com','Current Visit Sedona restaurant listing.','assistant census research: Sedona restaurants',0,
 null,'(928) 284-3010',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Visit Sedona restaurant listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','restaurants','restaurants','El Rincon Restaurant Mexicano',
 'https://visitsedona.com/dining-drinks/restaurants/','visitsedona.com','Current Visit Sedona restaurant listing.','assistant census research: Sedona restaurants',0,
 null,'(928) 282-4648',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Visit Sedona restaurant listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','restaurants','restaurants','Gerardo''s Pizzeria',
 'https://visitsedona.com/dining-drinks/restaurants/','visitsedona.com','Current Visit Sedona restaurant listing.','assistant census research: Sedona restaurants',0,
 null,'(928) 862-4009',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Visit Sedona restaurant listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','restaurants','restaurants','Golden Goose American Grill',
 'https://visitsedona.com/dining-drinks/restaurants/','visitsedona.com','Current Visit Sedona restaurant listing.','assistant census research: Sedona restaurants',0,
 null,'(928) 282-1447',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Visit Sedona restaurant listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','restaurants','restaurants','Hideaway House',
 'https://visitsedona.com/dining-drinks/restaurants/','visitsedona.com','Current Visit Sedona restaurant listing.','assistant census research: Sedona restaurants',0,
 null,'(928) 202-4082',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Visit Sedona restaurant listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','restaurants','restaurants','StageCoach Sedona',
 'https://visitsedona.com/dining-drinks/restaurants/','visitsedona.com','Current Visit Sedona restaurant listing.','assistant census research: Sedona restaurants',0,
 null,'(928) 203-5364',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Visit Sedona restaurant listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','restaurants','restaurants','The Hudson',
 'https://visitsedona.com/dining-drinks/restaurants/','visitsedona.com','Current Visit Sedona restaurant listing.','assistant census research: Sedona restaurants',0,
 null,'(928) 862-4099',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Visit Sedona restaurant listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','restaurants','restaurants','The Sedona Organic Taco Company',
 'https://visitsedona.com/dining-drinks/restaurants/','visitsedona.com','Current Visit Sedona restaurant listing.','assistant census research: Sedona restaurants',0,
 null,'(928) 298-5118',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Visit Sedona restaurant listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','restaurants','restaurants','Vespa Healthy Italian Café',
 'https://visitsedona.com/dining-drinks/restaurants/','visitsedona.com','Current Visit Sedona restaurant listing.','assistant census research: Sedona restaurants',0,
 null,'(928) 862-2228',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Visit Sedona restaurant listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','restaurants','restaurants','Wildflower Bread Company',
 'https://visitsedona.com/dining-drinks/restaurants/','visitsedona.com','Current Visit Sedona restaurant listing.','assistant census research: Sedona restaurants',0,
 null,'(928) 204-2223',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Visit Sedona restaurant listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','restaurants','restaurants','89Agave Cantina',
 'https://visitsedona.com/dining-drinks/restaurants/','visitsedona.com','Current Visit Sedona restaurant listing.','assistant census research: Sedona restaurants',0,
 null,'(928) 282-7200',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Visit Sedona restaurant listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','restaurants','restaurants','Javelina Cantina',
 'https://visitsedona.com/dining-drinks/restaurants/','visitsedona.com','Current Visit Sedona restaurant listing.','assistant census research: Sedona restaurants',0,
 null,'(928) 282-1313',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Visit Sedona restaurant listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Sedona','hvac_heat','Heating & Air','Ace Heating, Cooling & Plumbing, LLC',
 'https://gz.sedonachamber.com/directory/Search/construction-maintenance-668013','gz.sedonachamber.com','Current Greater Sedona Chamber construction/maintenance listing for Heating & Air.','assistant census research: Sedona Heating & Air',0,
 null,'(928) 224-1764',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber construction/maintenance listing for Heating & Air."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Sedona','facility_maintenance','Building Maintenance Help','Canyon Painting, LLC',
 'https://gz.sedonachamber.com/directory/Search/construction-maintenance-668013','gz.sedonachamber.com','Current Greater Sedona Chamber construction/maintenance listing for Building Maintenance Help.','assistant census research: Sedona Building Maintenance Help',0,
 null,'(928) 202-8272',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber construction/maintenance listing for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Sedona','facility_maintenance','Building Maintenance Help','Certapro Painters of Northern AZ',
 'https://gz.sedonachamber.com/directory/Search/construction-maintenance-668013','gz.sedonachamber.com','Current Greater Sedona Chamber construction/maintenance listing for Building Maintenance Help.','assistant census research: Sedona Building Maintenance Help',0,
 null,'(928) 310-4482',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber construction/maintenance listing for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Sedona','pest_control','Pest Control','Conn Pest Control - Verde Valley LLC',
 'https://gz.sedonachamber.com/directory/Search/construction-maintenance-668013','gz.sedonachamber.com','Current Greater Sedona Chamber construction/maintenance listing for Pest Control.','assistant census research: Sedona Pest Control',0,
 null,'(928) 282-3333',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber construction/maintenance listing for Pest Control."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Sedona','landscaping','Landscaping & Yard Cleanup','Desert Scape, LLC',
 'https://gz.sedonachamber.com/directory/Search/construction-maintenance-668013','gz.sedonachamber.com','Current Greater Sedona Chamber construction/maintenance listing for Landscaping & Yard Cleanup.','assistant census research: Sedona Landscaping & Yard Cleanup',0,
 null,'(928) 282-2194',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber construction/maintenance listing for Landscaping & Yard Cleanup."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Sedona','facility_maintenance','Building Maintenance Help','DeTar Construction Inc',
 'https://gz.sedonachamber.com/directory/Search/construction-maintenance-668013','gz.sedonachamber.com','Current Greater Sedona Chamber construction/maintenance listing for Building Maintenance Help.','assistant census research: Sedona Building Maintenance Help',0,
 null,'(928) 639-3725',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber construction/maintenance listing for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Sedona','facility_maintenance','Building Maintenance Help','Hahn Roofing, LLC',
 'https://gz.sedonachamber.com/directory/Search/construction-maintenance-668013','gz.sedonachamber.com','Current Greater Sedona Chamber construction/maintenance listing for Building Maintenance Help.','assistant census research: Sedona Building Maintenance Help',0,
 null,'(928) 282-4733',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber construction/maintenance listing for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Sedona','facility_maintenance','Building Maintenance Help','Hale''s Roofing',
 'https://gz.sedonachamber.com/directory/Search/construction-maintenance-668013','gz.sedonachamber.com','Current Greater Sedona Chamber construction/maintenance listing for Building Maintenance Help.','assistant census research: Sedona Building Maintenance Help',0,
 null,'(928) 282-4794',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber construction/maintenance listing for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Sedona','rural_property','Septic, Grading & Wells','KP Ventures Well Drilling & Pump Co LLC',
 'https://gz.sedonachamber.com/directory/Search/construction-maintenance-668013','gz.sedonachamber.com','Current Greater Sedona Chamber construction/maintenance listing for Septic, Grading & Wells.','assistant census research: Sedona Septic, Grading & Wells',0,
 null,'(928) 639-1709',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber construction/maintenance listing for Septic, Grading & Wells."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Sedona','landscaping','Landscaping & Yard Cleanup','Landscape Magic',
 'https://gz.sedonachamber.com/directory/Search/construction-maintenance-668013','gz.sedonachamber.com','Current Greater Sedona Chamber construction/maintenance listing for Landscaping & Yard Cleanup.','assistant census research: Sedona Landscaping & Yard Cleanup',0,
 null,'(928) 284-9314',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber construction/maintenance listing for Landscaping & Yard Cleanup."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Sedona','facility_maintenance','Building Maintenance Help','On The Edge Gutters, LLC',
 'https://gz.sedonachamber.com/directory/Search/construction-maintenance-668013','gz.sedonachamber.com','Current Greater Sedona Chamber construction/maintenance listing for Building Maintenance Help.','assistant census research: Sedona Building Maintenance Help',0,
 null,'(928) 300-0001',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber construction/maintenance listing for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Sedona','landscaping','Landscaping & Yard Cleanup','R.E. And Sons Landscaping',
 'https://gz.sedonachamber.com/directory/Search/construction-maintenance-668013','gz.sedonachamber.com','Current Greater Sedona Chamber construction/maintenance listing for Landscaping & Yard Cleanup.','assistant census research: Sedona Landscaping & Yard Cleanup',0,
 null,'(928) 433-7527',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber construction/maintenance listing for Landscaping & Yard Cleanup."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Sedona','facility_maintenance','Building Maintenance Help','Seay Construction',
 'https://gz.sedonachamber.com/directory/Search/construction-maintenance-668013','gz.sedonachamber.com','Current Greater Sedona Chamber construction/maintenance listing for Building Maintenance Help.','assistant census research: Sedona Building Maintenance Help',0,
 null,'(928) 282-4549',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber construction/maintenance listing for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Sedona','epoxy_flooring','Epoxy & Concrete Floors','Sedona Flooring, LLC',
 'https://gz.sedonachamber.com/directory/Search/construction-maintenance-668013','gz.sedonachamber.com','Current Greater Sedona Chamber construction/maintenance listing for Epoxy & Concrete Floors.','assistant census research: Sedona Epoxy & Concrete Floors',0,
 null,'(928) 554-1027',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber construction/maintenance listing for Epoxy & Concrete Floors."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Sedona','commercial_cleaning','Commercial Cleaning','Sedona Maid to Order',
 'https://gz.sedonachamber.com/directory/Search/construction-maintenance-668013','gz.sedonachamber.com','Current Greater Sedona Chamber construction/maintenance listing for Commercial Cleaning.','assistant census research: Sedona Commercial Cleaning',0,
 null,'(928) 970-2519',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber construction/maintenance listing for Commercial Cleaning."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Sedona','commercial_cleaning','Commercial Cleaning','ServiceMaster of Prescott',
 'https://gz.sedonachamber.com/directory/Search/construction-maintenance-668013','gz.sedonachamber.com','Current Greater Sedona Chamber construction/maintenance listing for Commercial Cleaning.','assistant census research: Sedona Commercial Cleaning',0,
 null,'(928) 445-9205',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber construction/maintenance listing for Commercial Cleaning."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Sedona','window_cleaning','Window Cleaning','Smart Window Creations Inc',
 'https://gz.sedonachamber.com/directory/Search/construction-maintenance-668013','gz.sedonachamber.com','Current Greater Sedona Chamber construction/maintenance listing for Window Cleaning.','assistant census research: Sedona Window Cleaning',0,
 null,'(928) 204-9041',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber construction/maintenance listing for Window Cleaning."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Sedona','facility_maintenance','Building Maintenance Help','Straightline Custom Painting LLC',
 'https://gz.sedonachamber.com/directory/Search/construction-maintenance-668013','gz.sedonachamber.com','Current Greater Sedona Chamber construction/maintenance listing for Building Maintenance Help.','assistant census research: Sedona Building Maintenance Help',0,
 null,'(928) 282-1269',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber construction/maintenance listing for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Sedona','window_cleaning','Window Cleaning','The Squeegee Bros',
 'https://gz.sedonachamber.com/directory/Search/construction-maintenance-668013','gz.sedonachamber.com','Current Greater Sedona Chamber construction/maintenance listing for Window Cleaning.','assistant census research: Sedona Window Cleaning',0,
 null,'(507) 525-3588',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber construction/maintenance listing for Window Cleaning."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Sedona','pressure_washing','Pressure Washing','TLC Window Cleaning and Pressure Washing',
 'https://gz.sedonachamber.com/directory/Search/construction-maintenance-668013','gz.sedonachamber.com','Current Greater Sedona Chamber construction/maintenance listing for Pressure Washing.','assistant census research: Sedona Pressure Washing',0,
 null,'(928) 300-0799',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Greater Sedona Chamber construction/maintenance listing for Pressure Washing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','theaters_entertainment','theaters cinemas entertainment venues','Sedona Jeep Tours',
 'https://visitsedona.com/business-directory/','visitsedona.com','Current Sedona tourism/entertainment/event organization listing.','assistant census research: Sedona theaters cinemas entertainment venues',0,
 null,'(928) 282-7971',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Sedona tourism/entertainment/event organization listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','theaters_entertainment','theaters cinemas entertainment venues','Sedona Trolley',
 'https://visitsedona.com/business-directory/','visitsedona.com','Current Sedona tourism/entertainment/event organization listing.','assistant census research: Sedona theaters cinemas entertainment venues',0,
 null,'(928) 282-4211',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Sedona tourism/entertainment/event organization listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','theaters_entertainment','theaters cinemas entertainment venues','Sedona Wine Adventures',
 'https://visitsedona.com/business-directory/','visitsedona.com','Current Sedona tourism/entertainment/event organization listing.','assistant census research: Sedona theaters cinemas entertainment venues',0,
 null,'(928) 366-8476',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Sedona tourism/entertainment/event organization listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','theaters_entertainment','theaters cinemas entertainment venues','Pink Jeep Tours',
 'https://visitsedona.com/business-directory/','visitsedona.com','Current Sedona tourism/entertainment/event organization listing.','assistant census research: Sedona theaters cinemas entertainment venues',0,
 null,'(928) 282-5000',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Sedona tourism/entertainment/event organization listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','theaters_entertainment','theaters cinemas entertainment venues','Intown Rides',
 'https://visitsedona.com/business-directory/','visitsedona.com','Current Sedona tourism/entertainment/event organization listing.','assistant census research: Sedona theaters cinemas entertainment venues',0,
 null,'(928) 237-8590',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Sedona tourism/entertainment/event organization listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','theaters_entertainment','theaters cinemas entertainment venues','Novel Escape',
 'https://visitsedona.com/business-directory/','visitsedona.com','Current Sedona tourism/entertainment/event organization listing.','assistant census research: Sedona theaters cinemas entertainment venues',0,
 null,'(928) 414-7323',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Sedona tourism/entertainment/event organization listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','theaters_entertainment','theaters cinemas entertainment venues','Sedona-Oak Creek Airport Authority',
 'https://visitsedona.com/business-directory/','visitsedona.com','Current Sedona tourism/entertainment/event organization listing.','assistant census research: Sedona theaters cinemas entertainment venues',0,
 null,'(928) 282-4487',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Sedona tourism/entertainment/event organization listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','theaters_entertainment','theaters cinemas entertainment venues','Sedona Yoga Festival',
 'https://visitsedona.com/business-directory/','visitsedona.com','Current Sedona tourism/entertainment/event organization listing.','assistant census research: Sedona theaters cinemas entertainment venues',0,
 null,'(928) 288-2484',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Sedona tourism/entertainment/event organization listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','theaters_entertainment','theaters cinemas entertainment venues','Big Laughs Fest',
 'https://visitsedona.com/business-directory/','visitsedona.com','Current Sedona tourism/entertainment/event organization listing.','assistant census research: Sedona theaters cinemas entertainment venues',0,
 null,'(224) 334-0193',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Sedona tourism/entertainment/event organization listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','theaters_entertainment','theaters cinemas entertainment venues','DTB Pro Entertainment',
 'https://visitsedona.com/business-directory/','visitsedona.com','Current Sedona tourism/entertainment/event organization listing.','assistant census research: Sedona theaters cinemas entertainment venues',0,
 null,'(480) 382-7767',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Sedona tourism/entertainment/event organization listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','theaters_entertainment','theaters cinemas entertainment venues','1st Friday in the Galleries',
 'https://visitsedona.com/business-directory/','visitsedona.com','Current Sedona tourism/entertainment/event organization listing.','assistant census research: Sedona theaters cinemas entertainment venues',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Sedona tourism/entertainment/event organization listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','gyms_fitness','gyms fitness centers recreation centers','eforea Spa by Hilton Sedona',
 'https://visitsedona.com/business-directory/','visitsedona.com','Current Sedona wellness/spa/fitness facility listing.','assistant census research: Sedona gyms fitness centers recreation centers',0,
 null,'(928) 284-6975',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Sedona wellness/spa/fitness facility listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','gyms_fitness','gyms fitness centers recreation centers','Gateway Cottage Wellness Center LLC',
 'https://visitsedona.com/business-directory/','visitsedona.com','Current Sedona wellness/spa/fitness facility listing.','assistant census research: Sedona gyms fitness centers recreation centers',0,
 null,'(928) 862-4400',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Sedona wellness/spa/fitness facility listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','gyms_fitness','gyms fitness centers recreation centers','Body & Soul Healing Sedona',
 'https://visitsedona.com/business-directory/','visitsedona.com','Current Sedona wellness/spa/fitness facility listing.','assistant census research: Sedona gyms fitness centers recreation centers',0,
 null,'(928) 288-2395',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Sedona wellness/spa/fitness facility listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','gyms_fitness','gyms fitness centers recreation centers','A Spa for You Sedona Day Spa',
 'https://visitsedona.com/business-directory/','visitsedona.com','Current Sedona wellness/spa/fitness facility listing.','assistant census research: Sedona gyms fitness centers recreation centers',0,
 null,'(928) 282-3895',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Sedona wellness/spa/fitness facility listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','gyms_fitness','gyms fitness centers recreation centers','Sedona''s New Day Spa',
 'https://visitsedona.com/business-directory/','visitsedona.com','Current Sedona wellness/spa/fitness facility listing.','assistant census research: Sedona gyms fitness centers recreation centers',0,
 null,'(928) 282-7502',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Sedona wellness/spa/fitness facility listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','gyms_fitness','gyms fitness centers recreation centers','The Wilde Haven Spa',
 'https://visitsedona.com/business-directory/','visitsedona.com','Current Sedona wellness/spa/fitness facility listing.','assistant census research: Sedona gyms fitness centers recreation centers',0,
 null,'(928) 340-5331',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Sedona wellness/spa/fitness facility listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','gyms_fitness','gyms fitness centers recreation centers','Down Dog Sedona',
 'https://visitsedona.com/business-directory/','visitsedona.com','Current Sedona wellness/spa/fitness facility listing.','assistant census research: Sedona gyms fitness centers recreation centers',0,
 null,'(928) 554-5888',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Sedona wellness/spa/fitness facility listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','gyms_fitness','gyms fitness centers recreation centers','Sedona Wellness Cafe',
 'https://visitsedona.com/business-directory/','visitsedona.com','Current Sedona wellness/spa/fitness facility listing.','assistant census research: Sedona gyms fitness centers recreation centers',0,
 null,'(928) 282-8578',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Sedona wellness/spa/fitness facility listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','retail','retail stores shopping stores','Isn''t She Lovely - Boutique',
 'https://visitsedona.com/business-directory/','visitsedona.com','Current Sedona retail/gallery business listing.','assistant census research: Sedona retail stores shopping stores',0,
 null,'(928) 282-5840',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Sedona retail/gallery business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','retail','retail stores shopping stores','Body Bliss Factory Direct',
 'https://visitsedona.com/business-directory/','visitsedona.com','Current Sedona retail/gallery business listing.','assistant census research: Sedona retail stores shopping stores',0,
 null,'(928) 282-1599',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Sedona retail/gallery business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','retail','retail stores shopping stores','Bohemian Dreamer',
 'https://visitsedona.com/business-directory/','visitsedona.com','Current Sedona retail/gallery business listing.','assistant census research: Sedona retail stores shopping stores',0,
 null,'(928) 275-1333',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Sedona retail/gallery business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','retail','retail stores shopping stores','Golden Bone Pet Products',
 'https://visitsedona.com/business-directory/','visitsedona.com','Current Sedona retail/gallery business listing.','assistant census research: Sedona retail stores shopping stores',0,
 null,'(928) 567-5555',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Sedona retail/gallery business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','retail','retail stores shopping stores','Sedona Cigar Co',
 'https://visitsedona.com/business-directory/','visitsedona.com','Current Sedona retail/gallery business listing.','assistant census research: Sedona retail stores shopping stores',0,
 null,'(928) 399-6430',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Sedona retail/gallery business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','retail','retail stores shopping stores','Sedona Precious Metals',
 'https://visitsedona.com/business-directory/','visitsedona.com','Current Sedona retail/gallery business listing.','assistant census research: Sedona retail stores shopping stores',0,
 null,'(928) 862-2882',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Sedona retail/gallery business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','retail','retail stores shopping stores','Creative Gateways Gallery',
 'https://visitsedona.com/business-directory/','visitsedona.com','Current Sedona retail/gallery business listing.','assistant census research: Sedona retail stores shopping stores',0,
 null,'(928) 282-1212',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Sedona retail/gallery business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','property_management','property management companies apartment communities','The Coleman Group | RE/MAX Sedona',
 'https://visitsedona.com/business-directory/','visitsedona.com','Current Sedona real-estate/property-management business listing.','assistant census research: Sedona property management companies apartment communities',0,
 null,'(307) 851-7827',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Sedona real-estate/property-management business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','property_management','property management companies apartment communities','Sedona Premier Property Management',
 'https://visitsedona.com/business-directory/','visitsedona.com','Current Sedona real-estate/property-management business listing.','assistant census research: Sedona property management companies apartment communities',0,
 null,'(928) 399-7888',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Sedona real-estate/property-management business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','churches','churches worship centers','The Global Center for Christ Consciousness',
 'https://visitsedona.com/business-directory/','visitsedona.com','Current Sedona spiritual/religious organization facility.','assistant census research: Sedona churches worship centers',0,
 null,'(928) 282-7181',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Sedona spiritual/religious organization facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Sedona','general_business','other local businesses','The Greater Sedona Chamber of Commerce Visitor Center',
 'https://visitsedona.com/business-directory/','visitsedona.com','Current Sedona visitor center/business organization facility.','assistant census research: Sedona other local businesses',0,
 null,'(928) 282-7722',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_sedona_batch_01","researched_at":"2026-10-26T23:44:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Sedona visitor center/business organization facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

update market_inventory_progress p
set official_candidates=(
 select count(*) from market_inventory_candidates c
 where c.side=p.side and c.market=p.market and c.category_key=p.category_key
   and c.status='discovered' and c.query_strategy_version=7 and c.official_site=true
), updated_at=now()
where p.market='Sedona';
