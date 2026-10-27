

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


-- Assistant-led verified Scottsdale batch 03 (2026-10-26)
insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Scottsdale','hvac_heat','Heating & Air','Mazon''s Air Conditioning & Heating Inc.',
 'https://www.mazonac.com/','mazonac.com','Direct company site says family-owned Scottsdale HVAC/plumbing contractor operating locally since 1970 and serving Scottsdale.','assistant verified research: Scottsdale Heating & Air',0,
 null,'(480) 969-0029',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_verified_03","researched_at":"2026-10-27T01:43:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct company site says family-owned Scottsdale HVAC/plumbing contractor operating locally since 1970 and serving Scottsdale."}'::jsonb
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
 'vendor','Scottsdale','backflow_plumbing','Backflow & Commercial Plumbing','Mazon''s Air Conditioning & Heating Inc.',
 'https://www.mazonac.com/','mazonac.com','Direct company site explicitly offers plumbing diagnosis, maintenance, repair and installation and lists Scottsdale service.','assistant verified research: Scottsdale Backflow & Commercial Plumbing',0,
 null,'(480) 969-0029',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_verified_03","researched_at":"2026-10-27T01:43:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct company site explicitly offers plumbing diagnosis, maintenance, repair and installation and lists Scottsdale service."}'::jsonb
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
 'vendor','Scottsdale','landscaping','Landscaping & Yard Cleanup','Landscape Resources Co',
 'https://www.landscape-resources.com/','landscape-resources.com','Direct site lists Scottsdale office at 14807 N 73rd St Unit 101 and nearly 40 years of Phoenix-area landscape design/build work.','assistant verified research: Scottsdale Landscaping & Yard Cleanup',0,
 null,'480-991-5571',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_verified_03","researched_at":"2026-10-27T01:43:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site lists Scottsdale office at 14807 N 73rd St Unit 101 and nearly 40 years of Phoenix-area landscape design/build work."}'::jsonb
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
 'buyer','Scottsdale','warehouses_industrial','warehouses industrial businesses distribution centers','Axon Enterprise - Scottsdale Headquarters',
 'https://www.axon.com/careers','axon.com','Official Axon site lists global headquarters at 17800 N 85th St, Scottsdale.','assistant verified research: Scottsdale warehouses industrial businesses distribution centers',0,
 null,null,true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_verified_03","researched_at":"2026-10-27T01:43:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official Axon site lists global headquarters at 17800 N 85th St, Scottsdale."}'::jsonb
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
 'buyer','Scottsdale','medical_centers','hospitals medical centers clinics','Mayo Clinic - Scottsdale Campus',
 'https://www.mayoclinic.org/patient-visitor-guide/arizona/campus-buildings-maps/mayo-clinic-building-scottsdale','mayoclinic.org','Official Mayo Clinic page lists Scottsdale campus at 13400 E Shea Blvd with outpatient surgery, diagnostics, laboratory, imaging, pharmacy and related facilities.','assistant verified research: Scottsdale hospitals medical centers clinics',0,
 null,'480-301-8000',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_verified_03","researched_at":"2026-10-27T01:43:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official Mayo Clinic page lists Scottsdale campus at 13400 E Shea Blvd with outpatient surgery, diagnostics, laboratory, imaging, pharmacy and related facilities."}'::jsonb
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
 'buyer','Scottsdale','medical_centers','hospitals medical centers clinics','HonorHealth Scottsdale Shea Medical Center',
 'https://www.honorhealth.com/locations/hospitals/scottsdale-shea-medical-center','honorhealth.com','Official hospital site lists 9003 E Shea Blvd; 24/7 hospital with 434 beds and major inpatient/outpatient services.','assistant verified research: Scottsdale hospitals medical centers clinics',0,
 null,'480-323-3000',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_verified_03","researched_at":"2026-10-27T01:43:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official hospital site lists 9003 E Shea Blvd; 24/7 hospital with 434 beds and major inpatient/outpatient services."}'::jsonb
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
 'buyer','Scottsdale','medical_centers','hospitals medical centers clinics','HonorHealth Scottsdale Osborn Medical Center',
 'https://hsapps.azdhs.gov/ls/sod/Facility.aspx?FacId=MED0235','hsapps.azdhs.gov','Official Arizona licensing record shows active 325-bed short-term hospital at 7400 E Osborn Rd, Scottsdale through April 30, 2027.','assistant verified research: Scottsdale hospitals medical centers clinics',0,
 null,'(480) 882-4004',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_verified_03","researched_at":"2026-10-27T01:43:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official Arizona licensing record shows active 325-bed short-term hospital at 7400 E Osborn Rd, Scottsdale through April 30, 2027."}'::jsonb
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
 'buyer','Scottsdale','medical_centers','hospitals medical centers clinics','HonorHealth Scottsdale Thompson Peak Medical Center',
 'https://hsapps.azdhs.gov/ls/sod/Facility.aspx?FacId=MED3513','hsapps.azdhs.gov','Official Arizona licensing record shows active 120-bed short-term hospital at 7400 E Thompson Peak Pkwy, Scottsdale through September 30, 2027.','assistant verified research: Scottsdale hospitals medical centers clinics',0,
 null,'(480) 324-7001',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_verified_03","researched_at":"2026-10-27T01:43:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official Arizona licensing record shows active 120-bed short-term hospital at 7400 E Thompson Peak Pkwy, Scottsdale through September 30, 2027."}'::jsonb
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
 'buyer','Scottsdale','hotels_motels','hotels motels lodging','Fairmont Scottsdale Princess',
 'https://www.scottsdaleprincess.com/','scottsdaleprincess.com','Direct resort site lists 7575 E Princess Dr, Scottsdale with lodging, six pools, spa, multiple dining venues, golf and event operations.','assistant verified research: Scottsdale hotels motels lodging',0,
 'scottsdale@fairmont.com','480-585-4848',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_verified_03","researched_at":"2026-10-27T01:43:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct resort site lists 7575 E Princess Dr, Scottsdale with lodging, six pools, spa, multiple dining venues, golf and event operations."}'::jsonb
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
 'buyer','Scottsdale','hotels_motels','hotels motels lodging','Hotel Valley Ho',
 'https://hotelvalleyho.com/contact/','hotelvalleyho.com','Direct hotel site lists 6850 E Main St, Scottsdale with lodging, spa, pools, restaurant and meeting/event facilities.','assistant verified research: Scottsdale hotels motels lodging',0,
 'hello@hotelvalleyho.com','(480) 376-2600',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_verified_03","researched_at":"2026-10-27T01:43:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct hotel site lists 6850 E Main St, Scottsdale with lodging, spa, pools, restaurant and meeting/event facilities."}'::jsonb
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
 'buyer','Scottsdale','schools','schools charter schools private schools','Scottsdale Unified School District #48',
 'https://www.susd.org/','susd.org','Official district site states SUSD operates 27 physical campuses, serves about 20,000 students and employs about 3,000 people.','assistant verified research: Scottsdale schools charter schools private schools',0,
 null,null,true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_verified_03","researched_at":"2026-10-27T01:43:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official district site states SUSD operates 27 physical campuses, serves about 20,000 students and employs about 3,000 people."}'::jsonb
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
 'buyer','Scottsdale','public_facilities','government public facilities municipal buildings','Scottsdale Airport',
 'https://www.scottsdaleaz.gov/scottsdale-airport','scottsdaleaz.gov','Official city site lists Scottsdale Airport at 15000 N Airport Dr; airport operations are 24/7 and the city maintains airport facilities.','assistant verified research: Scottsdale government public facilities municipal buildings',0,
 null,'480-312-2321',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_scottsdale_verified_03","researched_at":"2026-10-27T01:43:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official city site lists Scottsdale Airport at 15000 N Airport Dr; airport operations are 24/7 and the city maintains airport facilities."}'::jsonb
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
),updated_at=now() where p.market='Scottsdale';


-- Assistant-led verified Tucson batch 03 (2026-10-26)
insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Tucson','hvac_heat','Heating & Air','Done Rite Services - HVAC, Plumbing, & Electrical',
 'https://doneritesvcs.com/services/','doneritesvcs.com','Direct Tucson company site explicitly offers commercial and residential HVAC; Tucson address, 24/7 service and Arizona ROC license numbers published.','assistant verified research: Tucson Heating & Air',0,
 null,'(520) 369-3966',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_verified_03","researched_at":"2026-10-27T00:13:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct Tucson company site explicitly offers commercial and residential HVAC; Tucson address, 24/7 service and Arizona ROC license numbers published."}'::jsonb
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
 'vendor','Tucson','backflow_plumbing','Backflow & Commercial Plumbing','Done Rite Services - HVAC, Plumbing, & Electrical',
 'https://doneritesvcs.com/services/','doneritesvcs.com','Direct Tucson company site explicitly offers commercial plumbing, drain, sewer, water-heater and gas services; licensed/bonded/insured.','assistant verified research: Tucson Backflow & Commercial Plumbing',0,
 null,'(520) 369-3966',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_verified_03","researched_at":"2026-10-27T00:13:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct Tucson company site explicitly offers commercial plumbing, drain, sewer, water-heater and gas services; licensed/bonded/insured."}'::jsonb
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
 'vendor','Tucson','electrical_service','Electrician','Done Rite Services - HVAC, Plumbing, & Electrical',
 'https://doneritesvcs.com/services/','doneritesvcs.com','Direct Tucson company site explicitly offers commercial electrical, panel, rewiring and emergency electrician services; Arizona ROC licenses published.','assistant verified research: Tucson Electrician',0,
 null,'(520) 369-3966',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_verified_03","researched_at":"2026-10-27T00:13:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct Tucson company site explicitly offers commercial electrical, panel, rewiring and emergency electrician services; Arizona ROC licenses published."}'::jsonb
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
 'vendor','Tucson','hvac_heat','Heating & Air','Hamstra Heating & Cooling, Inc.',
 'https://www.hamstrahvac.com/','hamstrahvac.com','Direct site identifies Tucson headquarters, residential and commercial HVAC service since 1983, and residential/commercial ROC licenses.','assistant verified research: Tucson Heating & Air',0,
 null,'(520) 629-9833',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_verified_03","researched_at":"2026-10-27T00:13:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site identifies Tucson headquarters, residential and commercial HVAC service since 1983, and residential/commercial ROC licenses."}'::jsonb
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
 'vendor','Tucson','backflow_plumbing','Backflow & Commercial Plumbing','Apperson Plumbing Service',
 'https://www.appersonplumbingservice.com/','appersonplumbingservice.com','Direct site states Tucson plumbing service since 1949, including commercial/home plumbing, emergency service and backflow testing.','assistant verified research: Tucson Backflow & Commercial Plumbing',0,
 null,'(520) 623-8441',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_verified_03","researched_at":"2026-10-27T00:13:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site states Tucson plumbing service since 1949, including commercial/home plumbing, emergency service and backflow testing."}'::jsonb
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
 'vendor','Tucson','fire_safety','Fire Safety & Extinguisher Service','Central Alarm, Inc.',
 'https://central-alarm.com/','central-alarm.com','Direct Tucson security/alarm company site; local Tucson branch, monitoring, guard/patrol and business protection services.','assistant verified research: Tucson Fire Safety & Extinguisher Service',0,
 'customercare@central-alarm.com','(520) 882-8142',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_verified_03","researched_at":"2026-10-27T00:13:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct Tucson security/alarm company site; local Tucson branch, monitoring, guard/patrol and business protection services."}'::jsonb
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
 'vendor','Tucson','locksmith_access','Locks & Access Control','Central Alarm, Inc.',
 'https://central-alarm.com/','central-alarm.com','Direct Tucson security company site with system design, installation and monitoring; access/security facility-service candidate.','assistant verified research: Tucson Locks & Access Control',0,
 'customercare@central-alarm.com','(520) 882-8142',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_verified_03","researched_at":"2026-10-27T00:13:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct Tucson security company site with system design, installation and monitoring; access/security facility-service candidate."}'::jsonb
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
 'buyer','Tucson','medical_centers','hospitals medical centers clinics','Tucson Medical Center',
 'https://tmctucson.tmcaz.com/en','tmcaz.com','Direct TMC site lists 5301 E Grant Rd, Tucson and identifies the nonprofit hospital and health system.','assistant verified research: Tucson hospitals medical centers clinics',0,
 null,'(520) 327-5461',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_verified_03","researched_at":"2026-10-27T00:13:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct TMC site lists 5301 E Grant Rd, Tucson and identifies the nonprofit hospital and health system."}'::jsonb
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
 'buyer','Tucson','medical_centers','hospitals medical centers clinics','Banner - University Medical Center Tucson Campus',
 'https://hsapps.azdhs.gov/ls/sod/Facility.aspx?FacId=MED0257','hsapps.azdhs.gov','Official Arizona Department of Health Services facility report shows active Tucson hospital license through December 23, 2026 and 649 beds.','assistant verified research: Tucson hospitals medical centers clinics',0,
 null,'(520) 874-4189',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_verified_03","researched_at":"2026-10-27T00:13:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official Arizona Department of Health Services facility report shows active Tucson hospital license through December 23, 2026 and 649 beds."}'::jsonb
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
 'buyer','Tucson','public_facilities','government public facilities municipal buildings','City of Tucson',
 'https://www.tucsonaz.gov/','tucsonaz.gov','Official City of Tucson municipal website; public-facilities buyer.','assistant verified research: Tucson government public facilities municipal buildings',0,
 null,'(520) 791-4201',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_verified_03","researched_at":"2026-10-27T00:13:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official City of Tucson municipal website; public-facilities buyer."}'::jsonb
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
where p.market='Tucson';


-- Assistant-led Tucson specialized vendor batch 04 (2026-10-26)
insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Tucson','commercial_cleaning','Commercial Cleaning','ABM',
 'https://business.tucsonchamber.org/list/Search/business-professional-services-346733','business.tucsonchamber.org','Current Chamber listing includes janitorial/cleaning and HVAC testing/balancing.','assistant vendor census: Tucson Commercial Cleaning',0,
 null,'(520) 449-9017',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_04","researched_at":"2026-10-27T00:17:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber listing includes janitorial/cleaning and HVAC testing/balancing."}'::jsonb
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
 'vendor','Tucson','commercial_cleaning','Commercial Cleaning','Desert Cleaning Janitorial Services',
 'https://business.tucsonchamber.org/list/Search/business-professional-services-346733','business.tucsonchamber.org','Current Chamber listing: family-owned commercial janitorial/office cleaning and day porter service.','assistant vendor census: Tucson Commercial Cleaning',0,
 null,'(520) 722-6776',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_04","researched_at":"2026-10-27T00:17:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber listing: family-owned commercial janitorial/office cleaning and day porter service."}'::jsonb
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
 'vendor','Tucson','commercial_cleaning','Commercial Cleaning','JAN-PRO Cleaning Systems of Tucson',
 'https://business.tucsonchamber.org/list/Search/business-professional-services-346733','business.tucsonchamber.org','Current Chamber janitorial/cleaning-services listing.','assistant vendor census: Tucson Commercial Cleaning',0,
 null,'(520) 885-9600',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_04","researched_at":"2026-10-27T00:17:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber janitorial/cleaning-services listing."}'::jsonb
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
 'vendor','Tucson','landscaping','Landscaping & Yard Cleanup','Arcadia Landscape',
 'https://business.tucsonchamber.org/list/Search/business-professional-services-346733','business.tucsonchamber.org','Current Chamber landscape architecture/services listing.','assistant vendor census: Tucson Landscaping & Yard Cleanup',0,
 null,'(520) 791-0889',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_04","researched_at":"2026-10-27T00:17:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber landscape architecture/services listing."}'::jsonb
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
 'vendor','Tucson','landscaping','Landscaping & Yard Cleanup','Landtamers Landscaping',
 'https://business.tucsonchamber.org/list/Details/landtamers-landscaping-3595531','business.tucsonchamber.org','Current Chamber listing at 1011 S Prudence Rd; landscape services and landscape architecture.','assistant vendor census: Tucson Landscaping & Yard Cleanup',0,
 null,'(520) 733-0193',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_04","researched_at":"2026-10-27T00:17:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber listing at 1011 S Prudence Rd; landscape services and landscape architecture."}'::jsonb
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
 'https://business.tucsonchamber.org/list/Details/harlow-gardens-1958420','business.tucsonchamber.org','Current Chamber listing explicitly includes landscape design, maintenance and installation.','assistant vendor census: Tucson Landscaping & Yard Cleanup',0,
 null,'(520) 298-3303',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_04","researched_at":"2026-10-27T00:17:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber listing explicitly includes landscape design, maintenance and installation."}'::jsonb
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
 'vendor','Tucson','landscaping','Landscaping & Yard Cleanup','Santa Rita Landscaping, Inc.',
 'https://business.tucsonchamber.org/list/Details/santa-rita-landscaping-inc-1958787','business.tucsonchamber.org','Current Chamber landscape-services listing at 755 W Grant Rd.','assistant vendor census: Tucson Landscaping & Yard Cleanup',0,
 null,'(520) 623-0421',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_04","researched_at":"2026-10-27T00:17:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber landscape-services listing at 755 W Grant Rd."}'::jsonb
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
 'vendor','Tucson','facility_maintenance','Building Maintenance Help','The Solar Store',
 'https://business.tucsonchamber.org/list/Details/solar-store-the-1958031','business.tucsonchamber.org','Current Chamber solar contractor listing; licensed for commercial/residential electrical and plumbing work.','assistant vendor census: Tucson Building Maintenance Help',0,
 null,'(520) 322-5180',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_04","researched_at":"2026-10-27T00:17:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber solar contractor listing; licensed for commercial/residential electrical and plumbing work."}'::jsonb
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
 'vendor','Tucson','facility_maintenance','Building Maintenance Help','SOLON Corporation',
 'https://business.tucsonchamber.org/list/Details/solon-corporation-1957923','business.tucsonchamber.org','Current Chamber listing: commercial and utility-scale solar design, engineering, construction and O&M.','assistant vendor census: Tucson Building Maintenance Help',0,
 null,'(520) 807-1300',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_04","researched_at":"2026-10-27T00:17:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber listing: commercial and utility-scale solar design, engineering, construction and O&M."}'::jsonb
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
 'vendor','Tucson','facility_maintenance','Building Maintenance Help','Desert Solar Energy',
 'https://business.tucsonchamber.org/list/Details/desert-solar-energy-4328097','business.tucsonchamber.org','Current Chamber solar energy contractor/provider listing.','assistant vendor census: Tucson Building Maintenance Help',0,
 null,'(520) 349-3093',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_04","researched_at":"2026-10-27T00:17:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber solar energy contractor/provider listing."}'::jsonb
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
 'vendor','Tucson','facility_maintenance','Building Maintenance Help','Sunset Roofing',
 'https://business.tucsonchamber.org/list/Search/construction-equipment-contractors-346731?cid=347667','business.tucsonchamber.org','Current Chamber contractor listing.','assistant vendor census: Tucson Building Maintenance Help',0,
 null,'(520) 400-1741',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_04","researched_at":"2026-10-27T00:17:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber contractor listing."}'::jsonb
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
 'vendor','Tucson','facility_maintenance','Building Maintenance Help','TAB Tile and Stone',
 'https://business.tucsonchamber.org/list/Search/construction-equipment-contractors-346731?cid=347667','business.tucsonchamber.org','Current Chamber contractor listing.','assistant vendor census: Tucson Building Maintenance Help',0,
 null,'(520) 219-8972',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_04","researched_at":"2026-10-27T00:17:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber contractor listing."}'::jsonb
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
 'vendor','Tucson','facility_maintenance','Building Maintenance Help','Tofel Dent Construction',
 'https://business.tucsonchamber.org/list/Search/construction-equipment-contractors-346731?cid=347667','business.tucsonchamber.org','Current Chamber contractor listing.','assistant vendor census: Tucson Building Maintenance Help',0,
 null,'(520) 571-0101',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_04","researched_at":"2026-10-27T00:17:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber contractor listing."}'::jsonb
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
 'vendor','Tucson','facility_maintenance','Building Maintenance Help','Tricon Contracting, Inc.',
 'https://business.tucsonchamber.org/list/Search/construction-equipment-contractors-346731?cid=347667','business.tucsonchamber.org','Current Chamber contractor listing.','assistant vendor census: Tucson Building Maintenance Help',0,
 null,'(520) 574-3100',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_04","researched_at":"2026-10-27T00:17:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber contractor listing."}'::jsonb
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
 'vendor','Tucson','facility_maintenance','Building Maintenance Help','Tuhavi Corporation',
 'https://business.tucsonchamber.org/list/Search/construction-equipment-contractors-346731?cid=347667','business.tucsonchamber.org','Current Chamber contractor listing.','assistant vendor census: Tucson Building Maintenance Help',0,
 null,'(520) 748-2588',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_04","researched_at":"2026-10-27T00:17:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber contractor listing."}'::jsonb
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
 'vendor','Tucson','facility_maintenance','Building Maintenance Help','W.E. O''Neil Construction Company, Inc.',
 'https://business.tucsonchamber.org/list/Search/construction-equipment-contractors-346731?cid=347667','business.tucsonchamber.org','Current Chamber contractor listing.','assistant vendor census: Tucson Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_04","researched_at":"2026-10-27T00:17:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber contractor listing."}'::jsonb
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
 'vendor','Tucson','electrical_service','Electrician','Parker & Sons',
 'https://business.tucsonchamber.org/list/Search/industrial-supplies-services-346726','business.tucsonchamber.org','Current Chamber listing includes electrical services, HVAC testing/balancing and water treatment.','assistant vendor census: Tucson Electrician',0,
 null,'(520) 363-2400',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_04","researched_at":"2026-10-27T00:17:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber listing includes electrical services, HVAC testing/balancing and water treatment."}'::jsonb
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
 'vendor','Tucson','hvac_heat','Heating & Air','Parker & Sons',
 'https://business.tucsonchamber.org/list/Search/industrial-supplies-services-346726','business.tucsonchamber.org','Current Chamber listing includes HVAC testing/balancing and electrical services.','assistant vendor census: Tucson Heating & Air',0,
 null,'(520) 363-2400',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_04","researched_at":"2026-10-27T00:17:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber listing includes HVAC testing/balancing and electrical services."}'::jsonb
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
 'vendor','Tucson','coffee_water','Coffee & Water Service','Pure Way of Tucson',
 'https://business.tucsonchamber.org/list/Search/industrial-supplies-services-346726','business.tucsonchamber.org','Current Chamber whole-home and business water-filtration listing.','assistant vendor census: Tucson Coffee & Water Service',0,
 null,'(520) 783-3232',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_04","researched_at":"2026-10-27T00:17:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber whole-home and business water-filtration listing."}'::jsonb
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
 'vendor','Tucson','coffee_water','Coffee & Water Service','Southern Arizona Ice & Water',
 'https://business.tucsonchamber.org/list/Search/industrial-supplies-services-346726','business.tucsonchamber.org','Current Chamber local ice and water-treatment systems listing.','assistant vendor census: Tucson Coffee & Water Service',0,
 null,'(520) 975-7888',false,'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_vendors_04","researched_at":"2026-10-27T00:17:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber local ice and water-treatment systems listing."}'::jsonb
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


-- Assistant-led full Tucson electrical license census (327 records, verified 2026-09-21)
insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence,
 first_seen_at,last_seen_at
) values
('vendor','Tucson','electrical_service','Electrician','Sabino Electric Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #055599 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"055599","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Stark Electric Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #063032 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"063032","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','F And F Electric Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #066612 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"066612","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Gamble Electric Incorporated','https://homversa.com/az/tucson/electricians','homversa.com','ROC #068307 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"068307","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Tanque Verde Electric Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #074760 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"074760","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Cascade Electric Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #083603 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"083603","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Chamberlain Electric Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #083625 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"083625","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Commercial Electric Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #087538 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"087538","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Swiniuch Electric','https://homversa.com/az/tucson/electricians','homversa.com','ROC #089127 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"089127","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','S And D Electric Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #091315 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"091315","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','1 By 1 Roof/Solar/Paint','https://homversa.com/az/tucson/electricians','homversa.com','ROC #338807 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"338807","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','2 Zona Electrical Services Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #303467 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"303467","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','520 Residential & Commercial Services LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #367349 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"367349","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','626 Power LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #340860 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"340860","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','8 Phase Energy LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #350305 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"350305","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','A American Electrical Services Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #135756 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"135756","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','A Better Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #358270 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"358270","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','A M Loftis Enterprises LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #326902 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"326902","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','A&E Electrical Solutions LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #353902 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"353902","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Aamped Up Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #350473 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"350473","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Absolute Power LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #214545 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"214545","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Achilles Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #302639 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"302639","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Adam Blankenbaker Electric','https://homversa.com/az/tucson/electricians','homversa.com','ROC #309363 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"309363","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Adams Electric Services LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #336832 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"336832","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Advanced Electric & Solar LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #290398 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"290398","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Advanced Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #316809 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"316809","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Aerostar Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #314168 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"314168","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Affordable Electric Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #195429 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"195429","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Aks Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #365869 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"365869","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','All About Electric Service And Maintenance LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #313454 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"313454","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','All Phase Electrical LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #341563 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"341563","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','All Set Hvac And Electrical LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #367648 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"367648","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Amigo Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #277710 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"277710","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Aragon Electric, LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #348343 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"348343","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Arizona Building Contractors LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #322631 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"322631","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Arizona Communication Experts Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #305479 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"305479","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Arizona Complete Remodel LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #334153 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"334153","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Arizona Electrical Solutions LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #276948 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"276948","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Arizona Professional Electricians','https://homversa.com/az/tucson/electricians','homversa.com','ROC #355702 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"355702","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Arizona Residential & Commercial Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #360761 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"360761","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Arizona Unique Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #350236 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"350236","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Arnold Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #341018 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"341018","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Astro Electric Solutions LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #354149 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"354149","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Atlantic Pacific Standard LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #354504 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"354504","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Atomic Electrical','https://homversa.com/az/tucson/electricians','homversa.com','ROC #362088 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"362088","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Authentic Electric','https://homversa.com/az/tucson/electricians','homversa.com','ROC #345475 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"345475","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Av And Automation Specialists, LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #349867 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"349867","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Award Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #339373 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"339373","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Awareness Ranch Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #342491 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"342491","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Axiom Electric & Service','https://homversa.com/az/tucson/electricians','homversa.com','ROC #293039 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"293039","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Aztec Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #331940 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"331940","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Azz Constructions LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #343432 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"343432","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','B 3 Electric Corporation','https://homversa.com/az/tucson/electricians','homversa.com','ROC #208843 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"208843","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','B K Sterling LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #239444 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"239444","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Barcelo Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #240877 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"240877","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Barrio Construction, LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #353071 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"353071","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Barron Electric','https://homversa.com/az/tucson/electricians','homversa.com','ROC #261632 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"261632","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Bates And Hook Electric Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #300374 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"300374","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Bear Creek Electrical Corp','https://homversa.com/az/tucson/electricians','homversa.com','ROC #212736 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"212736","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Berajah Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #358539 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"358539","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Bestway Electric Motor Service Co Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #296811 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"296811","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Big Bear Electric, LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #287256 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"287256","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Bill Richards Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #285593 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"285593","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Blue Light Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #184078 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"184078","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Blueprint Home Services','https://homversa.com/az/tucson/electricians','homversa.com','ROC #349733 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"349733","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Bonita Steel Builders Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #349190 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"349190","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Bp Remodeling','https://homversa.com/az/tucson/electricians','homversa.com','ROC #321721 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"321721","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Branded Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #331077 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"331077","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Braveheart Electric','https://homversa.com/az/tucson/electricians','homversa.com','ROC #335156 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"335156","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Bravo''s Solar & Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #349335 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"349335","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Brilliant Power Solutions, LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #315652 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"315652","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Buddy''s Electrical Services LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #366027 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"366027","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Builder Developer LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #204320 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"204320","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Bulldogge Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #351449 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"351449","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Cactus Wren Electric Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #141236 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"141236","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Canyon Electric Solutions LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #364398 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"364398","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Capstone Cooling & Heating LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #356581 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"356581","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Carrera Tucson, LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #341162 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"341162","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Carroll Building Company LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #350020 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"350020","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Cazares Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #323393 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"323393","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Cdb Electrical LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #335598 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"335598","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Center Tap Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #339979 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"339979","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Cgr Development LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #333622 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"333622","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Cienega Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #329133 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"329133","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Citywide Electrical Services LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #364585 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"364585","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Civil Concepts, Pc','https://homversa.com/az/tucson/electricians','homversa.com','ROC #358581 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"358581","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Coe Farms','https://homversa.com/az/tucson/electricians','homversa.com','ROC #340503 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"340503","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Connect Electric','https://homversa.com/az/tucson/electricians','homversa.com','ROC #129112 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"129112","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Contractco Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #216233 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"216233","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Copper Trail Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #345025 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"345025","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Copper Valley LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #352279 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"352279","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Copperhead Electric & Plumbing LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #349696 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"349696","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Cornerstone Electrical Contractors LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #208930 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"208930","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Cowboy Enterprises Electrical Contractor, LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #333782 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"333782","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Cozzetti Construction','https://homversa.com/az/tucson/electricians','homversa.com','ROC #190420 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"190420","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Craigs Electrical Solutions LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #336688 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"336688","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Crest Contracting LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #332556 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"332556","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Cs Electrical Solutions LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #347896 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"347896","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Cummings Plumbing, Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #357808 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"357808","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Current Voltage Solutions LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #356505 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"356505","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Custom Solar And Leisure LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #239362 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"239362","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','D Squared Builders And Designers LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #359718 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"359718","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Day Star Electric','https://homversa.com/az/tucson/electricians','homversa.com','ROC #125133 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"125133","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Dbc','https://homversa.com/az/tucson/electricians','homversa.com','ROC #333419 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"333419","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','De Witt Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #190474 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"190474","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Desert Hills Electric Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #099793 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"099793","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Desert Sun Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #169863 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"169863","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','District Power LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #328164 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"328164","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Done Rite Electrical','https://homversa.com/az/tucson/electricians','homversa.com','ROC #324396 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"324396","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Dorman Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #209477 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"209477","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Ds Electric Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #350693 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"350693","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Duffy Electrical Contractors Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #245941 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"245941","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Dugan Electric','https://homversa.com/az/tucson/electricians','homversa.com','ROC #225243 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"225243","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Dynamo Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #350608 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"350608","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Dz Builders LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #354776 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"354776","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','E K Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #245790 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"245790","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','E2 Power And Special Systems Group Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #193467 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"193467","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Elecpro LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #361812 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"361812","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Electech Solutions LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #352095 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"352095","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Electrical Artistry Corporation','https://homversa.com/az/tucson/electricians','homversa.com','ROC #241579 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"241579","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Electrical Expert LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #309337 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"309337","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Electrical Innovations LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #292117 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"292117","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Electrical Rehab','https://homversa.com/az/tucson/electricians','homversa.com','ROC #331012 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"331012","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Electrical Technologies Consultants LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #362056 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"362056","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Elite Electrical Solutions LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #343835 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"343835","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Emory Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #285620 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"285620","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Empowered Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #305840 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"305840","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Energy Innovations Solar & Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #354071 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"354071","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Enlighten Electric Company','https://homversa.com/az/tucson/electricians','homversa.com','ROC #365269 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"365269","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Epperson Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #196257 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"196257","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Esco Construction LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #339928 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"339928","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Eternity Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #329078 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"329078","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Ethix Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #363167 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"363167","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Excel Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #151052 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"151052","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','F3 Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #356930 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"356930","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Falshaws Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #232806 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"232806","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Faulk Electric Corporation','https://homversa.com/az/tucson/electricians','homversa.com','ROC #161467 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"161467","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Fe Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #340226 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"340226","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Felix Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #296550 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"296550","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Fiesta Electric','https://homversa.com/az/tucson/electricians','homversa.com','ROC #321701 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"321701","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Final Touch General Contracting LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #366294 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"366294","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Flynn Electric','https://homversa.com/az/tucson/electricians','homversa.com','ROC #191167 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"191167","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Forrest Todd Fallows','https://homversa.com/az/tucson/electricians','homversa.com','ROC #342943 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"342943","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Freeman Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #333122 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"333122","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','G & J Development Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #275890 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"275890","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','G R S Electric','https://homversa.com/az/tucson/electricians','homversa.com','ROC #214556 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"214556","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','G1 Contractors LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #353148 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"353148","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','G7 Enterprises LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #333564 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"333564","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Garibaldi Electric Services LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #364642 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"364642","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Gbr Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #290756 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"290756","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Gnl Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #350805 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"350805","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Gold Hands Electrical LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #359395 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"359395","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Green And Lee Electric Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #095923 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"095923","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Green Electric Solutions LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #367637 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"367637","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Green''s Electrical Services LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #356640 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"356640","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','H F H Tucson','https://homversa.com/az/tucson/electricians','homversa.com','ROC #308010 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"308010","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Handy Randy Electric','https://homversa.com/az/tucson/electricians','homversa.com','ROC #201391 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"201391","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','High Energy Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #326532 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"326532","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','High Point Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #338907 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"338907","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','High Quality Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #333675 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"333675","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','High Sierra Electrical Contractor LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #366693 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"366693","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Homerun Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #351994 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"351994","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','I P A Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #211218 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"211218","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Iconic Mep LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #353729 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"353729","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Innovation Concepts LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #326538 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"326538","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Innovative Technology Development Group LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #303365 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"303365","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Integrity Electrical & Controls Systems LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #301561 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"301561","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Integrity Electrical Service LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #328787 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"328787","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Intelligent Design Air Conditioning And Heating Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #322375 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"322375","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Irka Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #175292 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"175292","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','J E B Electric Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #345503 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"345503","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','J P B Electric Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #214534 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"214534","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','J W Shaffer Electric Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #145172 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"145172","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','J. E. M. Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #317154 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"317154","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Jacobs Electric Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #190461 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"190461","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Jaguar Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #300656 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"300656","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','James Electric','https://homversa.com/az/tucson/electricians','homversa.com','ROC #275377 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"275377","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Jbl Power LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #364157 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"364157","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Jc Pierce Electric, LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #341191 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"341191","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Jcp Electric Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #297923 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"297923","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Jf Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #337819 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"337819","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Jj Electrical Solutions LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #366769 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"366769","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Jmac Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #267409 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"267409","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','John Wayne Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #320916 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"320916","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Jones Electric Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #182729 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"182729","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Joplin Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #288428 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"288428","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Journeymen Electric Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #182663 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"182663","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Julio''s Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #358250 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"358250","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Just Energize It Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #245853 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"245853","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','K L S Electric Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #101404 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"101404","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Kelly Energy Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #278494 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"278494","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Key Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #319952 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"319952","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Kp Power Llc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #366843 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"366843","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Krh Electrical','https://homversa.com/az/tucson/electricians','homversa.com','ROC #303547 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"303547","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','La Casita Development LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #335038 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"335038","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Lane''s Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #311682 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"311682","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Light The Way Electrical','https://homversa.com/az/tucson/electricians','homversa.com','ROC #359885 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"359885","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Lightning Electrical Solutions','https://homversa.com/az/tucson/electricians','homversa.com','ROC #356362 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"356362","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Lone Star Electrical Systems LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #318060 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"318060","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Louis Phillip Duke','https://homversa.com/az/tucson/electricians','homversa.com','ROC #284213 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"284213","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Lowe''s Electric Company','https://homversa.com/az/tucson/electricians','homversa.com','ROC #350552 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"350552","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','M & H Contractors LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #325840 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"325840","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','M & R Electrical Services LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #304134 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"304134","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','M78 Electric, LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #338701 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"338701","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Maurice Benjamin Yonkin','https://homversa.com/az/tucson/electricians','homversa.com','ROC #362297 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"362297","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Maxim Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #299029 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"299029","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Maximum Power Source','https://homversa.com/az/tucson/electricians','homversa.com','ROC #356104 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"356104","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Me Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #325756 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"325756","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Mission Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #272069 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"272069","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Monarch Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #310486 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"310486","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Mountain Edge Electrical Services LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #359672 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"359672","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Mountain Power Electrical Contractor Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #335363 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"335363","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Mountain Springs Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #325647 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"325647","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Mr Electric Of Tucson','https://homversa.com/az/tucson/electricians','homversa.com','ROC #265966 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"265966","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Mypowur.com LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #364016 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"364016","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','N E T Electric Co Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #107203 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"107203","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','N1 Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #310055 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"310055","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Nazareth Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #351328 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"351328","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Net Zero Solar LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #259756 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"259756","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','New Era Solutions LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #356040 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"356040","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Nilsen Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #326592 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"326592","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Omega Electrical Services Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #360407 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"360407","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','P & R Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #315860 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"315860","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Palm Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #253836 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"253836","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Palma Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #345404 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"345404","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Path Support LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #354467 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"354467","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Pathway Electric','https://homversa.com/az/tucson/electricians','homversa.com','ROC #352487 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"352487","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Perfect Plan Hvac, LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #335366 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"335366","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Phoenix Solar Pros LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #343575 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"343575","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Plugged In Electric, LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #332886 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"332886","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Plumbrite Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #259916 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"259916","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Power-House Electrical Solutions LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #343930 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"343930","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Precision Power Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #216270 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"216270","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Pro Electrical Contracting LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #294443 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"294443","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Psalms Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #361735 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"361735","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Pure Power Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #344614 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"344614","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Quantum Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #367106 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"367106","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','R E Woods Electrical Contracting LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #277460 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"277460","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','R H Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #193492 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"193492","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Reliant Well Drilling And Pump Corporation Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #312890 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"312890","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Resistance Energy LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #365850 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"365850","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Reyes Electrical LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #298224 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"298224","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Rhc Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #365861 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"365861","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Right Price Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #346631 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"346631","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Rio West Renewable Energy Solutions LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #263364 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"263364","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Rite Way Heating, Cooling And Plumbing LP','https://homversa.com/az/tucson/electricians','homversa.com','ROC #337974 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"337974","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','River Rock Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #337807 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"337807","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Rja Services LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #362665 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"362665","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Rkb Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #359850 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"359850","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Robert Paul Blizzard','https://homversa.com/az/tucson/electricians','homversa.com','ROC #214686 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"214686","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Robles Electric Solutions LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #320370 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"320370","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Rojo Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #358196 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"358196","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Rosas Electrical Company LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #329316 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"329316","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Sabino Solar, LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #354390 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"354390","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Safe Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #271688 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"271688","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Safety 1st Construction','https://homversa.com/az/tucson/electricians','homversa.com','ROC #332791 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"332791","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Saguaro Solar Electric','https://homversa.com/az/tucson/electricians','homversa.com','ROC #333300 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"333300","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Sasquatch Power Solutions LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #360206 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"360206","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Schad Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #346131 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"346131","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Scholl Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #339615 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"339615","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Schultz Electric','https://homversa.com/az/tucson/electricians','homversa.com','ROC #284506 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"284506","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Second Gen Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #324113 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"324113","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Secure Electrical Solutions LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #344345 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"344345","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Sergio Emilio Torres','https://homversa.com/az/tucson/electricians','homversa.com','ROC #360757 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"360757","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Shadow Mountain Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #348972 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"348972","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Sharp Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #294578 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"294578","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Sidco Electric Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #169618 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"169618","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Sierra Land Surveying And Development Services LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #149094 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"149094","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Simply Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #294887 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"294887","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Smart Choice Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #323355 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"323355","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Smart Entrance Systems LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #344927 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"344927","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Smith Old Mountain','https://homversa.com/az/tucson/electricians','homversa.com','ROC #363770 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"363770","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Sms Construction LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #327573 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"327573","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Solar Advantage LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #325455 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"325455","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Solar Gain Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #275941 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"275941","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Solar Pros Az','https://homversa.com/az/tucson/electricians','homversa.com','ROC #342453 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"342453","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Solon Corporation','https://homversa.com/az/tucson/electricians','homversa.com','ROC #236528 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"236528","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Sonoran Sunrise Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #343336 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"343336","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Sonoran Sunset Development LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #344613 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"344613","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Sos Ace Corporation','https://homversa.com/az/tucson/electricians','homversa.com','ROC #361064 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"361064","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Southern Electrical Services LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #360044 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"360044","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Southwest Home Repair Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #361840 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"361840","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Sovereign Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #119989 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"119989","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Spartan Concepts LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #357499 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"357499","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Spe Electrical Services LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #313123 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"313123","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Stein Co LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #253345 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"253345","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Steve''s Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #289876 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"289876","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Strongbuilt Plumbing & Air LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #326103 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"326103","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Summit Plumbing And Air LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #367786 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"367786","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Sun State Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #340975 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"340975","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Sunblaze Energy','https://homversa.com/az/tucson/electricians','homversa.com','ROC #331687 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"331687","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Sunbright Solar LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #311054 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"311054","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Sunnyside Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #235272 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"235272","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Sunstate Power And Solar Solutions LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #257454 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"257454","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Sunvolt Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #363283 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"363283","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Sunwest Electrical LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #313188 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"313188","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','T & M Electrical, LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #322079 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"322079","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Taylor Electric Contractors LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #344703 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"344703","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Technicians For Sustainability Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #310732 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"310732","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Temperature Control Electrical LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #335767 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"335767","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','The Contractor Remodeling And Repair LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #337159 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"337159","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','The J A M E S Company Electrical Contractors LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #196363 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"196363","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','The Plug Of Tucson LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #343555 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"343555","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','The Solar Store LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #164742 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"164742","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','The Worx Electrical LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #356692 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"356692","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Thomas Electrical Maintenance LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #344450 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"344450","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Tu Strong Electrical','https://homversa.com/az/tucson/electricians','homversa.com','ROC #348142 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"348142","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Tucson Electric Solutions LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #339736 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"339736","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Tucson Electrics LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #363195 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"363195","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Turnpoint Construction LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #328663 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"328663","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Unio Digital LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #333580 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"333580","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Us Electric Inc.','https://homversa.com/az/tucson/electricians','homversa.com','ROC #288684 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"288684","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','V And U For You Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #251916 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"251916","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','V-Spark LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #359779 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"359779","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Valencia Builders LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #343634 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"343634","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Valley Volts LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #364965 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"364965","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Vargas Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #323669 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"323669","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Volt Vikings','https://homversa.com/az/tucson/electricians','homversa.com','ROC #356955 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"356955","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Volta Electrical Solutions LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #334960 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"334960","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Voltage 2.0 LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #358676 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"358676","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Watters Ventures LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #351474 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"351474","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Wattz Up Lighting L.l.c','https://homversa.com/az/tucson/electricians','homversa.com','ROC #365640 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"365640","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Wisler Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #223168 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"223168","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Yoeme Electrical Services LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #314995 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"314995","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Zeus Electric, LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #342340 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"342340","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Zimco Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #265379 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"265379","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now()),
('vendor','Tucson','electrical_service','Electrician','Zona Solar&Electric LLC','https://homversa.com/az/tucson/electricians','homversa.com','ROC #360060 | registry-derived public listing','assistant licensed census: Tucson electricians',0,null,null,false,'registry_derived','credential_corroborated','2026-09-21'::date,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_tucson_electricians_full","source_quality":"registry_derived_secondary","verification_status":"credential_corroborated","roc_license":"360060","trade":"electricians","source_verified_date":"2026-09-21","researched_by":"assistant_manual_full_census"}'::jsonb,now(),now())
on conflict(side,market,category_key,source_url,business_name) do update set
 snippet=excluded.snippet,
 source_tier='registry_derived',
 verification_status='credential_corroborated',
 last_verified_at=excluded.last_verified_at,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

update market_inventory_progress p
set official_candidates=(
 select count(*) from market_inventory_candidates c
 where c.side=p.side and c.market=p.market and c.category_key=p.category_key
   and c.status='discovered' and c.query_strategy_version=7 and c.official_site=true
), updated_at=now()
where p.market='Tucson' and p.side='vendor' and p.category_key='electrical_service';
