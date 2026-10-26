

-- Assistant-led Prescott Valley census batch 02 (2026-10-26)
-- Broad Prescott Valley vendor/trade census researched manually from current local sources.
-- Discovery inventory only; preserve closed status and never promote/stage/send.

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','backflow_plumbing','Backflow & Commercial Plumbing','Arizona All Service Plumbing',
 'https://www.yellowpages.com/prescott-valley-az/plumbers','yellowpages.com','Current Prescott Valley plumbing discovery candidate. Prescott Valley chamber/local plumbing candidate.','assistant bootstrap research: Prescott Valley Backflow & Commercial Plumbing',0,
 null,'(928) 775-6550',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley plumbing discovery candidate. Prescott Valley chamber/local plumbing candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','backflow_plumbing','Backflow & Commercial Plumbing','Lawhorn Plumbing LLC',
 'https://www.yellowpages.com/prescott-valley-az/plumbers','yellowpages.com','Current Prescott Valley plumbing discovery candidate. Prescott Valley plumbing contractor; ROC-backed direct verification can follow.','assistant bootstrap research: Prescott Valley Backflow & Commercial Plumbing',0,
 null,'(928) 529-7778',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley plumbing discovery candidate. Prescott Valley plumbing contractor; ROC-backed direct verification can follow."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','backflow_plumbing','Backflow & Commercial Plumbing','A Miracle Man Plumbing',
 'https://www.yellowpages.com/prescott-valley-az/plumbers','yellowpages.com','Current Prescott Valley plumbing discovery candidate. 3501 N Dale Dr, Prescott Valley.','assistant bootstrap research: Prescott Valley Backflow & Commercial Plumbing',0,
 null,'(928) 830-3575',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley plumbing discovery candidate. 3501 N Dale Dr, Prescott Valley."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','backflow_plumbing','Backflow & Commercial Plumbing','Gold Star Plumbing & Drain',
 'https://www.yellowpages.com/prescott-valley-az/plumbers','yellowpages.com','Current Prescott Valley plumbing discovery candidate. 8737 Florentine Rd, Prescott Valley.','assistant bootstrap research: Prescott Valley Backflow & Commercial Plumbing',0,
 null,'(928) 212-5606',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley plumbing discovery candidate. 8737 Florentine Rd, Prescott Valley."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','backflow_plumbing','Backflow & Commercial Plumbing','Stellar Plumbing',
 'https://www.yellowpages.com/prescott-valley-az/plumbers','yellowpages.com','Current Prescott Valley plumbing discovery candidate. 4400 N Stage Way Ln, Prescott Valley.','assistant bootstrap research: Prescott Valley Backflow & Commercial Plumbing',0,
 null,'(928) 533-3446',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley plumbing discovery candidate. 4400 N Stage Way Ln, Prescott Valley."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','backflow_plumbing','Backflow & Commercial Plumbing','Affordable Plumbing Solutions',
 'https://www.yellowpages.com/prescott-valley-az/plumbers','yellowpages.com','Current Prescott Valley plumbing discovery candidate. 2071 E Oxford, Prescott Valley.','assistant bootstrap research: Prescott Valley Backflow & Commercial Plumbing',0,
 null,'(928) 925-6541',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley plumbing discovery candidate. 2071 E Oxford, Prescott Valley."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','backflow_plumbing','Backflow & Commercial Plumbing','Victory Plumbing Solutions LLC',
 'https://www.yellowpages.com/prescott-valley-az/plumbers','yellowpages.com','Current Prescott Valley plumbing discovery candidate. Prescott Valley-based plumbing candidate.','assistant bootstrap research: Prescott Valley Backflow & Commercial Plumbing',0,
 null,'(928) 910-1850',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley plumbing discovery candidate. Prescott Valley-based plumbing candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','backflow_plumbing','Backflow & Commercial Plumbing','Blue Plumbing and Drain Cleaning LLC',
 'https://www.yellowpages.com/prescott-valley-az/plumbers','yellowpages.com','Current Prescott Valley plumbing discovery candidate. 8561 Florentine Rd F, Prescott Valley.','assistant bootstrap research: Prescott Valley Backflow & Commercial Plumbing',0,
 null,'(928) 775-9388',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley plumbing discovery candidate. 8561 Florentine Rd F, Prescott Valley."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','backflow_plumbing','Backflow & Commercial Plumbing','Chris'' Plumbing & Repair',
 'https://www.yellowpages.com/prescott-valley-az/plumbers','yellowpages.com','Current Prescott Valley plumbing discovery candidate. 12750 E Dismount Rd, Prescott Valley.','assistant bootstrap research: Prescott Valley Backflow & Commercial Plumbing',0,
 null,'(928) 642-6863',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley plumbing discovery candidate. 12750 E Dismount Rd, Prescott Valley."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','backflow_plumbing','Backflow & Commercial Plumbing','Goettl''s High Desert Mechanical Inc',
 'https://www.yellowpages.com/prescott-valley-az/plumbers','yellowpages.com','Current Prescott Valley plumbing discovery candidate. 8001 E State Route 69 Suite F; plumbing/HVAC contractor.','assistant bootstrap research: Prescott Valley Backflow & Commercial Plumbing',0,
 null,'(928) 567-2200',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley plumbing discovery candidate. 8001 E State Route 69 Suite F; plumbing/HVAC contractor."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','electrical_service','Electrician','Crown Electric',
 'https://www.yellowpages.com/prescott-valley-az/electricians','yellowpages.com','Current Prescott Valley electrician discovery candidate. 3688 N Constance Dr.','assistant bootstrap research: Prescott Valley Electrician',0,
 null,'(928) 759-3372',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley electrician discovery candidate. 3688 N Constance Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','electrical_service','Electrician','PS Electric',
 'https://www.yellowpages.com/prescott-valley-az/electricians','yellowpages.com','Current Prescott Valley electrician discovery candidate. 6301 Baja Cir.','assistant bootstrap research: Prescott Valley Electrician',0,
 null,'(928) 759-9563',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley electrician discovery candidate. 6301 Baja Cir."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','electrical_service','Electrician','McFadden Brothers Electric',
 'https://www.yellowpages.com/prescott-valley-az/electricians','yellowpages.com','Current Prescott Valley electrician discovery candidate. 8591 E Florentine Rd.','assistant bootstrap research: Prescott Valley Electrician',0,
 null,'(928) 772-9512',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley electrician discovery candidate. 8591 E Florentine Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','electrical_service','Electrician','Pioneer Electric Company',
 'https://www.yellowpages.com/prescott-valley-az/electricians','yellowpages.com','Current Prescott Valley electrician discovery candidate. 2900 N Pleasant View Dr.','assistant bootstrap research: Prescott Valley Electrician',0,
 null,'(928) 772-4462',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley electrician discovery candidate. 2900 N Pleasant View Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','electrical_service','Electrician','Wilson Electric',
 'https://www.yellowpages.com/prescott-valley-az/electricians','yellowpages.com','Current Prescott Valley electrician discovery candidate. 8516 E State Route 69.','assistant bootstrap research: Prescott Valley Electrician',0,
 null,'(928) 776-9268',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley electrician discovery candidate. 8516 E State Route 69."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','electrical_service','Electrician','Elan Electric Inc',
 'https://www.yellowpages.com/prescott-valley-az/electricians','yellowpages.com','Current Prescott Valley electrician discovery candidate. 2500 N 5th St Ste 5.','assistant bootstrap research: Prescott Valley Electrician',0,
 null,'(928) 925-7937',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley electrician discovery candidate. 2500 N 5th St Ste 5."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','electrical_service','Electrician','Pur Solar & Electrical',
 'https://www.yellowpages.com/prescott-valley-az/electricians','yellowpages.com','Current Prescott Valley electrician discovery candidate. 7129 E 1st St Ste 102.','assistant bootstrap research: Prescott Valley Electrician',0,
 null,'(928) 788-0285',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley electrician discovery candidate. 7129 E 1st St Ste 102."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','electrical_service','Electrician','Jameson Electric',
 'https://www.yellowpages.com/prescott-valley-az/electricians','yellowpages.com','Current Prescott Valley electrician discovery candidate. 2807 N Date Creek Dr.','assistant bootstrap research: Prescott Valley Electrician',0,
 null,'(928) 770-5227',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley electrician discovery candidate. 2807 N Date Creek Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','electrical_service','Electrician','Advanced Electrical Contracting',
 'https://www.yellowpages.com/prescott-valley-az/electricians','yellowpages.com','Current Prescott Valley electrician discovery candidate. 7887 E Bravo Ln.','assistant bootstrap research: Prescott Valley Electrician',0,
 null,'(928) 713-2049',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley electrician discovery candidate. 7887 E Bravo Ln."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','electrical_service','Electrician','Summit Controls',
 'https://www.yellowpages.com/prescott-valley-az/electricians','yellowpages.com','Current Prescott Valley electrician discovery candidate. 10555 E Mummy View Dr.','assistant bootstrap research: Prescott Valley Electrician',0,
 null,'(928) 772-2669',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley electrician discovery candidate. 10555 E Mummy View Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','electrical_service','Electrician','High Valley Electric',
 'https://www.yellowpages.com/prescott-valley-az/electricians','yellowpages.com','Current Prescott Valley electrician discovery candidate. Prescott Valley 86312.','assistant bootstrap research: Prescott Valley Electrician',0,
 null,'(928) 499-8755',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley electrician discovery candidate. Prescott Valley 86312."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','electrical_service','Electrician','Recovery Electric',
 'https://www.yellowpages.com/prescott-valley-az/electricians','yellowpages.com','Current Prescott Valley electrician discovery candidate. Prescott Valley-based residential/commercial electrical contractor.','assistant bootstrap research: Prescott Valley Electrician',0,
 null,'(928) 910-5527',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley electrician discovery candidate. Prescott Valley-based residential/commercial electrical contractor."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','electrical_service','Electrician','Assurance Electrical Services',
 'https://www.yellowpages.com/prescott-valley-az/electricians','yellowpages.com','Current Prescott Valley electrician discovery candidate. 3649 N Mountain View Dr; residential/commercial/industrial.','assistant bootstrap research: Prescott Valley Electrician',0,
 null,'(928) 713-2177',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley electrician discovery candidate. 3649 N Mountain View Dr; residential/commercial/industrial."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','hvac_heat','Heating & Air','Goettl''s High Desert Mechanical Inc',
 'https://www.pvchamber.org/list/category/heating-ac-1576','pvchamber.org','Prescott Valley Chamber current HVAC member. 8001 E State Route 69 Suite F.','assistant bootstrap research: Prescott Valley Heating & Air',0,
 null,'(928) 567-2200',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Prescott Valley Chamber current HVAC member. 8001 E State Route 69 Suite F."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','hvac_heat','Heating & Air','Indian Air',
 'https://www.pvchamber.org/list/category/heating-ac-1576','pvchamber.org','Prescott Valley Chamber current HVAC member. 8933 E Laredo Unit B.','assistant bootstrap research: Prescott Valley Heating & Air',0,
 null,'(928) 772-8890',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Prescott Valley Chamber current HVAC member. 8933 E Laredo Unit B."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','hvac_heat','Heating & Air','Moyer''s Heating & Cooling',
 'https://www.pvchamber.org/list/category/heating-ac-1576','pvchamber.org','Prescott Valley Chamber current HVAC member. 8146 E Ashley Dr.','assistant bootstrap research: Prescott Valley Heating & Air',0,
 null,'(928) 772-4346',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Prescott Valley Chamber current HVAC member. 8146 E Ashley Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','hvac_heat','Heating & Air','Northern Arizona Heating & Air',
 'https://www.pvchamber.org/list/category/heating-ac-1576','pvchamber.org','Prescott Valley Chamber current HVAC member. 5860 N Sherril Dr.','assistant bootstrap research: Prescott Valley Heating & Air',0,
 null,'(928) 772-7751',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Prescott Valley Chamber current HVAC member. 5860 N Sherril Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','hvac_heat','Heating & Air','Yavapai Mechanical',
 'https://www.pvchamber.org/list/category/heating-ac-1576','pvchamber.org','Prescott Valley Chamber current HVAC member. 5860 N Fulton Dr.','assistant bootstrap research: Prescott Valley Heating & Air',0,
 null,'(928) 776-0692',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Prescott Valley Chamber current HVAC member. 5860 N Fulton Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','pest_control','Pest Control','Orkin Pest & Termite Control',
 'https://www.yellowpages.com/prescott-valley-az/pest-control-services','yellowpages.com','Current Prescott Valley pest-control discovery candidate. 8230 E Pecos Dr.','assistant bootstrap research: Prescott Valley Pest Control',0,
 null,'(866) 204-8204',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley pest-control discovery candidate. 8230 E Pecos Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','pest_control','Pest Control','Yavapai Exterminating',
 'https://www.yellowpages.com/prescott-valley-az/pest-control-services','yellowpages.com','Current Prescott Valley pest-control discovery candidate. 2820 N Valley View Dr.','assistant bootstrap research: Prescott Valley Pest Control',0,
 null,'(928) 442-7057',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley pest-control discovery candidate. 2820 N Valley View Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','pest_control','Pest Control','Sexton Pest Control',
 'https://www.yellowpages.com/prescott-valley-az/pest-control-services','yellowpages.com','Current Prescott Valley pest-control discovery candidate. 8028 E State Route 69 Ste 205.','assistant bootstrap research: Prescott Valley Pest Control',0,
 null,'(928) 772-4603',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley pest-control discovery candidate. 8028 E State Route 69 Ste 205."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','pest_control','Pest Control','Conn Pest Control',
 'https://www.yellowpages.com/prescott-valley-az/pest-control-services','yellowpages.com','Current Prescott Valley pest-control discovery candidate. 2500 N 5th St.','assistant bootstrap research: Prescott Valley Pest Control',0,
 null,'(928) 772-7622',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley pest-control discovery candidate. 2500 N 5th St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','pest_control','Pest Control','Hughes Pest Solutions',
 'https://www.yellowpages.com/prescott-valley-az/pest-control-services','yellowpages.com','Current Prescott Valley pest-control discovery candidate. Prescott Valley.','assistant bootstrap research: Prescott Valley Pest Control',0,
 null,'(928) 899-3346',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley pest-control discovery candidate. Prescott Valley."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','pest_control','Pest Control','Bulwark Exterminating',
 'https://www.yellowpages.com/prescott-valley-az/pest-control-services','yellowpages.com','Current Prescott Valley pest-control discovery candidate. 8581 E Florentine Rd Ste C.','assistant bootstrap research: Prescott Valley Pest Control',0,
 null,'(928) 772-7727',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley pest-control discovery candidate. 8581 E Florentine Rd Ste C."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','pest_control','Pest Control','NAZ Pest Management LLC',
 'https://www.yellowpages.com/prescott-valley-az/pest-control-services','yellowpages.com','Current Prescott Valley pest-control discovery candidate. 6361 Andover Ln.','assistant bootstrap research: Prescott Valley Pest Control',0,
 null,'(928) 533-3191',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley pest-control discovery candidate. 6361 Andover Ln."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','pest_control','Pest Control','KPZ Pest Control',
 'https://www.yellowpages.com/prescott-valley-az/pest-control-services','yellowpages.com','Current Prescott Valley pest-control discovery candidate. 3985 N Catherine Dr.','assistant bootstrap research: Prescott Valley Pest Control',0,
 null,'(928) 772-0199',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley pest-control discovery candidate. 3985 N Catherine Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','pest_control','Pest Control','SOS Exterminating Inc',
 'https://www.yellowpages.com/prescott-valley-az/pest-control-services','yellowpages.com','Current Prescott Valley pest-control discovery candidate. 8680 Highway 69.','assistant bootstrap research: Prescott Valley Pest Control',0,
 null,'(928) 772-7474',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley pest-control discovery candidate. 8680 Highway 69."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','pest_control','Pest Control','Certified Pest Control',
 'https://www.yellowpages.com/prescott-valley-az/pest-control-services','yellowpages.com','Current Prescott Valley pest-control discovery candidate. 4174 N Gelding Dr.','assistant bootstrap research: Prescott Valley Pest Control',0,
 null,'(928) 775-4140',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley pest-control discovery candidate. 4174 N Gelding Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','pest_control','Pest Control','Prescott Pest Control',
 'https://www.yellowpages.com/prescott-valley-az/pest-control-services','yellowpages.com','Current Prescott Valley pest-control discovery candidate. 4778 N Edgemont Rd.','assistant bootstrap research: Prescott Valley Pest Control',0,
 null,'(928) 772-9471',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley pest-control discovery candidate. 4778 N Edgemont Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','pest_control','Pest Control','Shooters Pest Control',
 'https://www.yellowpages.com/prescott-valley-az/pest-control-services','yellowpages.com','Current Prescott Valley pest-control discovery candidate. 2771 N Mendecino Dr Ste A.','assistant bootstrap research: Prescott Valley Pest Control',0,
 null,'(928) 445-2391',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley pest-control discovery candidate. 2771 N Mendecino Dr Ste A."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','pest_control','Pest Control','Praying Mantis Pest & Weed',
 'https://www.yellowpages.com/prescott-valley-az/pest-control-services','yellowpages.com','Current Prescott Valley pest-control discovery candidate. 8170 E Ashley Dr.','assistant bootstrap research: Prescott Valley Pest Control',0,
 null,'(928) 708-9800',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley pest-control discovery candidate. 8170 E Ashley Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','pest_control','Pest Control','Truly Nolen',
 'https://www.yellowpages.com/prescott-valley-az/pest-control-services','yellowpages.com','Current Prescott Valley pest-control discovery candidate. 6594 E 2nd St Ste D.','assistant bootstrap research: Prescott Valley Pest Control',0,
 null,'(928) 775-4261',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley pest-control discovery candidate. 6594 E 2nd St Ste D."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','pest_control','Pest Control','Vector-Con Pest Management',
 'https://www.yellowpages.com/prescott-valley-az/pest-control-services','yellowpages.com','Current Prescott Valley pest-control discovery candidate. 8156 E Lisa Cir.','assistant bootstrap research: Prescott Valley Pest Control',0,
 null,'(928) 227-2645',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley pest-control discovery candidate. 8156 E Lisa Cir."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','pest_control','Pest Control','Bryan''s Wildlife Services',
 'https://www.yellowpages.com/prescott-valley-az/pest-control-services','yellowpages.com','Current Prescott Valley pest-control discovery candidate. 7655 E Spouse Dr.','assistant bootstrap research: Prescott Valley Pest Control',0,
 null,'(928) 710-9277',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley pest-control discovery candidate. 7655 E Spouse Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','pest_control','Pest Control','Pest Guard Pest & Termite Control',
 'https://www.yellowpages.com/prescott-valley-az/pest-control-services','yellowpages.com','Current Prescott Valley pest-control discovery candidate. 7108 E Fire Rock Rd.','assistant bootstrap research: Prescott Valley Pest Control',0,
 null,'(928) 379-2597',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley pest-control discovery candidate. 7108 E Fire Rock Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','landscaping','Landscaping & Yard Cleanup','Glowing Seasons Irrigation & Landscape Services',
 'https://www.yellowpages.com/prescott-valley-az/landscape-contractors','yellowpages.com','Current Prescott Valley landscaping discovery candidate. Prescott Valley.','assistant bootstrap research: Prescott Valley Landscaping & Yard Cleanup',0,
 null,'(928) 470-2967',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley landscaping discovery candidate. Prescott Valley."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','landscaping','Landscaping & Yard Cleanup','Earth Shapers',
 'https://www.yellowpages.com/prescott-valley-az/landscape-contractors','yellowpages.com','Current Prescott Valley landscaping discovery candidate. 8841 E Florentine Rd Ste F.','assistant bootstrap research: Prescott Valley Landscaping & Yard Cleanup',0,
 null,'(928) 227-5932',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley landscaping discovery candidate. 8841 E Florentine Rd Ste F."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','landscaping','Landscaping & Yard Cleanup','R E & Sons Yard Maintenance',
 'https://www.yellowpages.com/prescott-valley-az/landscape-contractors','yellowpages.com','Current Prescott Valley landscaping discovery candidate. 3571 N Dale Dr.','assistant bootstrap research: Prescott Valley Landscaping & Yard Cleanup',0,
 null,'(928) 772-9419',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley landscaping discovery candidate. 3571 N Dale Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','landscaping','Landscaping & Yard Cleanup','Aspen Landscaping Inc',
 'https://www.yellowpages.com/prescott-valley-az/landscape-contractors','yellowpages.com','Current Prescott Valley landscaping discovery candidate. 9350 E Valley Rd Ste A.','assistant bootstrap research: Prescott Valley Landscaping & Yard Cleanup',0,
 null,'(928) 775-2573',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley landscaping discovery candidate. 9350 E Valley Rd Ste A."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','landscaping','Landscaping & Yard Cleanup','New Life Landscapes Inc',
 'https://www.yellowpages.com/prescott-valley-az/landscape-contractors','yellowpages.com','Current Prescott Valley landscaping discovery candidate. 8815 E Spurr Ln.','assistant bootstrap research: Prescott Valley Landscaping & Yard Cleanup',0,
 null,'(928) 775-9736',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley landscaping discovery candidate. 8815 E Spurr Ln."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','landscaping','Landscaping & Yard Cleanup','R.E. And Sons Landscaping',
 'https://www.yellowpages.com/prescott-valley-az/landscape-contractors','yellowpages.com','Current Prescott Valley landscaping discovery candidate. 8101 E Pecos Dr.','assistant bootstrap research: Prescott Valley Landscaping & Yard Cleanup',0,
 null,'(928) 533-7425',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley landscaping discovery candidate. 8101 E Pecos Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','landscaping','Landscaping & Yard Cleanup','Desert Green Landscape & Gardening',
 'https://www.yellowpages.com/prescott-valley-az/landscape-contractors','yellowpages.com','Current Prescott Valley landscaping discovery candidate. PO Box 12231, Prescott Valley.','assistant bootstrap research: Prescott Valley Landscaping & Yard Cleanup',0,
 null,'(928) 710-2214',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley landscaping discovery candidate. PO Box 12231, Prescott Valley."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','landscaping','Landscaping & Yard Cleanup','The Crew',
 'https://www.yellowpages.com/prescott-valley-az/landscape-contractors','yellowpages.com','Current Prescott Valley landscaping discovery candidate. 3575 N Tower Rd.','assistant bootstrap research: Prescott Valley Landscaping & Yard Cleanup',0,
 null,'(928) 224-8530',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley landscaping discovery candidate. 3575 N Tower Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','landscaping','Landscaping & Yard Cleanup','Creative Desert Landscaping',
 'https://www.yellowpages.com/prescott-valley-az/landscape-contractors','yellowpages.com','Current Prescott Valley landscaping discovery candidate. 4888 N Norman Rd.','assistant bootstrap research: Prescott Valley Landscaping & Yard Cleanup',0,
 null,'(928) 848-0706',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley landscaping discovery candidate. 4888 N Norman Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','landscaping','Landscaping & Yard Cleanup','Dr Green Thumbs Landscaping',
 'https://www.yellowpages.com/prescott-valley-az/landscape-contractors','yellowpages.com','Current Prescott Valley landscaping discovery candidate. 5414 N Wickiup Rd.','assistant bootstrap research: Prescott Valley Landscaping & Yard Cleanup',0,
 null,'(928) 600-1445',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley landscaping discovery candidate. 5414 N Wickiup Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','landscaping','Landscaping & Yard Cleanup','Sun Set Landscaping',
 'https://www.yellowpages.com/prescott-valley-az/landscape-contractors','yellowpages.com','Current Prescott Valley landscaping discovery candidate. 4430 N Sheridan Ln.','assistant bootstrap research: Prescott Valley Landscaping & Yard Cleanup',0,
 null,'(928) 277-3787',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley landscaping discovery candidate. 4430 N Sheridan Ln."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','landscaping','Landscaping & Yard Cleanup','Landscape Now Inc',
 'https://www.yellowpages.com/prescott-valley-az/landscape-contractors','yellowpages.com','Current Prescott Valley landscaping discovery candidate. 8533 E Laredo Dr.','assistant bootstrap research: Prescott Valley Landscaping & Yard Cleanup',0,
 null,'(928) 458-0425',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley landscaping discovery candidate. 8533 E Laredo Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','landscaping','Landscaping & Yard Cleanup','Skipper Landscaping Inc',
 'https://www.yellowpages.com/prescott-valley-az/landscape-contractors','yellowpages.com','Current Prescott Valley landscaping discovery candidate. 8950 E Long Mesa Dr.','assistant bootstrap research: Prescott Valley Landscaping & Yard Cleanup',0,
 null,'(928) 237-6666',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley landscaping discovery candidate. 8950 E Long Mesa Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','landscaping','Landscaping & Yard Cleanup','Arizona Modern Landscapes',
 'https://www.yellowpages.com/prescott-valley-az/landscape-contractors','yellowpages.com','Current Prescott Valley landscaping discovery candidate. 3115 N Robert Rd.','assistant bootstrap research: Prescott Valley Landscaping & Yard Cleanup',0,
 null,'(602) 881-7497',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley landscaping discovery candidate. 3115 N Robert Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','landscaping','Landscaping & Yard Cleanup','Rock''n''earth Landscaping',
 'https://www.yellowpages.com/prescott-valley-az/landscape-contractors','yellowpages.com','Current Prescott Valley landscaping discovery candidate. 7610 E Acre Way.','assistant bootstrap research: Prescott Valley Landscaping & Yard Cleanup',0,
 null,'(928) 710-6795',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley landscaping discovery candidate. 7610 E Acre Way."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','landscaping','Landscaping & Yard Cleanup','Forevergreen Landscaping JR LLC',
 'https://www.yellowpages.com/prescott-valley-az/landscape-contractors','yellowpages.com','Current Prescott Valley landscaping discovery candidate. Prescott Valley.','assistant bootstrap research: Prescott Valley Landscaping & Yard Cleanup',0,
 null,'(928) 273-9723',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley landscaping discovery candidate. Prescott Valley."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','landscaping','Landscaping & Yard Cleanup','Yard Work Joes',
 'https://www.yellowpages.com/prescott-valley-az/landscape-contractors','yellowpages.com','Current Prescott Valley landscaping discovery candidate. Prescott Valley.','assistant bootstrap research: Prescott Valley Landscaping & Yard Cleanup',0,
 null,'(602) 773-9256',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley landscaping discovery candidate. Prescott Valley."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','landscaping','Landscaping & Yard Cleanup','Martinez Landscaping',
 'https://www.yellowpages.com/prescott-valley-az/landscape-contractors','yellowpages.com','Current Prescott Valley landscaping discovery candidate. Prescott Valley.','assistant bootstrap research: Prescott Valley Landscaping & Yard Cleanup',0,
 null,'(928) 316-3649',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley landscaping discovery candidate. Prescott Valley."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','landscaping','Landscaping & Yard Cleanup','Golden Rule',
 'https://www.yellowpages.com/prescott-valley-az/landscape-contractors','yellowpages.com','Current Prescott Valley landscaping discovery candidate. Prescott Valley.','assistant bootstrap research: Prescott Valley Landscaping & Yard Cleanup',0,
 null,'(928) 227-6255',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley landscaping discovery candidate. Prescott Valley."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','landscaping','Landscaping & Yard Cleanup','Ayala''s Landscape Professionals',
 'https://www.yellowpages.com/prescott-valley-az/landscape-contractors','yellowpages.com','Current Prescott Valley landscaping discovery candidate. 4017 N Robert Rd.','assistant bootstrap research: Prescott Valley Landscaping & Yard Cleanup',0,
 null,'(928) 632-3260',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley landscaping discovery candidate. 4017 N Robert Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','landscaping','Landscaping & Yard Cleanup','Rapid Response Property Services',
 'https://www.yellowpages.com/prescott-valley-az/landscape-contractors','yellowpages.com','Current Prescott Valley landscaping discovery candidate. 8934 E Laredo Dr Unit 2.','assistant bootstrap research: Prescott Valley Landscaping & Yard Cleanup',0,
 null,'(928) 606-1395',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley landscaping discovery candidate. 8934 E Laredo Dr Unit 2."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','landscaping','Landscaping & Yard Cleanup','Sons Landscaping LLC',
 'https://www.yellowpages.com/prescott-valley-az/landscape-contractors','yellowpages.com','Current Prescott Valley landscaping discovery candidate. 6443 E Copper Hill Dr.','assistant bootstrap research: Prescott Valley Landscaping & Yard Cleanup',0,
 null,'(928) 499-5119',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley landscaping discovery candidate. 6443 E Copper Hill Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','landscaping','Landscaping & Yard Cleanup','Yellowstone Landscape',
 'https://www.yellowpages.com/prescott-valley-az/landscape-contractors','yellowpages.com','Current Prescott Valley landscaping discovery candidate. 8767 E Laredo.','assistant bootstrap research: Prescott Valley Landscaping & Yard Cleanup',0,
 null,'(623) 810-2079',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley landscaping discovery candidate. 8767 E Laredo."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','tree_service','Tree Service & Brush Clearing','A and C Tree Services LLC',
 'https://www.yellowpages.com/prescott-valley-az/tree-service','yellowpages.com','Current Prescott Valley tree-service discovery candidate. Prescott Valley-based tree service.','assistant bootstrap research: Prescott Valley Tree Service & Brush Clearing',0,
 null,'(928) 350-7601',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley tree-service discovery candidate. Prescott Valley-based tree service."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','tree_service','Tree Service & Brush Clearing','The Kings'' Tree Care LLC',
 'https://www.yellowpages.com/prescott-valley-az/tree-service','yellowpages.com','Current Prescott Valley tree-service discovery candidate. Prescott Valley-based arborist/tree service.','assistant bootstrap research: Prescott Valley Tree Service & Brush Clearing',0,
 null,'(928) 499-7111',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley tree-service discovery candidate. Prescott Valley-based arborist/tree service."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','tree_service','Tree Service & Brush Clearing','Northern Arizona Tree Health Care',
 'https://www.yellowpages.com/prescott-valley-az/tree-service','yellowpages.com','Current Prescott Valley tree-service discovery candidate. 2860 N Valley View Dr.','assistant bootstrap research: Prescott Valley Tree Service & Brush Clearing',0,
 null,'(928) 910-2264',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley tree-service discovery candidate. 2860 N Valley View Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','tree_service','Tree Service & Brush Clearing','Old Masters Tree Service',
 'https://www.yellowpages.com/prescott-valley-az/tree-service','yellowpages.com','Current Prescott Valley tree-service discovery candidate. 7021 E Manley Dr.','assistant bootstrap research: Prescott Valley Tree Service & Brush Clearing',0,
 null,'(928) 778-7751',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley tree-service discovery candidate. 7021 E Manley Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','tree_service','Tree Service & Brush Clearing','The Joshua Tree & Landscape Co.',
 'https://www.yellowpages.com/prescott-valley-az/tree-service','yellowpages.com','Current Prescott Valley tree-service discovery candidate. 7141 N Pinnacle Pass Dr.','assistant bootstrap research: Prescott Valley Tree Service & Brush Clearing',0,
 null,'(928) 227-2338',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley tree-service discovery candidate. 7141 N Pinnacle Pass Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','tree_service','Tree Service & Brush Clearing','Desert Pines Landscaping',
 'https://www.yellowpages.com/prescott-valley-az/tree-service','yellowpages.com','Current Prescott Valley tree-service discovery candidate. Prescott Valley.','assistant bootstrap research: Prescott Valley Tree Service & Brush Clearing',0,
 null,'(928) 421-4864',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley tree-service discovery candidate. Prescott Valley."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','tree_service','Tree Service & Brush Clearing','Defensible Space',
 'https://www.yellowpages.com/prescott-valley-az/tree-service','yellowpages.com','Current Prescott Valley tree-service discovery candidate. Prescott Valley 86315.','assistant bootstrap research: Prescott Valley Tree Service & Brush Clearing',0,
 null,'(623) 414-5074',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley tree-service discovery candidate. Prescott Valley 86315."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','tree_service','Tree Service & Brush Clearing','Yavapai Exterminating',
 'https://www.yellowpages.com/prescott-valley-az/tree-service','yellowpages.com','Current Prescott Valley tree-service discovery candidate. 2820 N Valley View Dr; tree/arborist service as well as pest.','assistant bootstrap research: Prescott Valley Tree Service & Brush Clearing',0,
 null,'(928) 442-7057',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley tree-service discovery candidate. 2820 N Valley View Dr; tree/arborist service as well as pest."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','garage_door','Garage Door Repair','Hung Rite Garage Doors',
 'https://www.yellowpages.com/prescott-az/garage-doors-openers','yellowpages.com','Current Prescott Valley garage-door discovery candidate. 8841 E Valley Rd, Prescott Valley.','assistant bootstrap research: Prescott Valley Garage Door Repair',0,
 null,'(928) 775-0701',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley garage-door discovery candidate. 8841 E Valley Rd, Prescott Valley."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','garage_door','Garage Door Repair','TopNotch Garage Doors by Joel',
 'https://www.yellowpages.com/prescott-az/garage-doors-openers','yellowpages.com','Current Prescott Valley garage-door discovery candidate. 9172 E Florentine Rd Unit 5.','assistant bootstrap research: Prescott Valley Garage Door Repair',0,
 null,'(928) 775-0001',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley garage-door discovery candidate. 9172 E Florentine Rd Unit 5."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','garage_door','Garage Door Repair','F & J''s 24 Hour Garage Door Service',
 'https://www.yellowpages.com/prescott-az/garage-doors-openers','yellowpages.com','Current Prescott Valley garage-door discovery candidate. 8400 E Spouse Dr Unit B.','assistant bootstrap research: Prescott Valley Garage Door Repair',0,
 null,'(928) 445-8487',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley garage-door discovery candidate. 8400 E Spouse Dr Unit B."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','garage_door','Garage Door Repair','Garage Door Experts',
 'https://www.yellowpages.com/prescott-az/garage-doors-openers','yellowpages.com','Current Prescott Valley garage-door discovery candidate. 3100 N Glassford Hill Rd.','assistant bootstrap research: Prescott Valley Garage Door Repair',0,
 null,'(928) 237-1453',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley garage-door discovery candidate. 3100 N Glassford Hill Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','garage_door','Garage Door Repair','Prescott Valley Garage Door Repair Co',
 'https://www.yellowpages.com/prescott-az/garage-doors-openers','yellowpages.com','Current Prescott Valley garage-door discovery candidate. 3025 N Windsong Dr.','assistant bootstrap research: Prescott Valley Garage Door Repair',0,
 null,'(928) 237-5662',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley garage-door discovery candidate. 3025 N Windsong Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','garage_door','Garage Door Repair','Prescott Valley Garage Doors & Installation',
 'https://www.yellowpages.com/prescott-az/garage-doors-openers','yellowpages.com','Current Prescott Valley garage-door discovery candidate. 5590 N Ardmore Ave.','assistant bootstrap research: Prescott Valley Garage Door Repair',0,
 null,'(928) 237-5873',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley garage-door discovery candidate. 5590 N Ardmore Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','garage_door','Garage Door Repair','Neumann High Country Doors',
 'https://www.yellowpages.com/prescott-az/garage-doors-openers','yellowpages.com','Current Prescott Valley garage-door discovery candidate. 7247 E 1st St.','assistant bootstrap research: Prescott Valley Garage Door Repair',0,
 null,'(928) 772-9738',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley garage-door discovery candidate. 7247 E 1st St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','garage_door','Garage Door Repair','New Garage Doors & Installation',
 'https://www.yellowpages.com/prescott-az/garage-doors-openers','yellowpages.com','Current Prescott Valley garage-door discovery candidate. 5372 N Western Blvd.','assistant bootstrap research: Prescott Valley Garage Door Repair',0,
 null,'(928) 227-2325',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley garage-door discovery candidate. 5372 N Western Blvd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','garage_door','Garage Door Repair','All-AZ-Garage Door Service',
 'https://www.yellowpages.com/prescott-az/garage-doors-openers','yellowpages.com','Current Prescott Valley garage-door discovery candidate. Prescott Valley 86315.','assistant bootstrap research: Prescott Valley Garage Door Repair',0,
 null,'(928) 379-0814',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley garage-door discovery candidate. Prescott Valley 86315."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','garage_door','Garage Door Repair','AZ Garage Doors N More Inc',
 'https://www.yellowpages.com/prescott-az/garage-doors-openers','yellowpages.com','Current Prescott Valley garage-door discovery candidate. 3075 N Date Creek Dr.','assistant bootstrap research: Prescott Valley Garage Door Repair',0,
 null,'(928) 379-3667',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley garage-door discovery candidate. 3075 N Date Creek Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','locksmith_access','Locks & Access Control','Norm''s Lock and Safe',
 'https://www.yellowpages.com/prescott-valley-az/locksmiths','yellowpages.com','Current Prescott Valley locksmith discovery candidate. 8732 E State Route 69.','assistant bootstrap research: Prescott Valley Locks & Access Control',0,
 null,'(928) 775-6827',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley locksmith discovery candidate. 8732 E State Route 69."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','locksmith_access','Locks & Access Control','Ace C & R Solutions LLC',
 'https://www.yellowpages.com/prescott-valley-az/locksmiths','yellowpages.com','Current Prescott Valley locksmith discovery candidate. 6301 N Viewpoint Dr; mobile locksmith/roadside service.','assistant bootstrap research: Prescott Valley Locks & Access Control',0,
 null,'(866) 379-5320',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley locksmith discovery candidate. 6301 N Viewpoint Dr; mobile locksmith/roadside service."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','commercial_cleaning','Commercial Cleaning','4Ever Clean',
 'https://www.yellowpages.com/prescott-valley-az/janitorial-service','yellowpages.com','Current Prescott Valley janitorial discovery candidate. 4330 N Preston Dr.','assistant bootstrap research: Prescott Valley Commercial Cleaning',0,
 null,'(928) 460-1351',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley janitorial discovery candidate. 4330 N Preston Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','commercial_cleaning','Commercial Cleaning','Arizona Premier Carpet Care and Janitorial Services LLC',
 'https://www.yellowpages.com/prescott-valley-az/janitorial-service','yellowpages.com','Current Prescott Valley janitorial discovery candidate. 8866 E Nugget Cir.','assistant bootstrap research: Prescott Valley Commercial Cleaning',0,
 null,'(928) 830-5481',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley janitorial discovery candidate. 8866 E Nugget Cir."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','commercial_cleaning','Commercial Cleaning','MTO Janitorial LLC',
 'https://www.yellowpages.com/prescott-valley-az/janitorial-service','yellowpages.com','Current Prescott Valley janitorial discovery candidate. 5810 Prairie Ln.','assistant bootstrap research: Prescott Valley Commercial Cleaning',0,
 null,'(928) 772-0004',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley janitorial discovery candidate. 5810 Prairie Ln."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','commercial_cleaning','Commercial Cleaning','Perusse Unlimited Cleaning',
 'https://www.yellowpages.com/prescott-valley-az/janitorial-service','yellowpages.com','Current Prescott Valley janitorial discovery candidate. 3000 N Constance Dr.','assistant bootstrap research: Prescott Valley Commercial Cleaning',0,
 null,'(928) 775-5796',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley janitorial discovery candidate. 3000 N Constance Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','commercial_cleaning','Commercial Cleaning','Cintas Facility Services',
 'https://www.yellowpages.com/prescott-valley-az/janitorial-service','yellowpages.com','Current Prescott Valley janitorial discovery candidate. 9467 E Valley Rd.','assistant bootstrap research: Prescott Valley Commercial Cleaning',0,
 null,'(928) 237-2480',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley janitorial discovery candidate. 9467 E Valley Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','towing_roadside','Towing & Roadside Help','P.V. Towing',
 'https://www.yellowpages.com/prescott-valley-az/towing','yellowpages.com','Current Prescott Valley towing/roadside discovery candidate. 8230 E Pecos Dr; 24-hour towing.','assistant bootstrap research: Prescott Valley Towing & Roadside Help',0,
 null,'(928) 759-7878',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley towing/roadside discovery candidate. 8230 E Pecos Dr; 24-hour towing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','towing_roadside','Towing & Roadside Help','I-17 Towing',
 'https://www.yellowpages.com/prescott-valley-az/towing','yellowpages.com','Current Prescott Valley towing/roadside discovery candidate. 8767 E Laredo Dr.','assistant bootstrap research: Prescott Valley Towing & Roadside Help',0,
 null,'(928) 632-5979',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley towing/roadside discovery candidate. 8767 E Laredo Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','towing_roadside','Towing & Roadside Help','Ace C & R Solutions LLC',
 'https://www.yellowpages.com/prescott-valley-az/towing','yellowpages.com','Current Prescott Valley towing/roadside discovery candidate. 6301 N Viewpoint Dr; roadside assistance and locksmith.','assistant bootstrap research: Prescott Valley Towing & Roadside Help',0,
 null,'(866) 379-5320',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Prescott Valley towing/roadside discovery candidate. 6301 N Viewpoint Dr; roadside assistance and locksmith."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','floor_carpet','Floor & Carpet Cleaning','Primera Carpet One Floor & Home',
 'https://www.pvchamber.org/list/ql/business-professional-services-5','pvchamber.org','Prescott Valley Chamber current business member at 7785 E Hwy 69; flooring/floor-care opportunity.','assistant bootstrap research: Prescott Valley Floor & Carpet Cleaning',0,
 null,'(928) 772-6310',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Prescott Valley Chamber current business member at 7785 E Hwy 69; flooring/floor-care opportunity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','facility_maintenance','Building Maintenance Help','Able & Ready Construction',
 'https://www.pvchamber.org/list/ql/business-professional-services-5','pvchamber.org','Prescott Valley Chamber current local contractor/facility-service candidate. 7245 E 2nd St Ste C.','assistant bootstrap research: Prescott Valley Building Maintenance Help',0,
 null,'(928) 775-6178',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Prescott Valley Chamber current local contractor/facility-service candidate. 7245 E 2nd St Ste C."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','facility_maintenance','Building Maintenance Help','Arrow Roofing Inc.',
 'https://www.pvchamber.org/list/ql/business-professional-services-5','pvchamber.org','Prescott Valley Chamber current local contractor/facility-service candidate. 8991 E Valley Rd Unit C.','assistant bootstrap research: Prescott Valley Building Maintenance Help',0,
 null,'(928) 443-8633',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Prescott Valley Chamber current local contractor/facility-service candidate. 8991 E Valley Rd Unit C."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','facility_maintenance','Building Maintenance Help','Badger Roofing',
 'https://www.pvchamber.org/list/ql/business-professional-services-5','pvchamber.org','Prescott Valley Chamber current local contractor/facility-service candidate. 8800 E Long Mesa Dr Ste A.','assistant bootstrap research: Prescott Valley Building Maintenance Help',0,
 null,'(928) 771-8770',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Prescott Valley Chamber current local contractor/facility-service candidate. 8800 E Long Mesa Dr Ste A."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','facility_maintenance','Building Maintenance Help','CertaPro Painters of Northern AZ',
 'https://www.pvchamber.org/list/ql/business-professional-services-5','pvchamber.org','Prescott Valley Chamber current local contractor/facility-service candidate. 8766 E State Route 69 Suite 1.','assistant bootstrap research: Prescott Valley Building Maintenance Help',0,
 null,'(928) 779-3746',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Prescott Valley Chamber current local contractor/facility-service candidate. 8766 E State Route 69 Suite 1."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','facility_maintenance','Building Maintenance Help','Grand Canyon Roofing',
 'https://www.pvchamber.org/list/ql/business-professional-services-5','pvchamber.org','Prescott Valley Chamber current local contractor/facility-service candidate. 8196 E Valley Rd.','assistant bootstrap research: Prescott Valley Building Maintenance Help',0,
 null,'(928) 848-2060',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Prescott Valley Chamber current local contractor/facility-service candidate. 8196 E Valley Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','facility_maintenance','Building Maintenance Help','JD Celayas Painting LLC',
 'https://www.pvchamber.org/list/ql/business-professional-services-5','pvchamber.org','Prescott Valley Chamber current local contractor/facility-service candidate. Prescott Valley.','assistant bootstrap research: Prescott Valley Building Maintenance Help',0,
 null,'(928) 538-8364',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Prescott Valley Chamber current local contractor/facility-service candidate. Prescott Valley."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','facility_maintenance','Building Maintenance Help','Olivas Pro Painting',
 'https://www.pvchamber.org/list/ql/business-professional-services-5','pvchamber.org','Prescott Valley Chamber current local contractor/facility-service candidate. Prescott Valley.','assistant bootstrap research: Prescott Valley Building Maintenance Help',0,
 null,'(928) 458-1196',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Prescott Valley Chamber current local contractor/facility-service candidate. Prescott Valley."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','facility_maintenance','Building Maintenance Help','Pepe''s Painting',
 'https://www.pvchamber.org/list/ql/business-professional-services-5','pvchamber.org','Prescott Valley Chamber current local contractor/facility-service candidate. 8740 N Lawrence Ln.','assistant bootstrap research: Prescott Valley Building Maintenance Help',0,
 null,'(928) 445-7330',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Prescott Valley Chamber current local contractor/facility-service candidate. 8740 N Lawrence Ln."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),
 query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,
 updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','facility_maintenance','Building Maintenance Help','PriorityOne Roofing & Construction',
 'https://www.pvchamber.org/list/ql/business-professional-services-5','pvchamber.org','Prescott Valley Chamber current local contractor/facility-service candidate. 8360 E Pecos Dr Suite B.','assistant bootstrap research: Prescott Valley Building Maintenance Help',0,
 null,'(928) 393-4153',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_02","researched_at":"2026-10-26T23:28:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Prescott Valley Chamber current local contractor/facility-service candidate. 8360 E Pecos Dr Suite B."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
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
), updated_at=now()
where p.market='Prescott Valley';
