

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
