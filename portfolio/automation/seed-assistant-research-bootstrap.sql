

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
