

-- Assistant-led Scottsdale licensed vendor/trade census batch 02 (2026-10-26)
insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Mcqueen Plumbing And Hydrojet Sewer Cleaning',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Diversified Plumbing Inc.',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Lawrence Plumbing',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Mazon''s Air Conditioning & Heating Inc.',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Raintree Mechanical Inc.',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Vactrax LLC',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Desert Diamond Plumbing Inc.',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Mountain View Plumbing LLC',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Babcock Plumbing LLC',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Canwest Plumbing LLC',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Motivated Air And Plumbing LLC',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Niksi Plumbing Inc.',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Omega Star Construction',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Omnia Plumbing LLC',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Pasic Plumbing Contractors LLC',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Pinnacle Peak Plumbing LLC',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Pipe Restoration Solutions, Inc.',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Platinum Services Plumbing',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Plumbing Today',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Proforce Plumbing LLC',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Pure Plumbing LLC',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Regus Construction LLC',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Ro Pros LLC',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Rp Nichols Inc.',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Rutan Plumbing LLC',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Sam Construction Group LLC',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Sam Plumbing Construction LLC',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Saturn Enterprises Inc.',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Scottsdale Plumbing Company',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Septon Development Group, LLC',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Serenity Plumbing LLC',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Service Maintenance',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Sol Plumbing, LLC',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Southwest Boilers & Mechanical, LLC',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Superstition Plumbing LLC',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','The French Plumber LLC',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Tranquility Plumbing LLC',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Travek Inc.',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Valley Builders Az LLC',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Water Heaters 24/7',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Z Plumbing LLC',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Zest Plumbing And Drain',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Zzyzx Mechanical LLC',
 'https://homversa.com/az/scottsdale/plumbers','homversa.com','Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Backflow & Commercial Plumbing',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed backflow & commercial plumbing listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Rainbow Electric Company',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','K And C Associates Inc.',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Vinson Electric',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Rizzo Electric',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Hanco Electric Inc.',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Highlight Electrical',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','A Plus Electric LLC',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Acoustic Designs Inc.',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Advanced Energy Systems LLC',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','All Amps Electric LLC',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Am3 Electrical LLC',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Andrew''s Electrical Inc.',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Andy Siivola',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Aneva Solar',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Apollo Electric LLC',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Arizona Backup Power',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Arizona Custom Solar Services LLC',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Artistic Lighting Installs LLC',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Az Custom Designs LLC',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Az Dc Electric LLC',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Az Tech Electric Services LLC',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Badgerland Electric, Inc.',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Becker Electric LLC',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Benchmark Electric LLC',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Bravia Homes LLC',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Bulldog Electrical, Inc.',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Castle Electrical And Lighting LLC',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Cobre Electric Inc.',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Colonial Electric LLC',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Commercial Solar Arizona LLC',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Conserv LLC',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Cyber Technology Group Inc.',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','D & D Electric Inc.',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Desert Moon Lighting LLC',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Dischinger Electric',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Eco Power LLC',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Electric Arttech LLC',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Energia Service Group LLC',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Erekson Electric LLC',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Fairview Electric Co Inc.',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Forward Controls',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Freeborn Electric LLC',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Guaranteed Home Solutions, LLC',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','H E D Contracting',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','H R W Builders LLC',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Halo Electric LLC',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Handy Goblin, LLC',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Hayden Electric Inc.',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Hilty''s Electrical Contracting',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Hnr Construction LLC',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','electrical_service','Electrician','Hrh Electric Inc.',
 'https://homversa.com/az/scottsdale/electricians','homversa.com','Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed electrician listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','hvac_heat','Heating & Air','Tin Works Inc.',
 'https://homversa.com/az/scottsdale/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','hvac_heat','Heating & Air','Aaa Arizona Repair Solutions Inc.',
 'https://homversa.com/az/scottsdale/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','hvac_heat','Heating & Air','Air Engineering Air Conditioning And Heating',
 'https://homversa.com/az/scottsdale/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','hvac_heat','Heating & Air','Mazon''s Air Conditioning & Heating Inc.',
 'https://homversa.com/az/scottsdale/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','hvac_heat','Heating & Air','Airzone Systems',
 'https://homversa.com/az/scottsdale/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','hvac_heat','Heating & Air','Lucas Mechanical Inc.',
 'https://homversa.com/az/scottsdale/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','hvac_heat','Heating & Air','J And J Refrigeration And Heating',
 'https://homversa.com/az/scottsdale/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','hvac_heat','Heating & Air','Matthew Craig Warshaw',
 'https://homversa.com/az/scottsdale/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','hvac_heat','Heating & Air','Mechanical Air Design Inc.',
 'https://homversa.com/az/scottsdale/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','hvac_heat','Heating & Air','Lanphar Mechanical Services Inc.',
 'https://homversa.com/az/scottsdale/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','hvac_heat','Heating & Air','1 800 Cooling And Plumbing',
 'https://homversa.com/az/scottsdale/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','hvac_heat','Heating & Air','A J Stimmler & Son Plumbing Heating & Air Conditioning LLC',
 'https://homversa.com/az/scottsdale/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','hvac_heat','Heating & Air','Ac3e Hospitality Services Inc.',
 'https://homversa.com/az/scottsdale/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','hvac_heat','Heating & Air','Action Air Conditioning, LLC',
 'https://homversa.com/az/scottsdale/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','hvac_heat','Heating & Air','Air Conditioning Galore',
 'https://homversa.com/az/scottsdale/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','hvac_heat','Heating & Air','Air Conditioning Of Arizona LLC',
 'https://homversa.com/az/scottsdale/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','hvac_heat','Heating & Air','Air4you LLC',
 'https://homversa.com/az/scottsdale/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','hvac_heat','Heating & Air','Aircool Solutions LLC',
 'https://homversa.com/az/scottsdale/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','hvac_heat','Heating & Air','All Comfort Corporation',
 'https://homversa.com/az/scottsdale/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','hvac_heat','Heating & Air','Alpha & Omega Restaurant Equipment Repair LLC',
 'https://homversa.com/az/scottsdale/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','hvac_heat','Heating & Air','Anchor Mechanical Inc.',
 'https://homversa.com/az/scottsdale/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','hvac_heat','Heating & Air','Andrew''s Refrigeration Inc.',
 'https://homversa.com/az/scottsdale/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','hvac_heat','Heating & Air','Andy Dalton & Custom Sheet Metal LLC',
 'https://homversa.com/az/scottsdale/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','hvac_heat','Heating & Air','Archer Aire Mechanical LLC',
 'https://homversa.com/az/scottsdale/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','hvac_heat','Heating & Air','Arizona Advanced Mechanical LLC',
 'https://homversa.com/az/scottsdale/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','hvac_heat','Heating & Air','Arizona Air Repair, Inc.',
 'https://homversa.com/az/scottsdale/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','hvac_heat','Heating & Air','Arizona State Hvac',
 'https://homversa.com/az/scottsdale/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','hvac_heat','Heating & Air','Below Zero Air Corp',
 'https://homversa.com/az/scottsdale/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','hvac_heat','Heating & Air','Big Sky Cooling, Heating, And Home Services LLC',
 'https://homversa.com/az/scottsdale/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','hvac_heat','Heating & Air','Bleuwave Hvac LLC',
 'https://homversa.com/az/scottsdale/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','hvac_heat','Heating & Air','Boston Mechanical',
 'https://homversa.com/az/scottsdale/hvac','homversa.com','Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Heating & Air',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed heating & air listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Sunset Valleywide Roofing Inc.',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Agency Roofing',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Travek Roofing',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Alexander Anthony Keith',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Behmer Roofing & Sheet Metal',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Triangle Roofing LLC',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Jacks Roofing And Remodeling',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Circle G Roofing LLC',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Big Red Roofing LLC',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Newgrid Inc.',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Anderson Roofing & Repair LLC',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Apex Roofing Systems LLC',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Avid Roofing Solutions, LLC',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Blackthorne Exteriors LLC',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Bpl Ventures Az LLC',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Bzrk Roofing, LLC',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Canyon Sunrise Development LLC',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Cdl Roofing Inc.',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Ce Technologies LLC',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Desert Shield Roofing Co. LLC',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Esperto Roofing, LLC',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Foam Co Roofing, LLC',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Four Peaks Roofing Solutions LLC',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Hailcoroofing LLC',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Heirloom Roofing LLC',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Innovation Roofing',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Irish Roofing Company LLC',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Ironwood Roofing LLC',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Mastercraft Premier Construction LLC',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Mccurry Roofing Group LLC',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Mcfly Enterprises LLC',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Pony Up Coatings, LLC',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Pyramid Roofing LLC',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Reliable Roofing Near Me LLC',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Roof Boyz',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Rsmii LLC',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Saint & Mazur Roofing',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Scottsdale Roofing LLC',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Shea Foams LLC',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Southwest Builders & Design, LLC',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Starlight Roofing LLC',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Stephens General Contracting Inc.',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Storm Lab Roofing LLC',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Superior Performance Coatings Inc.',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Tip Top Roofing Service LLC',
 'https://homversa.com/az/scottsdale/roofers','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','Landscape Resources Co',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','The Yard Company',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','Holloway Landscape',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','F I L M',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','A L G',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','Estancia Landscape And Maintenance Inc.',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','Moon Valley Nursery Of Arizona Retail LLC',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','Arte Verde',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','Think Green Design Build Landscape',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','Desert Environments Landscape And Design LLC',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','Arizona Luxury Landscape And Design Inc.',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','Arizona Turf Works LLC',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','Arroyo Landscaping LLC',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','Axiom Landscape & Design LLC',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','Az Grass Pros LLC',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','Az Metroscapes Inc.',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','Celebrity Greens',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','Celebrity Greens Arizona',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','Continental Landscape Management LLC',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','Controlled Rain Inc.',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','Creative Pools And Landscape Inc.',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','Crown & Blade Turf, LLC',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','Desert Oasis Landscape Design & Concepts LLC',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','Discount Landscaping Company LLC',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','Eclipse Landscape & Design LLC',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','Eco Turf Products LLC',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','Edge To Edge Landscape Maintenance Inc.',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','Elite Landscape & Hardscape LLC',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','Envirogreen Landscape Design-Build',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','Excellent Landscaping & Tree Service LLC',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','Fore Front Construction Corp',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','G K E Scapes Incorporated',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','Garden Us Landscape Maintenance LLC',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','Geurts Corporation',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','Gibson Landscape Services Inc.',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','Gilligan Sprinkler And Landscaping',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','Green Leaf Landscape LLC',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','Greenlife Landscape Design LLC',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','High End Outdoor Services',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','Highline Outdoors, LLC',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','Hms Landscape And Design',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','Horizon Landscape And Design LLC',
 'https://homversa.com/az/scottsdale/landscaping','homversa.com','Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Landscaping & Yard Cleanup',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed landscaping & yard cleanup listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','Amer-X Security, Inc.',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','Scottsdale Security And Sound Inc.',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','Surrounded By Sound Inc.',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','The Security Blanket',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','Valley Communications Systems Inc.',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','American Telephone',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','Electronic Security Concepts LLC',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','Avalon Media Systems LLC',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','Telnet Systems Inc.',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','A M I Access Management Incorporated',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','A P I Alarm Monitoring Inc.',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','A V Doctors',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','Absolute Quality Communications LLC (fn)',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','Access Control And Telecommunications LLC',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','Acoustic Designs Inc.',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','Alliance Telecom & Networking LLC',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','Alternative Concepts LLC',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','American Sound & Electronics, Inc.',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','Apexwire LLC',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','Arizona Audio Visual',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','Arizona Cinema Solutions LLC',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','Artisan Systems',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','Audio Integrators LLC',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','Audio Video Excellence LLC',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','Avitel.az',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','Az Cctv And Security LLC',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','Az State 48 Security & Media',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','Beyond Audio Phoenix, Inc.',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','Blue Fox Group',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','Building Systems Integration, LLC',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','Cashwood Innovations LLC',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','Core Security Services, Inc.',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','Creative Sound And Integration Inc.',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','Custom Automated Solutions Inc.',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','Cyber Technology Group Inc.',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','Desert Security Inc.',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','Diamond Fiber',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','Digital Solutionz',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','Easy Link Networks',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','Elevated Infrastructure LLC',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','locksmith_access','Locks & Access Control','Epic Technology Solutions LLC',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Locks & Access Control',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed locks & access control listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','fire_safety','Fire Safety & Extinguisher Service','Aidant Fire Protection Co',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed fire safety & extinguisher service listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Fire Safety & Extinguisher Service',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed fire safety & extinguisher service listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','fire_safety','Fire Safety & Extinguisher Service','Compass Fire And Security LLC',
 'https://homversa.com/az/scottsdale/low-voltage-contractors','homversa.com','Current Arizona ROC-backed fire safety & extinguisher service listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Fire Safety & Extinguisher Service',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed fire safety & extinguisher service listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Tarantini Construction Company Inc.',
 'https://homversa.com/az/scottsdale/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Unicorp',
 'https://homversa.com/az/scottsdale/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Morada Development Inc.',
 'https://homversa.com/az/scottsdale/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','The Kueffner Company Inc.',
 'https://homversa.com/az/scottsdale/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Brothers Custom Homes Inc.',
 'https://homversa.com/az/scottsdale/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Nance Construction Inc.',
 'https://homversa.com/az/scottsdale/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Keystone Homes',
 'https://homversa.com/az/scottsdale/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','R D Coffman Enterprises Inc.',
 'https://homversa.com/az/scottsdale/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Drh Phoenix Construction Inc.',
 'https://homversa.com/az/scottsdale/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Catalina Custom Homes Inc.',
 'https://homversa.com/az/scottsdale/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','007 Contractors LLC',
 'https://homversa.com/az/scottsdale/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','12 West Custom Homes LLC',
 'https://homversa.com/az/scottsdale/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','123 Remodeling LLC',
 'https://homversa.com/az/scottsdale/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','20-20 Developers, LLC',
 'https://homversa.com/az/scottsdale/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','3 2 1 Flooring & Construction LLC',
 'https://homversa.com/az/scottsdale/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','5003 LLC',
 'https://homversa.com/az/scottsdale/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','A Finer Touch Construction LLC',
 'https://homversa.com/az/scottsdale/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','A Handyman 4 U',
 'https://homversa.com/az/scottsdale/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','A J F Custom Homes LLC',
 'https://homversa.com/az/scottsdale/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','A R Mays Construction',
 'https://homversa.com/az/scottsdale/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','A S A P Restoration LLC',
 'https://homversa.com/az/scottsdale/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','A2z Contracting LLC',
 'https://homversa.com/az/scottsdale/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','A2z Remodel LLC',
 'https://homversa.com/az/scottsdale/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Accent Wall Designs LLC',
 'https://homversa.com/az/scottsdale/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Accurate Developments LLC',
 'https://homversa.com/az/scottsdale/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Ace Carport Conversions',
 'https://homversa.com/az/scottsdale/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Adamarc Construction LLC',
 'https://homversa.com/az/scottsdale/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Adams Craig Technology LLC',
 'https://homversa.com/az/scottsdale/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Adaptive Design-Build LLC',
 'https://homversa.com/az/scottsdale/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Advanced Development And Building Services LLC',
 'https://homversa.com/az/scottsdale/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Advanced Energy Systems LLC',
 'https://homversa.com/az/scottsdale/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Advanced Sign & Lighting Inc.',
 'https://homversa.com/az/scottsdale/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Aesthetic Interiors & Design Inc.',
 'https://homversa.com/az/scottsdale/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Affinity Kitchens',
 'https://homversa.com/az/scottsdale/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Agave Development LLC',
 'https://homversa.com/az/scottsdale/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','facility_maintenance','Building Maintenance Help','Agave Woodcraft, LLC',
 'https://homversa.com/az/scottsdale/general-contractors','homversa.com','Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion.','assistant licensed vendor census: Scottsdale Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_vendors_02","researched_at":"2026-10-27T01:35:00Z","source_quality":"licensed_or_directory_discovery","verification_status":"discovery","note":"Current Arizona ROC-backed building maintenance help listing registered in Scottsdale; license evidence current as of September 21, 2026, but direct business-site and exact service-scope verification are still required before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

update market_inventory_progress p set official_candidates=(
 select count(*) from market_inventory_candidates c where c.side=p.side and c.market=p.market
 and c.category_key=p.category_key and c.status='discovered' and c.query_strategy_version=7 and c.official_site=true
),updated_at=now() where p.market='Scottsdale';


-- Assistant-led Tucson vendor census batch 02 (2026-10-26)
insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Tucson','facility_maintenance','Building Maintenance Help','Sundt Construction, Inc.',
 'https://business.tucsonchamber.org/list/Search/construction-equipment-contractors-346731?cid=347667','business.tucsonchamber.org','Current Chamber of Southern Arizona contractor listing for Building Maintenance Help.','assistant vendor census: Tucson Building Maintenance Help',0,
 null,'(520) 750-4605',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_02","researched_at":"2026-10-27T00:09:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber of Southern Arizona contractor listing for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Tucson','landscaping','Landscaping & Yard Cleanup','AAA Landscape',
 'https://business.tucsonchamber.org/list/Search/construction-equipment-contractors-346731?cid=347667','business.tucsonchamber.org','Current Chamber of Southern Arizona contractor listing for Landscaping & Yard Cleanup.','assistant vendor census: Tucson Landscaping & Yard Cleanup',0,
 null,'(520) 696-3223',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_02","researched_at":"2026-10-27T00:09:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber of Southern Arizona contractor listing for Landscaping & Yard Cleanup."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Tucson','hvac_heat','Heating & Air','ACS Air Conditioning Services',
 'https://business.tucsonchamber.org/list/Search/construction-equipment-contractors-346731?cid=347667','business.tucsonchamber.org','Current Chamber of Southern Arizona contractor listing for Heating & Air.','assistant vendor census: Tucson Heating & Air',0,
 null,'(520) 696-1800',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_02","researched_at":"2026-10-27T00:09:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber of Southern Arizona contractor listing for Heating & Air."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Tucson','backflow_plumbing','Backflow & Commercial Plumbing','Apperson Plumbing Service',
 'https://business.tucsonchamber.org/list/Search/construction-equipment-contractors-346731?cid=347667','business.tucsonchamber.org','Current Chamber of Southern Arizona contractor listing for Backflow & Commercial Plumbing.','assistant vendor census: Tucson Backflow & Commercial Plumbing',0,
 null,'(520) 623-8441',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_02","researched_at":"2026-10-27T00:09:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber of Southern Arizona contractor listing for Backflow & Commercial Plumbing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Tucson','hvac_heat','Heating & Air','B & J Refrigeration, Inc.',
 'https://business.tucsonchamber.org/list/Search/construction-equipment-contractors-346731?cid=347667','business.tucsonchamber.org','Current Chamber of Southern Arizona contractor listing for Heating & Air.','assistant vendor census: Tucson Heating & Air',0,
 null,'(520) 326-9672',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_02","researched_at":"2026-10-27T00:09:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber of Southern Arizona contractor listing for Heating & Air."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Tucson','restaurant_equipment','Restaurant Equipment Repair','B & J Refrigeration, Inc.',
 'https://business.tucsonchamber.org/list/Search/construction-equipment-contractors-346731?cid=347667','business.tucsonchamber.org','Current Chamber of Southern Arizona contractor listing for Restaurant Equipment Repair.','assistant vendor census: Tucson Restaurant Equipment Repair',0,
 null,'(520) 326-9672',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_02","researched_at":"2026-10-27T00:09:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber of Southern Arizona contractor listing for Restaurant Equipment Repair."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Tucson','facility_maintenance','Building Maintenance Help','Building Excellence, LLC',
 'https://business.tucsonchamber.org/list/Search/construction-equipment-contractors-346731?cid=347667','business.tucsonchamber.org','Current Chamber of Southern Arizona contractor listing for Building Maintenance Help.','assistant vendor census: Tucson Building Maintenance Help',0,
 null,'(520) 219-6993',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_02","researched_at":"2026-10-27T00:09:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber of Southern Arizona contractor listing for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Tucson','facility_maintenance','Building Maintenance Help','DPR Construction',
 'https://business.tucsonchamber.org/list/Search/construction-equipment-contractors-346731?cid=347666','business.tucsonchamber.org','Current Chamber of Southern Arizona construction listing for Building Maintenance Help.','assistant vendor census: Tucson Building Maintenance Help',0,
 null,'(520) 355-8247',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_02","researched_at":"2026-10-27T00:09:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber of Southern Arizona construction listing for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Tucson','hvac_heat','Heating & Air','Done Rite Services - HVAC, Plumbing, & Electrical',
 'https://business.tucsonchamber.org/list/Search/construction-equipment-contractors-346731?cid=347666','business.tucsonchamber.org','Current Chamber of Southern Arizona construction listing for Heating & Air.','assistant vendor census: Tucson Heating & Air',0,
 null,'(520) 369-3966',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_02","researched_at":"2026-10-27T00:09:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber of Southern Arizona construction listing for Heating & Air."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Tucson','backflow_plumbing','Backflow & Commercial Plumbing','Done Rite Services - HVAC, Plumbing, & Electrical',
 'https://business.tucsonchamber.org/list/Search/construction-equipment-contractors-346731?cid=347666','business.tucsonchamber.org','Current Chamber of Southern Arizona construction listing for Backflow & Commercial Plumbing.','assistant vendor census: Tucson Backflow & Commercial Plumbing',0,
 null,'(520) 369-3966',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_02","researched_at":"2026-10-27T00:09:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber of Southern Arizona construction listing for Backflow & Commercial Plumbing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Tucson','electrical_service','Electrician','Done Rite Services - HVAC, Plumbing, & Electrical',
 'https://business.tucsonchamber.org/list/Search/construction-equipment-contractors-346731?cid=347666','business.tucsonchamber.org','Current Chamber of Southern Arizona construction listing for Electrician.','assistant vendor census: Tucson Electrician',0,
 null,'(520) 369-3966',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_02","researched_at":"2026-10-27T00:09:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber of Southern Arizona construction listing for Electrician."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Tucson','facility_maintenance','Building Maintenance Help','Hallmark Roofing',
 'https://business.tucsonchamber.org/list/Search/construction-equipment-contractors-346731?cid=347666','business.tucsonchamber.org','Current Chamber of Southern Arizona construction listing for Building Maintenance Help.','assistant vendor census: Tucson Building Maintenance Help',0,
 null,'(520) 502-2662',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_02","researched_at":"2026-10-27T00:09:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber of Southern Arizona construction listing for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Tucson','facility_maintenance','Building Maintenance Help','Maly & Associates',
 'https://business.tucsonchamber.org/list/Search/construction-equipment-contractors-346731?cid=347666','business.tucsonchamber.org','Current Chamber of Southern Arizona construction listing for Building Maintenance Help.','assistant vendor census: Tucson Building Maintenance Help',0,
 null,'(520) 299-0856',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_02","researched_at":"2026-10-27T00:09:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber of Southern Arizona construction listing for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Tucson','facility_maintenance','Building Maintenance Help','Smyth Industries',
 'https://business.tucsonchamber.org/list/Search/construction-equipment-contractors-346731?cid=347666','business.tucsonchamber.org','Current Chamber of Southern Arizona construction listing for Building Maintenance Help.','assistant vendor census: Tucson Building Maintenance Help',0,
 null,'(520) 750-8719',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_02","researched_at":"2026-10-27T00:09:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber of Southern Arizona construction listing for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Tucson','facility_maintenance','Building Maintenance Help','Chasse Building Team',
 'https://business.tucsonchamber.org/list/Details/chasse-building-team-1957828','business.tucsonchamber.org','Current Chamber listing identifies Tucson construction contractor.','assistant vendor census: Tucson Building Maintenance Help',0,
 null,'(520) 833-4120',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_02","researched_at":"2026-10-27T00:09:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber listing identifies Tucson construction contractor."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Tucson','hvac_heat','Heating & Air','Hamstra Heating & Cooling, Inc.',
 'https://business.tucsonchamber.org/list/Details/hamstra-heating-cooling-inc-1958642?rendermode=print','business.tucsonchamber.org','Current Chamber listing states Tucson residential/commercial HVAC repair and installation since 1983.','assistant vendor census: Tucson Heating & Air',0,
 null,'(520) 629-9833',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_02","researched_at":"2026-10-27T00:09:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber listing states Tucson residential/commercial HVAC repair and installation since 1983."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Tucson','hvac_heat','Heating & Air','Signature Heating, Cooling, Plumbing and Solar',
 'https://business.tucsonchamber.org/list/FindStartsWith?term=S','business.tucsonchamber.org','Current Chamber listing for Tucson heating, cooling, plumbing and solar contractor.','assistant vendor census: Tucson Heating & Air',0,
 null,'(520) 201-6211',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_02","researched_at":"2026-10-27T00:09:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber listing for Tucson heating, cooling, plumbing and solar contractor."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Tucson','backflow_plumbing','Backflow & Commercial Plumbing','Signature Heating, Cooling, Plumbing and Solar',
 'https://business.tucsonchamber.org/list/FindStartsWith?term=S','business.tucsonchamber.org','Current Chamber listing explicitly includes plumbing services.','assistant vendor census: Tucson Backflow & Commercial Plumbing',0,
 null,'(520) 201-6211',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_02","researched_at":"2026-10-27T00:09:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber listing explicitly includes plumbing services."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Tucson','backflow_plumbing','Backflow & Commercial Plumbing','Silverado Rooter & Plumbing',
 'https://business.tucsonchamber.org/list/FindStartsWith?term=S','business.tucsonchamber.org','Current Chamber listing for Tucson rooter and plumbing contractor.','assistant vendor census: Tucson Backflow & Commercial Plumbing',0,
 null,'(520) 273-7088',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_02","researched_at":"2026-10-27T00:09:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber listing for Tucson rooter and plumbing contractor."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Tucson','fire_safety','Fire Safety & Extinguisher Service','Central Alarm, Inc.',
 'https://business.tucsonchamber.org/list/Details/central-alarm-inc-1957765','business.tucsonchamber.org','Current Chamber security/fire-industry listing in Tucson.','assistant vendor census: Tucson Fire Safety & Extinguisher Service',0,
 null,'(520) 882-8142',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_02","researched_at":"2026-10-27T00:09:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber security/fire-industry listing in Tucson."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Tucson','locksmith_access','Locks & Access Control','Central Alarm, Inc.',
 'https://business.tucsonchamber.org/list/Details/central-alarm-inc-1957765','business.tucsonchamber.org','Current Chamber security systems provider; access/security candidate.','assistant vendor census: Tucson Locks & Access Control',0,
 null,'(520) 882-8142',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_02","researched_at":"2026-10-27T00:09:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber security systems provider; access/security candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Tucson','fire_safety','Fire Safety & Extinguisher Service','Winsupply of Tucson Fire Protection and Fabrication',
 'https://business.tucsonchamber.org/list/Search/business-professional-services-346733?cid=346416','business.tucsonchamber.org','Current Chamber fire-protection/fabrication listing.','assistant vendor census: Tucson Fire Safety & Extinguisher Service',0,
 null,'(520) 210-8562',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_02","researched_at":"2026-10-27T00:09:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber fire-protection/fabrication listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Tucson','pest_control','Pest Control','Arizona Pest Control Co.',
 'https://business.tucsonchamber.org/list/Search/business-professional-services-346733?cid=346469','business.tucsonchamber.org','Current Chamber pest-control listing; family-owned Tucson service since 1947.','assistant vendor census: Tucson Pest Control',0,
 null,'(520) 886-7378',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_02","researched_at":"2026-10-27T00:09:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber pest-control listing; family-owned Tucson service since 1947."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Tucson','pest_control','Pest Control','Tucson Maintenance, LLC',
 'https://business.tucsonchamber.org/list/Search/business-professional-services-346733?cid=346469','business.tucsonchamber.org','Current Chamber pest-control listing.','assistant vendor census: Tucson Pest Control',0,
 null,'(520) 429-6935',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_02","researched_at":"2026-10-27T00:09:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber pest-control listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Tucson','rural_property','Septic, Grading & Wells','Busy D Pumping',
 'https://business.tucsonchamber.org/list/findstartswith','business.tucsonchamber.org','Current Chamber listing for Tucson septic tank cleaning.','assistant vendor census: Tucson Septic, Grading & Wells',0,
 null,'(520) 751-7765',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_02","researched_at":"2026-10-27T00:09:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber listing for Tucson septic tank cleaning."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Tucson','facility_maintenance','Building Maintenance Help','West Coast Roofing, LLC',
 'https://business.tucsonchamber.org/list/findstartswith','business.tucsonchamber.org','Current Chamber roofing contractor listing.','assistant vendor census: Tucson Building Maintenance Help',0,
 null,'(520) 849-7242',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_02","researched_at":"2026-10-27T00:09:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber roofing contractor listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Tucson','landscaping','Landscaping & Yard Cleanup','Harlow Gardens',
 'https://business.tucsonchamber.org/list/FindStartsWith?term=H','business.tucsonchamber.org','Current Chamber landscape services/equipment/supplies listing.','assistant vendor census: Tucson Landscaping & Yard Cleanup',0,
 null,'(520) 298-3303',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_02","researched_at":"2026-10-27T00:09:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber landscape services/equipment/supplies listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Tucson','facility_maintenance','Building Maintenance Help','WLB Group, The',
 'https://business.tucsonchamber.org/list/Search/business-professional-services-346733','business.tucsonchamber.org','Current Chamber engineering and landscape architecture office supporting facility/property projects.','assistant vendor census: Tucson Building Maintenance Help',0,
 null,'(520) 881-7480',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_02","researched_at":"2026-10-27T00:09:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber engineering and landscape architecture office supporting facility/property projects."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Tucson','facility_maintenance','Building Maintenance Help','CEMEX - Tucson',
 'https://business.tucsonchamber.org/list/findstartswith','business.tucsonchamber.org','Current Tucson concrete/aggregate supplier and construction-support business.','assistant vendor census: Tucson Building Maintenance Help',0,
 null,'(520) 572-5775',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_02","researched_at":"2026-10-27T00:09:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Tucson concrete/aggregate supplier and construction-support business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

update market_inventory_progress p
set official_candidates=(
 select count(*) from market_inventory_candidates c
 where c.side=p.side and c.market=p.market and c.category_key=p.category_key
   and c.status='discovered' and c.query_strategy_version=7 and c.official_site=true
), updated_at=now()
where p.market='Tucson';
