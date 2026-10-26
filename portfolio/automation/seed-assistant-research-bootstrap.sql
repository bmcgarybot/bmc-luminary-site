

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


-- Assistant-led Prescott Valley census batch 03 (2026-10-26)
-- Direct-source verification layer for Prescott Valley high-value vendors.
-- Inventory evidence only; preserve closed status and never promote/stage/send.

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Prescott Valley','electrical_service','Electrician','Recovery Electric',
 'https://www.recoveryelectricaz.com/','recoveryelectricaz.com','Official site: Prescott Valley PO Box 25304; residential/commercial/troubleshooting, 24/7 service; licensed/bonded/insured, ROC #349654.','assistant verification research: Prescott Valley Electrician',0,
 'RecoveryElectricAZ@gmail.com','(928) 910-5527',true,'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_03","researched_at":"2026-10-26T23:34:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official site: Prescott Valley PO Box 25304; residential/commercial/troubleshooting, 24/7 service; licensed/bonded/insured, ROC #349654."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,
 source_tier='direct',
 verification_status='direct_evidence',
 last_verified_at=now(),
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
 'https://assuranceelectricalaz.com/','assuranceelectricalaz.com','Official site: 3649 N Mountain View Dr, Prescott Valley; residential/commercial/new construction, 24/7 emergency; ROC #322083.','assistant verification research: Prescott Valley Electrician',0,
 null,'(928) 238-2479',true,'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_03","researched_at":"2026-10-26T23:34:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official site: 3649 N Mountain View Dr, Prescott Valley; residential/commercial/new construction, 24/7 emergency; ROC #322083."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,
 source_tier='direct',
 verification_status='direct_evidence',
 last_verified_at=now(),
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
 'vendor','Prescott Valley','backflow_plumbing','Backflow & Commercial Plumbing','Arizona All Service Plumbing',
 'https://azallserviceplumbing.com/','azallserviceplumbing.com','Official site serves Prescott Valley and Yavapai County; licensed, bonded and insured; emergency repairs, water heaters, sewer/drain and whole-home plumbing.','assistant verification research: Prescott Valley Backflow & Commercial Plumbing',0,
 'support@azallserviceplumbing.com','(928) 925-6809',true,'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_03","researched_at":"2026-10-26T23:34:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official site serves Prescott Valley and Yavapai County; licensed, bonded and insured; emergency repairs, water heaters, sewer/drain and whole-home plumbing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,
 source_tier='direct',
 verification_status='direct_evidence',
 last_verified_at=now(),
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
 'https://www.pvchamber.org/list/member/lawhorn-plumbing-llc-4156','pvchamber.org','Current Chamber member page links the business site and verifies 2700 N Lake Valley Rd Unit G7, all-service residential/commercial plumbing, ROC #342510.','assistant verification research: Prescott Valley Backflow & Commercial Plumbing',0,
 'lawhornplumbing@yahoo.com','(928) 529-7778',true,'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_03","researched_at":"2026-10-26T23:34:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Current Chamber member page links the business site and verifies 2700 N Lake Valley Rd Unit G7, all-service residential/commercial plumbing, ROC #342510."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,
 source_tier='direct',
 verification_status='direct_evidence',
 last_verified_at=now(),
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
 'https://goettlshdm.com/','goettlshdm.com','Official Prescott Valley HVAC/plumbing company founded 1987; 24/7 service; residential/commercial credentials and current Arizona ROC licenses.','assistant verification research: Prescott Valley Heating & Air',0,
 null,'(928) 567-2200',true,'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_03","researched_at":"2026-10-26T23:34:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official Prescott Valley HVAC/plumbing company founded 1987; 24/7 service; residential/commercial credentials and current Arizona ROC licenses."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,
 source_tier='direct',
 verification_status='direct_evidence',
 last_verified_at=now(),
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
 'https://goettlshdm.com/about/business-profile/','goettlshdm.com','Official business profile lists full residential/commercial plumbing, backflow prevention, drain/sewer services and Plumbing ROC #307525.','assistant verification research: Prescott Valley Backflow & Commercial Plumbing',0,
 null,'(928) 567-2200',true,'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_03","researched_at":"2026-10-26T23:34:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official business profile lists full residential/commercial plumbing, backflow prevention, drain/sewer services and Plumbing ROC #307525."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,
 source_tier='direct',
 verification_status='direct_evidence',
 last_verified_at=now(),
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
 'https://indianair.com/','indianair.com','Official site: 8933 E Laredo Dr Suite B, Prescott Valley; full-service licensed HVAC contractor serving homes and businesses since 2000.','assistant verification research: Prescott Valley Heating & Air',0,
 null,'(928) 772-8890',true,'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_03","researched_at":"2026-10-26T23:34:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official site: 8933 E Laredo Dr Suite B, Prescott Valley; full-service licensed HVAC contractor serving homes and businesses since 2000."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,
 source_tier='direct',
 verification_status='direct_evidence',
 last_verified_at=now(),
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
 'https://stellarplumbingaz.com/','stellarplumbingaz.com','Official Prescott Valley plumbing site lists residential/commercial service, backflow testing, drain/sewer, septic, pumps and 24-hour on-call service.','assistant verification research: Prescott Valley Backflow & Commercial Plumbing',0,
 null,'(928) 533-3446',true,'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_03","researched_at":"2026-10-26T23:34:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official Prescott Valley plumbing site lists residential/commercial service, backflow testing, drain/sewer, septic, pumps and 24-hour on-call service."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,
 source_tier='direct',
 verification_status='direct_evidence',
 last_verified_at=now(),
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
 'https://mtojanitorial.com/','mtojanitorial.com','Official site: 5810 Prairie Lane, Prescott Valley; locally owned commercial janitorial provider for medical/industrial, office/commercial and restaurant/event facilities.','assistant verification research: Prescott Valley Commercial Cleaning',0,
 null,'(928) 772-0004',true,'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_03","researched_at":"2026-10-26T23:34:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official site: 5810 Prairie Lane, Prescott Valley; locally owned commercial janitorial provider for medical/industrial, office/commercial and restaurant/event facilities."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,
 source_tier='direct',
 verification_status='direct_evidence',
 last_verified_at=now(),
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
 'vendor','Prescott Valley','locksmith_access','Locks & Access Control','Norm''s Lock & Safe',
 'https://normslock.com/','normslock.com','Official site: 8732 E State Route 69, Prescott Valley; residential, commercial, automotive, access-control and 24-hour emergency locksmith service.','assistant verification research: Prescott Valley Locks & Access Control',0,
 'info@normslock.com','(928) 775-6827',true,'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_03","researched_at":"2026-10-26T23:34:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official site: 8732 E State Route 69, Prescott Valley; residential, commercial, automotive, access-control and 24-hour emergency locksmith service."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,
 source_tier='direct',
 verification_status='direct_evidence',
 last_verified_at=now(),
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
 'https://aandctree.com/','aandctree.com','Official Prescott Valley company site lists tree removal/trimming, stump grinding, brush clearing, commercial service and 24/7 emergency response.','assistant verification research: Prescott Valley Tree Service & Brush Clearing',0,
 'aandcservicesaz@gmail.com','(928) 800-0452',true,'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_03","researched_at":"2026-10-26T23:34:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official Prescott Valley company site lists tree removal/trimming, stump grinding, brush clearing, commercial service and 24/7 emergency response."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,
 source_tier='direct',
 verification_status='direct_evidence',
 last_verified_at=now(),
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
 'vendor','Prescott Valley','landscaping','Landscaping & Yard Cleanup','R.E. and Sons Landscaping',
 'https://www.reandsonslandscaping.com/','reandsonslandscaping.com','Official company site serves Prescott Valley; full landscapes/outdoor construction plus maintenance department; ROC #300642, licensed/bonded/insured.','assistant verification research: Prescott Valley Landscaping & Yard Cleanup',0,
 'info@reandsonslandscaping.com','(928) 533-7425',true,'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_03","researched_at":"2026-10-26T23:34:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official company site serves Prescott Valley; full landscapes/outdoor construction plus maintenance department; ROC #300642, licensed/bonded/insured."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,
 source_tier='direct',
 verification_status='direct_evidence',
 last_verified_at=now(),
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
 'https://nhcdoors.com/','nhcdoors.com','Official local site: 7247 E 1st St, Prescott Valley; residential/commercial garage-door installation, repair, maintenance and 24/7 emergency service; license #316971.','assistant verification research: Prescott Valley Garage Door Repair',0,
 'neumannhcd@hotmail.com','(928) 772-9738',true,'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_03","researched_at":"2026-10-26T23:34:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official local site: 7247 E 1st St, Prescott Valley; residential/commercial garage-door installation, repair, maintenance and 24/7 emergency service; license #316971."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,
 source_tier='direct',
 verification_status='direct_evidence',
 last_verified_at=now(),
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
 'https://hungritegaragedoor.com/prescott-valley-az/','hungritegaragedoor.com','Official Prescott Valley service page and showroom at 8841 E Valley Rd; residential/commercial garage-door repair, installation, opener and spring service.','assistant verification research: Prescott Valley Garage Door Repair',0,
 null,'(928) 775-0701',true,'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_prescott_valley_batch_03","researched_at":"2026-10-26T23:34:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official Prescott Valley service page and showroom at 8841 E Valley Rd; residential/commercial garage-door repair, installation, opener and spring service."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=true,
 source_tier='direct',
 verification_status='direct_evidence',
 last_verified_at=now(),
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


-- Assistant-led Chino Valley census batch 01 (2026-10-26)
-- Broad Chino Valley buyer/facility census researched manually from current local sources.
-- Inventory only; preserve closed status and never promote/stage/send.

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','restaurants','restaurants','Pizza Hut',
 'https://business.chinovalley.org/list/ql/restaurants-food-beverages-22','business.chinovalley.org','Current Chino Valley restaurant candidate. 312 Marketplace.','assistant bootstrap research: Chino Valley restaurants',0,
 null,'(928) 636-6400',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley restaurant candidate. 312 Marketplace."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','restaurants','restaurants','Scooter''s Coffee',
 'https://business.chinovalley.org/list/ql/restaurants-food-beverages-22','business.chinovalley.org','Current Chino Valley restaurant candidate. 78 State Hwy 89.','assistant bootstrap research: Chino Valley restaurants',0,
 null,'(928) 515-8833',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley restaurant candidate. 78 State Hwy 89."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','restaurants','restaurants','Up In Smoke Bar-B-Que',
 'https://business.chinovalley.org/list/ql/restaurants-food-beverages-22','business.chinovalley.org','Current Chino Valley restaurant candidate. 380 W Butterfield Rd.','assistant bootstrap research: Chino Valley restaurants',0,
 null,'(928) 515-2344',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley restaurant candidate. 380 W Butterfield Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','restaurants','restaurants','Arturo''s Mexican Restaurant',
 'https://business.chinovalley.org/list/ql/restaurants-food-beverages-22','business.chinovalley.org','Current Chino Valley restaurant candidate. 900 S Hwy 89.','assistant bootstrap research: Chino Valley restaurants',0,
 null,'(928) 636-0221',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley restaurant candidate. 900 S Hwy 89."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','restaurants','restaurants','PepperJacks',
 'https://business.chinovalley.org/list/ql/restaurants-food-beverages-22','business.chinovalley.org','Current Chino Valley restaurant candidate. 289 S State Route 89.','assistant bootstrap research: Chino Valley restaurants',0,
 null,'(928) 636-5552',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley restaurant candidate. 289 S State Route 89."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','restaurants','restaurants','Essence Kitchen + Bar',
 'https://business.chinovalley.org/list/ql/restaurants-food-beverages-22','business.chinovalley.org','Current Chino Valley restaurant candidate. 1021 Hwy 89 Suite 104.','assistant bootstrap research: Chino Valley restaurants',0,
 null,'(928) 925-3888',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley restaurant candidate. 1021 Hwy 89 Suite 104."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','restaurants','restaurants','El Paraiso Mexican-Italian Restaurant',
 'https://business.chinovalley.org/list/ql/restaurants-food-beverages-22','business.chinovalley.org','Current Chino Valley restaurant candidate. 1150 State Rte 89.','assistant bootstrap research: Chino Valley restaurants',0,
 null,'(928) 636-4060',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley restaurant candidate. 1150 State Rte 89."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','restaurants','restaurants','Skillets Cafe',
 'https://business.chinovalley.org/list/ql/restaurants-food-beverages-22','business.chinovalley.org','Current Chino Valley restaurant candidate. 990 AZ-89.','assistant bootstrap research: Chino Valley restaurants',0,
 null,'(928) 237-5235',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley restaurant candidate. 990 AZ-89."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','restaurants','restaurants','Casa Grande Mexican Restaurant',
 'https://business.chinovalley.org/list/ql/restaurants-food-beverages-22','business.chinovalley.org','Current Chino Valley restaurant candidate. 443 W Butterfield Rd.','assistant bootstrap research: Chino Valley restaurants',0,
 null,'(928) 636-7275',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley restaurant candidate. 443 W Butterfield Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','restaurants','restaurants','Insurgent Brewing',
 'https://business.chinovalley.org/list/ql/restaurants-food-beverages-22','business.chinovalley.org','Current Chino Valley restaurant candidate. 990 N Hwy 89 Suite D.','assistant bootstrap research: Chino Valley restaurants',0,
 null,'(928) 925-4773',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley restaurant candidate. 990 N Hwy 89 Suite D."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','retail','retail stores shopping stores','Sew-n-Sew Fabric, Notions & More',
 'https://business.chinovalley.org/list/category/retail-sales-131','business.chinovalley.org','Current Chino Valley Chamber retail member. 1120 S Hwy 89 Suite E.','assistant bootstrap research: Chino Valley retail stores shopping stores',0,
 null,'(928) 636-3769',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley Chamber retail member. 1120 S Hwy 89 Suite E."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','retail','retail stores shopping stores','Michele''s Kustom Kreations LLC',
 'https://business.chinovalley.org/list/category/retail-sales-131','business.chinovalley.org','Current Chino Valley Chamber retail member. 2515 N Hopi Ln.','assistant bootstrap research: Chino Valley retail stores shopping stores',0,
 null,'(928) 642-3363',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley Chamber retail member. 2515 N Hopi Ln."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','retail','retail stores shopping stores','Wild Sage Antiques & Boutique',
 'https://business.chinovalley.org/list/category/retail-sales-131','business.chinovalley.org','Current Chino Valley Chamber retail member. 378 State Route 89.','assistant bootstrap research: Chino Valley retail stores shopping stores',0,
 null,'(928) 910-9341',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley Chamber retail member. 378 State Route 89."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','retail','retail stores shopping stores','Mary''s Cozy Home Furnishings',
 'https://business.chinovalley.org/list/category/retail-sales-131','business.chinovalley.org','Current Chino Valley Chamber retail member. 1299 N AZ-89.','assistant bootstrap research: Chino Valley retail stores shopping stores',0,
 null,'(928) 636-7473',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley Chamber retail member. 1299 N AZ-89."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','retail','retail stores shopping stores','Ace Hardware - Chino Valley',
 'https://business.chinovalley.org/list/category/retail-sales-131','business.chinovalley.org','Current Chino Valley Chamber retail member. 1395 S AZ Hwy 89.','assistant bootstrap research: Chino Valley retail stores shopping stores',0,
 null,'(928) 636-4401',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley Chamber retail member. 1395 S AZ Hwy 89."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','retail','retail stores shopping stores','Liquor Barn, CV',
 'https://business.chinovalley.org/list/category/retail-sales-131','business.chinovalley.org','Current Chino Valley Chamber retail member. 315 Business Park Dr.','assistant bootstrap research: Chino Valley retail stores shopping stores',0,
 null,'(928) 636-2989',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley Chamber retail member. 315 Business Park Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','retail','retail stores shopping stores','Open Hands Bargain Store',
 'https://business.chinovalley.org/list/category/retail-sales-131','business.chinovalley.org','Current Chino Valley Chamber retail member. 391 Butterfield Rd.','assistant bootstrap research: Chino Valley retail stores shopping stores',0,
 null,'(928) 202-9112',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley Chamber retail member. 391 Butterfield Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','retail','retail stores shopping stores','The Pea Vine',
 'https://business.chinovalley.org/list/category/retail-sales-131','business.chinovalley.org','Current Chino Valley Chamber retail member. 400 W Butterfield Rd.','assistant bootstrap research: Chino Valley retail stores shopping stores',0,
 null,'(928) 710-9509',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley Chamber retail member. 400 W Butterfield Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','grocery','grocery stores supermarkets markets','Safeway',
 'https://www.chamberofcommerce.com/business-directory/arizona/chino-valley/','chamberofcommerce.com','Current Chino Valley business directory lists full-service Safeway at 1031 N US Hwy 89.','assistant bootstrap research: Chino Valley grocery stores supermarkets markets',0,
 null,'(928) 636-8358',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley business directory lists full-service Safeway at 1031 N US Hwy 89."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','grocery','grocery stores supermarkets markets','Healthy Essentials LLC',
 'https://business.chinovalley.org/members/member/healthy-essentials-llc-1704','business.chinovalley.org','Current Chamber member at 2235 S Highway 89 Suite B2-4; health food, bulk food, grocery and supplements.','assistant bootstrap research: Chino Valley grocery stores supermarkets markets',0,
 null,'(928) 255-4474',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber member at 2235 S Highway 89 Suite B2-4; health food, bulk food, grocery and supplements."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','pharmacies','pharmacies drug stores','Safeway Pharmacy',
 'https://www.chamberofcommerce.com/business-directory/arizona/chino-valley/','chamberofcommerce.com','Current Chino Valley business directory lists Safeway Pharmacy at 1031 N US Hwy 89.','assistant bootstrap research: Chino Valley pharmacies drug stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley business directory lists Safeway Pharmacy at 1031 N US Hwy 89."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','hotels_motels','hotels motels lodging','Days Inn Chino Valley',
 'https://business.chinovalley.org/members/category/hotels-motels-resorts-79','business.chinovalley.org','Current Chino Valley Chamber lodging member. 688 Fletcher Ct.','assistant bootstrap research: Chino Valley hotels motels lodging',0,
 null,'(928) 636-0311',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley Chamber lodging member. 688 Fletcher Ct."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','hotels_motels','hotels motels lodging','Primrose Inn & Suites',
 'https://business.chinovalley.org/members/category/hotels-motels-resorts-79','business.chinovalley.org','Current Chino Valley Chamber lodging member. 1304 State Highway 89.','assistant bootstrap research: Chino Valley hotels motels lodging',0,
 null,'(928) 636-2894',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley Chamber lodging member. 1304 State Highway 89."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','schools','schools charter schools private schools','Territorial Early Childhood Center',
 'https://www.chinovalleyschools.com/','chinovalleyschools.com','Official CVUSD preschool through grade 2 campus.','assistant bootstrap research: Chino Valley schools charter schools private schools',0,
 null,null,true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official CVUSD preschool through grade 2 campus."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','schools','schools charter schools private schools','Del Rio Elementary School',
 'https://www.chinovalleyschools.com/','chinovalleyschools.com','1036 N Rd 1 West; grades 3-6.','assistant bootstrap research: Chino Valley schools charter schools private schools',0,
 null,'(928) 636-4414',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"1036 N Rd 1 West; grades 3-6."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','schools','schools charter schools private schools','Heritage Middle School',
 'https://www.chinovalleyschools.com/','chinovalleyschools.com','1076 N Rd 1 West; grades 7-8.','assistant bootstrap research: Chino Valley schools charter schools private schools',0,
 null,'(928) 636-4464',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"1076 N Rd 1 West; grades 7-8."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','schools','schools charter schools private schools','Chino Valley High School',
 'https://www.chinovalleyschools.com/','chinovalleyschools.com','760 E Center St; grades 9-12.','assistant bootstrap research: Chino Valley schools charter schools private schools',0,
 null,'(928) 636-2298',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"760 E Center St; grades 9-12."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','churches','churches worship centers','Saving Grace Lutheran Church',
 'https://business.chinovalley.org/list/ql/religious-organizations-21','business.chinovalley.org','Current Chino Valley Chamber religious organization. 440 W Palomino Rd.','assistant bootstrap research: Chino Valley churches worship centers',0,
 null,'(928) 910-1909',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley Chamber religious organization. 440 W Palomino Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','churches','churches worship centers','Chino Valley Community Church',
 'https://business.chinovalley.org/list/ql/religious-organizations-21','business.chinovalley.org','Current Chino Valley Chamber religious organization. 1969 N Highway 89.','assistant bootstrap research: Chino Valley churches worship centers',0,
 null,'(928) 636-4184',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley Chamber religious organization. 1969 N Highway 89."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','churches','churches worship centers','Grace Church',
 'https://business.chinovalley.org/list/ql/religious-organizations-21','business.chinovalley.org','Current Chino Valley Chamber religious organization. 2010 S State Route 89.','assistant bootstrap research: Chino Valley churches worship centers',0,
 null,'(928) 636-2949',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley Chamber religious organization. 2010 S State Route 89."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','churches','churches worship centers','Chino Valley United Methodist Church',
 'https://business.chinovalley.org/list/ql/religious-organizations-21','business.chinovalley.org','Current Chino Valley Chamber religious organization. 735 E Road 1 South.','assistant bootstrap research: Chino Valley churches worship centers',0,
 null,'(928) 636-2969',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley Chamber religious organization. 735 E Road 1 South."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','churches','churches worship centers','The Garchen Buddhist Institute',
 'https://business.chinovalley.org/list/ql/religious-organizations-21','business.chinovalley.org','Current Chino Valley Chamber religious organization. 9995 E Blissful Path.','assistant bootstrap research: Chino Valley churches worship centers',0,
 null,'(928) 925-1237',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley Chamber religious organization. 9995 E Blissful Path."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','medical_centers','hospitals medical centers clinics','Malin Medical',
 'https://business.chinovalley.org/list/ql/health-care-11.htm','business.chinovalley.org','Current Chino Valley health-care candidate. 1780 N AZ Hwy 89.','assistant bootstrap research: Chino Valley hospitals medical centers clinics',0,
 null,'(928) 460-5214',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley health-care candidate. 1780 N AZ Hwy 89."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','dental','dentists dental offices orthodontists','Granite View Dental',
 'https://business.chinovalley.org/list/ql/health-care-11.htm','business.chinovalley.org','Current Chino Valley health-care candidate. 1260 S State Route 89 Suite G.','assistant bootstrap research: Chino Valley dentists dental offices orthodontists',0,
 null,'(928) 237-1305',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley health-care candidate. 1260 S State Route 89 Suite G."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','therapy_behavioral','therapy counseling behavioral health clinics','Polara Health',
 'https://business.chinovalley.org/list/ql/health-care-11.htm','business.chinovalley.org','Current Chino Valley health-care candidate. 555 W Road 3 N.','assistant bootstrap research: Chino Valley therapy counseling behavioral health clinics',0,
 null,'(928) 445-5211',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley health-care candidate. 555 W Road 3 N."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','medical_centers','hospitals medical centers clinics','Medical 360',
 'https://business.chinovalley.org/list/ql/health-care-11.htm','business.chinovalley.org','Current Chino Valley health-care candidate. 87 S State Hwy 89.','assistant bootstrap research: Chino Valley hospitals medical centers clinics',0,
 null,'(928) 404-1488',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley health-care candidate. 87 S State Hwy 89."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','medical_centers','hospitals medical centers clinics','Copper Coyote Aesthetics & Health',
 'https://business.chinovalley.org/list/ql/health-care-11.htm','business.chinovalley.org','Current Chino Valley health-care candidate. 1174 S SR 89 Suite 2.','assistant bootstrap research: Chino Valley hospitals medical centers clinics',0,
 null,'(928) 710-0405',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley health-care candidate. 1174 S SR 89 Suite 2."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','medical_centers','hospitals medical centers clinics','Life Pregnancy Center',
 'https://business.chinovalley.org/list/ql/health-care-11.htm','business.chinovalley.org','Current Chino Valley health-care candidate. 448 N Highway 89 Suite C.','assistant bootstrap research: Chino Valley hospitals medical centers clinics',0,
 null,'(928) 636-5025',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley health-care candidate. 448 N Highway 89 Suite C."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','dental','dentists dental offices orthodontists','Chino Valley Family Dental',
 'https://business.chinovalley.org/list/ql/health-care-11.htm','business.chinovalley.org','Current Chino Valley health-care candidate. 328 Business Park Dr.','assistant bootstrap research: Chino Valley dentists dental offices orthodontists',0,
 null,'(928) 636-6872',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley health-care candidate. 328 Business Park Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','therapy_behavioral','therapy counseling behavioral health clinics','Rise Canyon Ranch',
 'https://business.chinovalley.org/list/ql/health-care-11.htm','business.chinovalley.org','Current Chino Valley health-care candidate. 1021 N State Rte 89 #141.','assistant bootstrap research: Chino Valley therapy counseling behavioral health clinics',0,
 null,'(928) 288-0780',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley health-care candidate. 1021 N State Rte 89 #141."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','medical_centers','hospitals medical centers clinics','Bowen Chiropractic Center',
 'https://business.chinovalley.org/list/ql/health-care-11.htm','business.chinovalley.org','Current Chino Valley health-care candidate. 794 S State Route 89.','assistant bootstrap research: Chino Valley hospitals medical centers clinics',0,
 null,'(928) 636-7682',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley health-care candidate. 794 S State Route 89."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','medical_centers','hospitals medical centers clinics','Anita Demello',
 'https://business.chinovalley.org/list/ql/health-care-11.htm','business.chinovalley.org','Current Chino Valley health-care candidate. 181 Sycamore Vista.','assistant bootstrap research: Chino Valley hospitals medical centers clinics',0,
 null,'(928) 227-2798',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley health-care candidate. 181 Sycamore Vista."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','therapy_behavioral','therapy counseling behavioral health clinics','Lower22vets',
 'https://business.chinovalley.org/list/ql/health-care-11.htm','business.chinovalley.org','Current Chino Valley health-care candidate. PO Box 484, Chino Valley.','assistant bootstrap research: Chino Valley therapy counseling behavioral health clinics',0,
 null,'(928) 350-7062',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley health-care candidate. PO Box 484, Chino Valley."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','medical_centers','hospitals medical centers clinics','Optima Medical - Chino Valley',
 'https://business.chinovalley.org/list/ql/health-care-11.htm','business.chinovalley.org','Current Chino Valley health-care candidate. 87 State Rte 89.','assistant bootstrap research: Chino Valley hospitals medical centers clinics',0,
 null,'(928) 404-1488',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley health-care candidate. 87 State Rte 89."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','dental','dentists dental offices orthodontists','Horizon Dental of Chino Valley',
 'https://business.chinovalley.org/list/ql/health-care-11.htm','business.chinovalley.org','Current Chino Valley health-care candidate. 432 W Butterfield Rd.','assistant bootstrap research: Chino Valley dentists dental offices orthodontists',0,
 null,'(928) 636-1565',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley health-care candidate. 432 W Butterfield Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','property_management','property management companies apartment communities','Country West Mobile Home Park',
 'https://business.chinovalley.org/list/ql/real-estate-moving-storage-20','business.chinovalley.org','Current Chino Valley Chamber real-estate/property candidate. 853 N Highway 89.','assistant bootstrap research: Chino Valley property management companies apartment communities',0,
 null,'(928) 636-2000',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley Chamber real-estate/property candidate. 853 N Highway 89."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','property_management','property management companies apartment communities','Mountain Lake Realty',
 'https://business.chinovalley.org/list/ql/real-estate-moving-storage-20','business.chinovalley.org','Current Chino Valley Chamber real-estate/property candidate. 1600 W Marshall Way.','assistant bootstrap research: Chino Valley property management companies apartment communities',0,
 null,'(602) 888-7073',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley Chamber real-estate/property candidate. 1600 W Marshall Way."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','property_management','property management companies apartment communities','Realty One Group Mountain Desert',
 'https://business.chinovalley.org/list/ql/real-estate-moving-storage-20','business.chinovalley.org','Current Chino Valley Chamber real-estate/property candidate. 1689 S State Route 89.','assistant bootstrap research: Chino Valley property management companies apartment communities',0,
 null,'(928) 445-2600',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley Chamber real-estate/property candidate. 1689 S State Route 89."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','property_management','property management companies apartment communities','KMF Real Estate',
 'https://business.chinovalley.org/list/ql/real-estate-moving-storage-20','business.chinovalley.org','Current Chino Valley Chamber real-estate/property candidate. 1689 S State Route 89.','assistant bootstrap research: Chino Valley property management companies apartment communities',0,
 null,'(602) 999-7223',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley Chamber real-estate/property candidate. 1689 S State Route 89."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','property_management','property management companies apartment communities','Cindy Horton - Coldwell Banker Northland',
 'https://business.chinovalley.org/list/ql/real-estate-moving-storage-20','business.chinovalley.org','Current Chino Valley Chamber real-estate/property candidate. 4101 W Road 4 N.','assistant bootstrap research: Chino Valley property management companies apartment communities',0,
 null,'(928) 356-8276',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley Chamber real-estate/property candidate. 4101 W Road 4 N."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','property_management','property management companies apartment communities','G&M Premier Real Estate',
 'https://business.chinovalley.org/list/ql/real-estate-moving-storage-20','business.chinovalley.org','Current Chino Valley Chamber real-estate/property candidate. 156 Heidi Ln.','assistant bootstrap research: Chino Valley property management companies apartment communities',0,
 null,'(928) 533-3135',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley Chamber real-estate/property candidate. 156 Heidi Ln."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','property_management','property management companies apartment communities','Oakwood Homes',
 'https://business.chinovalley.org/list/ql/real-estate-moving-storage-20','business.chinovalley.org','Current Chino Valley Chamber real-estate/property candidate. 3280 N State Route 89.','assistant bootstrap research: Chino Valley property management companies apartment communities',0,
 null,'(928) 636-9000',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley Chamber real-estate/property candidate. 3280 N State Route 89."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','property_management','property management companies apartment communities','Granillos Mobile Home Service',
 'https://business.chinovalley.org/list/ql/real-estate-moving-storage-20','business.chinovalley.org','Current Chino Valley Chamber real-estate/property candidate. 150 S Rd 1 East.','assistant bootstrap research: Chino Valley property management companies apartment communities',0,
 null,'(928) 636-5330',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley Chamber real-estate/property candidate. 150 S Rd 1 East."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','property_management','property management companies apartment communities','Heather Wherley and Your Home Team',
 'https://business.chinovalley.org/list/ql/real-estate-moving-storage-20','business.chinovalley.org','Current Chino Valley Chamber real-estate/property candidate. 182 Chino Dr.','assistant bootstrap research: Chino Valley property management companies apartment communities',0,
 null,'(928) 830-2950',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley Chamber real-estate/property candidate. 182 Chino Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','property_management','property management companies apartment communities','Yavapai Title Agency',
 'https://business.chinovalley.org/list/ql/real-estate-moving-storage-20','business.chinovalley.org','Current Chino Valley Chamber real-estate/property candidate. 980 N State Route 89.','assistant bootstrap research: Chino Valley property management companies apartment communities',0,
 null,'(928) 636-0899',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley Chamber real-estate/property candidate. 980 N State Route 89."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','property_management','property management companies apartment communities','iRealty Professionals',
 'https://business.chinovalley.org/list/ql/real-estate-moving-storage-20','business.chinovalley.org','Current Chino Valley Chamber real-estate/property candidate. 140 N Hwy 89.','assistant bootstrap research: Chino Valley property management companies apartment communities',0,
 null,'(760) 219-4433',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley Chamber real-estate/property candidate. 140 N Hwy 89."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','property_management','property management companies apartment communities','Cindy Lee Davies - Clark Realty Homes & Land',
 'https://business.chinovalley.org/list/ql/real-estate-moving-storage-20','business.chinovalley.org','Current Chino Valley Chamber real-estate/property candidate. 154 Heidi Ln.','assistant bootstrap research: Chino Valley property management companies apartment communities',0,
 null,'(928) 533-3176',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley Chamber real-estate/property candidate. 154 Heidi Ln."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','property_management','property management companies apartment communities','Clayton Homes',
 'https://business.chinovalley.org/list/ql/real-estate-moving-storage-20','business.chinovalley.org','Current Chino Valley Chamber real-estate/property candidate. 325 W Industrial Dr.','assistant bootstrap research: Chino Valley property management companies apartment communities',0,
 null,'(928) 636-9843',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley Chamber real-estate/property candidate. 325 W Industrial Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','property_management','property management companies apartment communities','Holliday Properties & Development',
 'https://business.chinovalley.org/list/ql/real-estate-moving-storage-20','business.chinovalley.org','Current Chino Valley Chamber real-estate/property candidate. 860 W Road 1 South Suite C.','assistant bootstrap research: Chino Valley property management companies apartment communities',0,
 null,'(928) 636-5503',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley Chamber real-estate/property candidate. 860 W Road 1 South Suite C."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','warehouses_industrial','warehouses industrial businesses distribution centers','860 Staley Lane Storage',
 'https://business.chinovalley.org/list/category/storage-self-service-148','business.chinovalley.org','Current Chino Valley storage facility. 860 Staley Lane.','assistant bootstrap research: Chino Valley warehouses industrial businesses distribution centers',0,
 null,'(805) 829-2336',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley storage facility. 860 Staley Lane."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','warehouses_industrial','warehouses industrial businesses distribution centers','STORAGExperts at Chino Valley',
 'https://business.chinovalley.org/list/category/storage-self-service-148','business.chinovalley.org','Current Chino Valley storage facility. 1272 N Hwy 89.','assistant bootstrap research: Chino Valley warehouses industrial businesses distribution centers',0,
 null,'(928) 636-5547',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley storage facility. 1272 N Hwy 89."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','warehouses_industrial','warehouses industrial businesses distribution centers','Budget Mini Storage',
 'https://business.chinovalley.org/list/category/storage-self-service-148','business.chinovalley.org','Current Chino Valley storage facility. 496 W Center St.','assistant bootstrap research: Chino Valley warehouses industrial businesses distribution centers',0,
 null,'(928) 636-2010',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley storage facility. 496 W Center St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','warehouses_industrial','warehouses industrial businesses distribution centers','High Plains Storage',
 'https://business.chinovalley.org/list/category/storage-self-service-148','business.chinovalley.org','Current Chino Valley storage facility. 975 E Road 4-1/2 South.','assistant bootstrap research: Chino Valley warehouses industrial businesses distribution centers',0,
 null,'(928) 800-1021',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley storage facility. 975 E Road 4-1/2 South."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','warehouses_industrial','warehouses industrial businesses distribution centers','Infinity Storage Space',
 'https://business.chinovalley.org/list/category/storage-self-service-148','business.chinovalley.org','Current Chino Valley storage facility. 2369 State Highway 89.','assistant bootstrap research: Chino Valley warehouses industrial businesses distribution centers',0,
 null,'(917) 575-7000',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley storage facility. 2369 State Highway 89."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','insurance_professional','insurance agents professional offices','OneAZ Credit Union CV',
 'https://business.chinovalley.org/members/ql/finance-insurance-10','business.chinovalley.org','Current Chino Valley finance/insurance candidate. 1021 N Highway 89 Suite 106.','assistant bootstrap research: Chino Valley insurance agents professional offices',0,
 null,'(928) 777-6000',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley finance/insurance candidate. 1021 N Highway 89 Suite 106."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','insurance_professional','insurance agents professional offices','American Family Insurance - Leah McLemore',
 'https://business.chinovalley.org/members/ql/finance-insurance-10','business.chinovalley.org','Current Chino Valley finance/insurance candidate. 1578 N Hwy 89 #3.','assistant bootstrap research: Chino Valley insurance agents professional offices',0,
 null,'(928) 636-8593',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley finance/insurance candidate. 1578 N Hwy 89 #3."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','insurance_professional','insurance agents professional offices','Loan Factory',
 'https://business.chinovalley.org/members/ql/finance-insurance-10','business.chinovalley.org','Current Chino Valley finance/insurance candidate. Chino Valley.','assistant bootstrap research: Chino Valley insurance agents professional offices',0,
 null,'(520) 477-6789',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley finance/insurance candidate. Chino Valley."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','insurance_professional','insurance agents professional offices','National Bank of Arizona',
 'https://business.chinovalley.org/members/ql/finance-insurance-10','business.chinovalley.org','Current Chino Valley finance/insurance candidate. 481 State Highway 89.','assistant bootstrap research: Chino Valley insurance agents professional offices',0,
 null,'(928) 636-4466',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley finance/insurance candidate. 481 State Highway 89."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','insurance_professional','insurance agents professional offices','Farmers Insurance - Jeffrey Champ',
 'https://business.chinovalley.org/members/ql/finance-insurance-10','business.chinovalley.org','Current Chino Valley finance/insurance candidate. 1496 AZ-89.','assistant bootstrap research: Chino Valley insurance agents professional offices',0,
 null,'(928) 636-2700',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley finance/insurance candidate. 1496 AZ-89."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','insurance_professional','insurance agents professional offices','Penny Hubble - State Farm',
 'https://business.chinovalley.org/members/ql/finance-insurance-10','business.chinovalley.org','Current Chino Valley finance/insurance candidate. 360 AZ-89 B.','assistant bootstrap research: Chino Valley insurance agents professional offices',0,
 null,'(928) 636-3377',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley finance/insurance candidate. 360 AZ-89 B."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','insurance_professional','insurance agents professional offices','LRG Agency LLC American Family Insurance',
 'https://business.chinovalley.org/members/ql/finance-insurance-10','business.chinovalley.org','Current Chino Valley finance/insurance candidate. 1578 AZ-89 Ste 3.','assistant bootstrap research: Chino Valley insurance agents professional offices',0,
 null,'(928) 636-8593',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley finance/insurance candidate. 1578 AZ-89 Ste 3."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','insurance_professional','insurance agents professional offices','Patti McCormick Insurance',
 'https://business.chinovalley.org/members/ql/finance-insurance-10','business.chinovalley.org','Current Chino Valley finance/insurance candidate. 743 B E Rd 2 N.','assistant bootstrap research: Chino Valley insurance agents professional offices',0,
 null,'(928) 636-1300',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley finance/insurance candidate. 743 B E Rd 2 N."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','general_business','other local businesses','Affordable Auto Repair',
 'https://www.chamberofcommerce.com/business-directory/arizona/chino-valley/','chamberofcommerce.com','Current Chino Valley automotive/equipment business. 2805 N Highway 89 Unit A.','assistant bootstrap research: Chino Valley other local businesses',0,
 null,'(928) 251-3551',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley automotive/equipment business. 2805 N Highway 89 Unit A."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','general_business','other local businesses','Dans Affordable Auto Repair LLC',
 'https://www.chamberofcommerce.com/business-directory/arizona/chino-valley/','chamberofcommerce.com','Current Chino Valley automotive/equipment business. 2805 N Highway 89 Unit A.','assistant bootstrap research: Chino Valley other local businesses',0,
 null,'(928) 227-0561',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley automotive/equipment business. 2805 N Highway 89 Unit A."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','general_business','other local businesses','Morrison Motors',
 'https://www.chamberofcommerce.com/business-directory/arizona/chino-valley/','chamberofcommerce.com','Current Chino Valley automotive/equipment business. 3555 State Highway 89.','assistant bootstrap research: Chino Valley other local businesses',0,
 null,'(928) 636-7877',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley automotive/equipment business. 3555 State Highway 89."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','general_business','other local businesses','Alvarez Tire',
 'https://www.chamberofcommerce.com/business-directory/arizona/chino-valley/','chamberofcommerce.com','Current Chino Valley automotive/equipment business. 1574 S AZ-89.','assistant bootstrap research: Chino Valley other local businesses',0,
 null,'(928) 636-1771',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley automotive/equipment business. 1574 S AZ-89."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','general_business','other local businesses','Bruno Auto Glass',
 'https://www.chamberofcommerce.com/business-directory/arizona/chino-valley/','chamberofcommerce.com','Current Chino Valley automotive/equipment business. 1962 AZ-89 Suite D.','assistant bootstrap research: Chino Valley other local businesses',0,
 null,'(928) 460-9388',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley automotive/equipment business. 1962 AZ-89 Suite D."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','general_business','other local businesses','3C''s Automotive Fleet Repair LLC',
 'https://www.chamberofcommerce.com/business-directory/arizona/chino-valley/','chamberofcommerce.com','Current Chino Valley automotive/equipment business. 3699 State Highway 89.','assistant bootstrap research: Chino Valley other local businesses',0,
 null,'(928) 641-8353',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley automotive/equipment business. 3699 State Highway 89."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','general_business','other local businesses','AutoZone Auto Parts',
 'https://www.chamberofcommerce.com/business-directory/arizona/chino-valley/','chamberofcommerce.com','Current Chino Valley automotive/equipment business. 1940 N US Hwy 89.','assistant bootstrap research: Chino Valley other local businesses',0,
 null,'(928) 636-0036',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley automotive/equipment business. 1940 N US Hwy 89."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','general_business','other local businesses','Blowing Diesel Designs',
 'https://www.chamberofcommerce.com/business-directory/arizona/chino-valley/','chamberofcommerce.com','Current Chino Valley automotive/equipment business. 3627 AZ-89 Unit C.','assistant bootstrap research: Chino Valley other local businesses',0,
 null,'(928) 389-5900',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley automotive/equipment business. 3627 AZ-89 Unit C."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','general_business','other local businesses','Chino Valley Auto Spa',
 'https://www.chamberofcommerce.com/business-directory/arizona/chino-valley/','chamberofcommerce.com','Current Chino Valley automotive/equipment business. 820 E Rd 2 N.','assistant bootstrap research: Chino Valley other local businesses',0,
 null,'(928) 485-1910',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley automotive/equipment business. 820 E Rd 2 N."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','general_business','other local businesses','Bob''s Complete Automotive Repair',
 'https://www.chamberofcommerce.com/business-directory/arizona/chino-valley/','chamberofcommerce.com','Current Chino Valley automotive/equipment business. 1080 S State Route 89.','assistant bootstrap research: Chino Valley other local businesses',0,
 null,'(928) 636-2628',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley automotive/equipment business. 1080 S State Route 89."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','general_business','other local businesses','NAPA Auto Parts - Grand Canyon Auto Supply',
 'https://www.chamberofcommerce.com/business-directory/arizona/chino-valley/','chamberofcommerce.com','Current Chino Valley automotive/equipment business. 991 SR-89.','assistant bootstrap research: Chino Valley other local businesses',0,
 null,'(928) 470-6272',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley automotive/equipment business. 991 SR-89."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','general_business','other local businesses','Chino Rentals',
 'https://www.chamberofcommerce.com/business-directory/arizona/chino-valley/','chamberofcommerce.com','Current Chino Valley automotive/equipment business. 1181 N State Route 89.','assistant bootstrap research: Chino Valley other local businesses',0,
 null,'(928) 636-2026',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley automotive/equipment business. 1181 N State Route 89."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','general_business','other local businesses','Chino Valley Food Bank',
 'https://business.chinovalley.org/members/searchalpha/c','business.chinovalley.org','Current Chino Valley community/business organization. 840 E Road 1 South.','assistant bootstrap research: Chino Valley other local businesses',0,
 null,'(928) 636-8478',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley community/business organization. 840 E Road 1 South."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','general_business','other local businesses','Chino Valley Elks Lodge 2842',
 'https://business.chinovalley.org/members/searchalpha/c','business.chinovalley.org','Current Chino Valley community/business organization. 1021 W Butterfield Rd.','assistant bootstrap research: Chino Valley other local businesses',0,
 null,'(818) 388-8942',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley community/business organization. 1021 W Butterfield Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','general_business','other local businesses','Chino Valley Equestrian Association',
 'https://business.chinovalley.org/members/searchalpha/c','business.chinovalley.org','Current Chino Valley community/business organization. PO Box 381.','assistant bootstrap research: Chino Valley other local businesses',0,
 null,'(928) 266-2877',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley community/business organization. PO Box 381."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','general_business','other local businesses','Chino Valley Funeral Home',
 'https://business.chinovalley.org/members/searchalpha/c','business.chinovalley.org','Current Chino Valley community/business organization. 480 W Palomino Rd.','assistant bootstrap research: Chino Valley other local businesses',0,
 null,'(928) 636-8225',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley community/business organization. 480 W Palomino Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Chino Valley','general_business','other local businesses','Chino Valley Area Chamber of Commerce',
 'https://business.chinovalley.org/members/searchalpha/c','business.chinovalley.org','Current Chino Valley community/business organization. 199 N AZ Hwy 89.','assistant bootstrap research: Chino Valley other local businesses',0,
 null,'(928) 636-2493',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_01","researched_at":"2026-10-26T23:43:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley community/business organization. 199 N AZ Hwy 89."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
), updated_at=now()
where p.market='Chino Valley';


-- Assistant-led Chino Valley census batch 02 (2026-10-26)
-- Broad Chino Valley vendor/trade census researched manually from current local sources.
-- Discovery inventory only; preserve closed status and never promote/stage/send.

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Chino Valley','backflow_plumbing','Backflow & Commercial Plumbing','Alphabet Plumbing & Rooter Inc',
 'https://www.yellowpages.com/chino-valley-az/plumbers','yellowpages.com','Current Chino Valley plumbing discovery candidate. 182 S Chino Dr.','assistant bootstrap research: Chino Valley Backflow & Commercial Plumbing',0,
 null,'(928) 778-3772',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley plumbing discovery candidate. 182 S Chino Dr."}'::jsonb
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
 'vendor','Chino Valley','backflow_plumbing','Backflow & Commercial Plumbing','Big Sky Plumbing Inc',
 'https://www.yellowpages.com/chino-valley-az/plumbers','yellowpages.com','Current Chino Valley plumbing discovery candidate. 747 W Livernois Way.','assistant bootstrap research: Chino Valley Backflow & Commercial Plumbing',0,
 null,'(928) 636-7370',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley plumbing discovery candidate. 747 W Livernois Way."}'::jsonb
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
 'vendor','Chino Valley','backflow_plumbing','Backflow & Commercial Plumbing','WIHN Services Plumbing',
 'https://www.yellowpages.com/chino-valley-az/plumbers','yellowpages.com','Current Chino Valley plumbing discovery candidate. 1420 S Table Mountain Rd.','assistant bootstrap research: Chino Valley Backflow & Commercial Plumbing',0,
 null,'(928) 636-5405',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley plumbing discovery candidate. 1420 S Table Mountain Rd."}'::jsonb
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
 'vendor','Chino Valley','backflow_plumbing','Backflow & Commercial Plumbing','Pump Works LLC',
 'https://www.yellowpages.com/chino-valley-az/plumbers','yellowpages.com','Current Chino Valley plumbing discovery candidate. 1646 S Yellow Brick Rd; well/pump/plumbing.','assistant bootstrap research: Chino Valley Backflow & Commercial Plumbing',0,
 null,'(928) 308-4472',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley plumbing discovery candidate. 1646 S Yellow Brick Rd; well/pump/plumbing."}'::jsonb
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
 'vendor','Chino Valley','backflow_plumbing','Backflow & Commercial Plumbing','Affordable Plumbing Solutions',
 'https://www.yellowpages.com/chino-valley-az/plumbers','yellowpages.com','Current Chino Valley plumbing discovery candidate. 989 Tiffany Way.','assistant bootstrap research: Chino Valley Backflow & Commercial Plumbing',0,
 null,'(928) 925-6541',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley plumbing discovery candidate. 989 Tiffany Way."}'::jsonb
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
 'vendor','Chino Valley','backflow_plumbing','Backflow & Commercial Plumbing','Mountain Top Plumbing',
 'https://www.yellowpages.com/chino-valley-az/plumbers','yellowpages.com','Current Chino Valley plumbing discovery candidate. 977 Heather Ln.','assistant bootstrap research: Chino Valley Backflow & Commercial Plumbing',0,
 null,'(928) 830-3875',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley plumbing discovery candidate. 977 Heather Ln."}'::jsonb
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
 'vendor','Chino Valley','backflow_plumbing','Backflow & Commercial Plumbing','Tri-City Plumbing Contractors',
 'https://www.yellowpages.com/chino-valley-az/plumbers','yellowpages.com','Current Chino Valley plumbing discovery candidate. 847 S State Route 89.','assistant bootstrap research: Chino Valley Backflow & Commercial Plumbing',0,
 null,'(928) 636-0114',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley plumbing discovery candidate. 847 S State Route 89."}'::jsonb
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
 'vendor','Chino Valley','backflow_plumbing','Backflow & Commercial Plumbing','Chino Valley Plumbing',
 'https://www.yellowpages.com/chino-valley-az/plumbers','yellowpages.com','Current Chino Valley plumbing discovery candidate. 2439 N Road 1 E.','assistant bootstrap research: Chino Valley Backflow & Commercial Plumbing',0,
 null,'(928) 636-2517',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley plumbing discovery candidate. 2439 N Road 1 E."}'::jsonb
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
 'vendor','Chino Valley','backflow_plumbing','Backflow & Commercial Plumbing','Quick Plumbing & Draining',
 'https://www.yellowpages.com/chino-valley-az/plumbers','yellowpages.com','Current Chino Valley plumbing discovery candidate. 1296 Prairie Grass Rd.','assistant bootstrap research: Chino Valley Backflow & Commercial Plumbing',0,
 null,'(928) 848-8297',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley plumbing discovery candidate. 1296 Prairie Grass Rd."}'::jsonb
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
 'vendor','Chino Valley','backflow_plumbing','Backflow & Commercial Plumbing','Smart Plumbing',
 'https://www.yellowpages.com/chino-valley-az/plumbers','yellowpages.com','Current Chino Valley plumbing discovery candidate. 1264 S State Route 89.','assistant bootstrap research: Chino Valley Backflow & Commercial Plumbing',0,
 null,'(928) 227-2091',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley plumbing discovery candidate. 1264 S State Route 89."}'::jsonb
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
 'vendor','Chino Valley','backflow_plumbing','Backflow & Commercial Plumbing','Smart Plumbing & Drain Cleaning',
 'https://www.yellowpages.com/chino-valley-az/plumbers','yellowpages.com','Current Chino Valley plumbing discovery candidate. 1962 S State Route 89.','assistant bootstrap research: Chino Valley Backflow & Commercial Plumbing',0,
 null,'(928) 227-2091',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley plumbing discovery candidate. 1962 S State Route 89."}'::jsonb
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
 'vendor','Chino Valley','backflow_plumbing','Backflow & Commercial Plumbing','Acme Plumbing',
 'https://www.yellowpages.com/chino-valley-az/plumbers','yellowpages.com','Current Chino Valley plumbing discovery candidate. 876 E Road 3 N.','assistant bootstrap research: Chino Valley Backflow & Commercial Plumbing',0,
 null,'(928) 636-2143',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley plumbing discovery candidate. 876 E Road 3 N."}'::jsonb
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
 'vendor','Chino Valley','backflow_plumbing','Backflow & Commercial Plumbing','Diamondback Rooter Service',
 'https://www.yellowpages.com/chino-valley-az/plumbers','yellowpages.com','Current Chino Valley plumbing discovery candidate. 876 E Rd 3 N.','assistant bootstrap research: Chino Valley Backflow & Commercial Plumbing',0,
 null,'(928) 458-8260',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley plumbing discovery candidate. 876 E Rd 3 N."}'::jsonb
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
 'vendor','Chino Valley','backflow_plumbing','Backflow & Commercial Plumbing','NAZ Plumbing LLC',
 'https://www.yellowpages.com/chino-valley-az/plumbers','yellowpages.com','Current Chino Valley plumbing discovery candidate. Chino Valley-based plumbing company.','assistant bootstrap research: Chino Valley Backflow & Commercial Plumbing',0,
 null,'(928) 316-6686',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley plumbing discovery candidate. Chino Valley-based plumbing company."}'::jsonb
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
 'vendor','Chino Valley','backflow_plumbing','Backflow & Commercial Plumbing','Drain Monkey Plumbing LLC',
 'https://www.yellowpages.com/chino-valley-az/plumbers','yellowpages.com','Current Chino Valley plumbing discovery candidate. 3220 N Cottontail Dr.','assistant bootstrap research: Chino Valley Backflow & Commercial Plumbing',0,
 null,'(928) 899-0118',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley plumbing discovery candidate. 3220 N Cottontail Dr."}'::jsonb
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
 'vendor','Chino Valley','electrical_service','Electrician','Elan Electric Inc',
 'https://business.chinovalley.org/members/ql/construction-equipment-contractors-7','business.chinovalley.org','Current Chino Valley electrical discovery candidate. 3699 AZ-89.','assistant bootstrap research: Chino Valley Electrician',0,
 null,'(928) 925-7937',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley electrical discovery candidate. 3699 AZ-89."}'::jsonb
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
 'vendor','Chino Valley','electrical_service','Electrician','Wired Electric',
 'https://business.chinovalley.org/members/ql/construction-equipment-contractors-7','business.chinovalley.org','Current Chino Valley electrical discovery candidate. 586 Allerton Way.','assistant bootstrap research: Chino Valley Electrician',0,
 null,'(928) 925-4464',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley electrical discovery candidate. 586 Allerton Way."}'::jsonb
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
 'vendor','Chino Valley','electrical_service','Electrician','Copper Cross Electrical',
 'https://business.chinovalley.org/members/ql/construction-equipment-contractors-7','business.chinovalley.org','Current Chino Valley electrical discovery candidate. 1244 E Red Cinder Rd.','assistant bootstrap research: Chino Valley Electrician',0,
 null,'(928) 379-2875',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley electrical discovery candidate. 1244 E Red Cinder Rd."}'::jsonb
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
 'vendor','Chino Valley','electrical_service','Electrician','Luke''s Electrical Service',
 'https://business.chinovalley.org/members/ql/construction-equipment-contractors-7','business.chinovalley.org','Current Chino Valley electrical discovery candidate. Chino Valley-based local electrician.','assistant bootstrap research: Chino Valley Electrician',0,
 null,'(928) 713-9563',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley electrical discovery candidate. Chino Valley-based local electrician."}'::jsonb
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
 'vendor','Chino Valley','hvac_heat','Heating & Air','Chino Heating & Cooling Inc',
 'https://business.chinovalley.org/members/category/heating-air-conditioning-77','business.chinovalley.org','Current Chino Valley HVAC discovery candidate. 550 N Highway 89.','assistant bootstrap research: Chino Valley Heating & Air',0,
 null,'(928) 636-2955',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley HVAC discovery candidate. 550 N Highway 89."}'::jsonb
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
 'vendor','Chino Valley','hvac_heat','Heating & Air','Balanced Heating and Air Conditioning',
 'https://business.chinovalley.org/members/category/heating-air-conditioning-77','business.chinovalley.org','Current Chino Valley HVAC discovery candidate. 555 W Rd 3 North Suite D.','assistant bootstrap research: Chino Valley Heating & Air',0,
 null,'(928) 460-5153',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley HVAC discovery candidate. 555 W Rd 3 North Suite D."}'::jsonb
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
 'vendor','Chino Valley','hvac_heat','Heating & Air','Hometown Heating & Cooling',
 'https://business.chinovalley.org/members/category/heating-air-conditioning-77','business.chinovalley.org','Current Chino Valley HVAC discovery candidate. 2520 N Aztec Pl.','assistant bootstrap research: Chino Valley Heating & Air',0,
 null,'(928) 636-4305',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley HVAC discovery candidate. 2520 N Aztec Pl."}'::jsonb
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
 'vendor','Chino Valley','hvac_heat','Heating & Air','TDK Comfort Systems Inc',
 'https://business.chinovalley.org/members/category/heating-air-conditioning-77','business.chinovalley.org','Current Chino Valley HVAC discovery candidate. 1940 State Rte 89.','assistant bootstrap research: Chino Valley Heating & Air',0,
 null,'(928) 636-0846',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley HVAC discovery candidate. 1940 State Rte 89."}'::jsonb
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
 'vendor','Chino Valley','landscaping','Landscaping & Yard Cleanup','Prescott Roots Landscaping',
 'https://www.yellowpages.com/chino-valley-az/landscaping-lawn-services','yellowpages.com','Current Chino Valley landscaping discovery candidate. Chino Valley.','assistant bootstrap research: Chino Valley Landscaping & Yard Cleanup',0,
 null,'(928) 642-3623',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley landscaping discovery candidate. Chino Valley."}'::jsonb
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
 'vendor','Chino Valley','landscaping','Landscaping & Yard Cleanup','Arizona Weed Warriors',
 'https://www.yellowpages.com/chino-valley-az/landscaping-lawn-services','yellowpages.com','Current Chino Valley landscaping discovery candidate. 1025 N Moon Shadow Rd.','assistant bootstrap research: Chino Valley Landscaping & Yard Cleanup',0,
 null,'(406) 262-4579',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley landscaping discovery candidate. 1025 N Moon Shadow Rd."}'::jsonb
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
 'vendor','Chino Valley','landscaping','Landscaping & Yard Cleanup','Manzanita Landscaping',
 'https://www.yellowpages.com/chino-valley-az/landscaping-lawn-services','yellowpages.com','Current Chino Valley landscaping discovery candidate. 2531 N Highway 89.','assistant bootstrap research: Chino Valley Landscaping & Yard Cleanup',0,
 null,'(928) 848-8025',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley landscaping discovery candidate. 2531 N Highway 89."}'::jsonb
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
 'vendor','Chino Valley','landscaping','Landscaping & Yard Cleanup','Dirt Visions Inc',
 'https://www.yellowpages.com/chino-valley-az/landscaping-lawn-services','yellowpages.com','Current Chino Valley landscaping discovery candidate. Chino Valley.','assistant bootstrap research: Chino Valley Landscaping & Yard Cleanup',0,
 null,'(928) 356-2270',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley landscaping discovery candidate. Chino Valley."}'::jsonb
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
 'vendor','Chino Valley','landscaping','Landscaping & Yard Cleanup','C&M''s Landscaping',
 'https://www.yellowpages.com/chino-valley-az/landscaping-lawn-services','yellowpages.com','Current Chino Valley landscaping discovery candidate. 2745 N Arizona Trail.','assistant bootstrap research: Chino Valley Landscaping & Yard Cleanup',0,
 null,'(928) 963-4705',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley landscaping discovery candidate. 2745 N Arizona Trail."}'::jsonb
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
 'vendor','Chino Valley','landscaping','Landscaping & Yard Cleanup','G&G Landscape',
 'https://www.yellowpages.com/chino-valley-az/landscaping-lawn-services','yellowpages.com','Current Chino Valley landscaping discovery candidate. 245 N Reed Rd.','assistant bootstrap research: Chino Valley Landscaping & Yard Cleanup',0,
 null,'(928) 713-8616',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley landscaping discovery candidate. 245 N Reed Rd."}'::jsonb
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
 'vendor','Chino Valley','landscaping','Landscaping & Yard Cleanup','Quality Home & Property & Landscape Service Inc',
 'https://www.yellowpages.com/chino-valley-az/landscaping-lawn-services','yellowpages.com','Current Chino Valley landscaping discovery candidate. 851 Tiffany Pl.','assistant bootstrap research: Chino Valley Landscaping & Yard Cleanup',0,
 null,'(928) 636-5521',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley landscaping discovery candidate. 851 Tiffany Pl."}'::jsonb
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
 'vendor','Chino Valley','landscaping','Landscaping & Yard Cleanup','Concepts to Reality Landscaping',
 'https://www.yellowpages.com/chino-valley-az/landscaping-lawn-services','yellowpages.com','Current Chino Valley landscaping discovery candidate. 1875 N Sunrise Cir.','assistant bootstrap research: Chino Valley Landscaping & Yard Cleanup',0,
 null,'(928) 350-8712',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley landscaping discovery candidate. 1875 N Sunrise Cir."}'::jsonb
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
 'vendor','Chino Valley','landscaping','Landscaping & Yard Cleanup','Elevate Landscaping LLC',
 'https://www.yellowpages.com/chino-valley-az/landscaping-lawn-services','yellowpages.com','Current Chino Valley landscaping discovery candidate. Chino Valley-based.','assistant bootstrap research: Chino Valley Landscaping & Yard Cleanup',0,
 null,'(928) 910-1342',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley landscaping discovery candidate. Chino Valley-based."}'::jsonb
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
 'vendor','Chino Valley','landscaping','Landscaping & Yard Cleanup','Unique Landscape and Design',
 'https://www.yellowpages.com/chino-valley-az/landscaping-lawn-services','yellowpages.com','Current Chino Valley landscaping discovery candidate. 847 State Rte 89.','assistant bootstrap research: Chino Valley Landscaping & Yard Cleanup',0,
 null,'(928) 499-4221',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley landscaping discovery candidate. 847 State Rte 89."}'::jsonb
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
 'vendor','Chino Valley','landscaping','Landscaping & Yard Cleanup','Circle L Landscape & Maintenance Inc',
 'https://www.yellowpages.com/chino-valley-az/landscaping-lawn-services','yellowpages.com','Current Chino Valley landscaping discovery candidate. 1741 E Rd 1 S.','assistant bootstrap research: Chino Valley Landscaping & Yard Cleanup',0,
 null,'(928) 636-4781',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley landscaping discovery candidate. 1741 E Rd 1 S."}'::jsonb
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
 'vendor','Chino Valley','landscaping','Landscaping & Yard Cleanup','Gambel''s Yard Maintenance',
 'https://www.yellowpages.com/chino-valley-az/landscaping-lawn-services','yellowpages.com','Current Chino Valley landscaping discovery candidate. AZ-89, Chino Valley.','assistant bootstrap research: Chino Valley Landscaping & Yard Cleanup',0,
 null,'(928) 379-2397',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley landscaping discovery candidate. AZ-89, Chino Valley."}'::jsonb
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
 'vendor','Chino Valley','rural_property','Rural Property Help','Pump Works LLC',
 'https://www.yellowpages.com/chino-valley-az/plumbers','yellowpages.com','Chino Valley well/pump contractor at 1646 S Yellow Brick Rd; relevant to rural property water systems.','assistant bootstrap research: Chino Valley Rural Property Help',0,
 null,'(928) 308-4472',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Chino Valley well/pump contractor at 1646 S Yellow Brick Rd; relevant to rural property water systems."}'::jsonb
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
 'vendor','Chino Valley','rural_property','Rural Property Help','Turner & Son Pump & Windmill',
 'https://business.chinovalley.org/list/searchalpha/t','business.chinovalley.org','Current Chamber member at 3471 N Highway 89; pump/windmill services relevant to rural properties.','assistant bootstrap research: Chino Valley Rural Property Help',0,
 null,'(928) 636-2771',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber member at 3471 N Highway 89; pump/windmill services relevant to rural properties."}'::jsonb
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
 'vendor','Chino Valley','rural_property','Rural Property Help','Dirt Visions Inc',
 'https://business.chinovalley.org/list/category/landscaping-88','business.chinovalley.org','Chino Valley excavation/landscaping company; relevant to grading and rural-property site work.','assistant bootstrap research: Chino Valley Rural Property Help',0,
 null,'(928) 356-2270',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Chino Valley excavation/landscaping company; relevant to grading and rural-property site work."}'::jsonb
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
 'vendor','Chino Valley','tree_service','Tree Service & Brush Clearing','Manzanita Landscaping Inc',
 'https://www.yellowpages.com/chino-valley-az/tree-service','yellowpages.com','Current Chino Valley tree-service discovery candidate. 2584 N State Route 89.','assistant bootstrap research: Chino Valley Tree Service & Brush Clearing',0,
 null,'(928) 237-9772',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley tree-service discovery candidate. 2584 N State Route 89."}'::jsonb
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
 'vendor','Chino Valley','tree_service','Tree Service & Brush Clearing','Creative Yard Works',
 'https://www.yellowpages.com/chino-valley-az/tree-service','yellowpages.com','Current Chino Valley tree-service discovery candidate. 948 W Center St.','assistant bootstrap research: Chino Valley Tree Service & Brush Clearing',0,
 null,'(928) 420-0240',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley tree-service discovery candidate. 948 W Center St."}'::jsonb
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
 'vendor','Chino Valley','tree_service','Tree Service & Brush Clearing','Tischler Tree Service',
 'https://www.yellowpages.com/chino-valley-az/tree-service','yellowpages.com','Current Chino Valley tree-service discovery candidate. 1809 Streben Ct.','assistant bootstrap research: Chino Valley Tree Service & Brush Clearing',0,
 null,'(928) 925-1113',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley tree-service discovery candidate. 1809 Streben Ct."}'::jsonb
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
 'vendor','Chino Valley','tree_service','Tree Service & Brush Clearing','Quality Home & Property & Landscape Service Inc',
 'https://www.yellowpages.com/chino-valley-az/tree-service','yellowpages.com','Current Chino Valley tree-service discovery candidate. 851 Tiffany Pl.','assistant bootstrap research: Chino Valley Tree Service & Brush Clearing',0,
 null,'(928) 636-5521',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley tree-service discovery candidate. 851 Tiffany Pl."}'::jsonb
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
 'vendor','Chino Valley','tree_service','Tree Service & Brush Clearing','Chaparral Tree Service',
 'https://www.yellowpages.com/chino-valley-az/tree-service','yellowpages.com','Current Chino Valley tree-service discovery candidate. 451 Telephone Rd.','assistant bootstrap research: Chino Valley Tree Service & Brush Clearing',0,
 null,'(928) 899-0875',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley tree-service discovery candidate. 451 Telephone Rd."}'::jsonb
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
 'vendor','Chino Valley','pest_control','Pest Control','Chino Exterminating',
 'https://www.chamberofcommerce.com/business-directory/arizona/chino-valley/','chamberofcommerce.com','Current Chino Valley-based pest/wildlife-control company; local directory lists commercial pest programs.','assistant bootstrap research: Chino Valley Pest Control',0,
 null,'(928) 636-7378',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley-based pest/wildlife-control company; local directory lists commercial pest programs."}'::jsonb
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
 'vendor','Chino Valley','garage_door','Garage Door Repair','Chino Valley Garage Door Installation',
 'https://www.yellowpages.com/chino-valley-az/mip/chino-valley-garage-door-installation-574930657','yellowpages.com','Current garage-door installation/repair listing at 1020 N State Route 89, Chino Valley.','assistant bootstrap research: Chino Valley Garage Door Repair',0,
 null,'(928) 237-5695',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current garage-door installation/repair listing at 1020 N State Route 89, Chino Valley."}'::jsonb
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
 'vendor','Chino Valley','locksmith_access','Locks & Access Control','Commercial Lock And Door Service',
 'https://www.yellowpages.com/chino-valley-az/locks-locksmiths','yellowpages.com','Current Chino Valley locksmith/access candidate. 2607 W Neighbor View.','assistant bootstrap research: Chino Valley Locks & Access Control',0,
 null,'(928) 800-1918',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley locksmith/access candidate. 2607 W Neighbor View."}'::jsonb
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
 'vendor','Chino Valley','locksmith_access','Locks & Access Control','Master Locksmith',
 'https://www.yellowpages.com/chino-valley-az/locks-locksmiths','yellowpages.com','Current Chino Valley locksmith/access candidate. 1031 N State Route 89.','assistant bootstrap research: Chino Valley Locks & Access Control',0,
 null,'(928) 237-5545',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley locksmith/access candidate. 1031 N State Route 89."}'::jsonb
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
 'vendor','Chino Valley','locksmith_access','Locks & Access Control','Loc-Pro''s',
 'https://www.yellowpages.com/chino-valley-az/locks-locksmiths','yellowpages.com','Current Chino Valley locksmith/access candidate. 1235 El Valle Dr; 24/7 locksmith.','assistant bootstrap research: Chino Valley Locks & Access Control',0,
 null,'(928) 231-2524',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley locksmith/access candidate. 1235 El Valle Dr; 24/7 locksmith."}'::jsonb
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
 'vendor','Chino Valley','locksmith_access','Locks & Access Control','Rampart Mobile Lock Service Of Chino Valley',
 'https://www.yellowpages.com/chino-valley-az/locks-locksmiths','yellowpages.com','Current Chino Valley locksmith/access candidate. 1492 N State Route 89 #B.','assistant bootstrap research: Chino Valley Locks & Access Control',0,
 null,'(928) 266-3447',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley locksmith/access candidate. 1492 N State Route 89 #B."}'::jsonb
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
 'vendor','Chino Valley','towing_roadside','Towing & Roadside Help','Custom Towing',
 'https://www.yellowpages.com/chino-valley-az/custom-towing','yellowpages.com','Current Chino Valley towing/roadside discovery candidate. 1222 S State Route 89; 24/7 towing, roadside and lockout services.','assistant bootstrap research: Chino Valley Towing & Roadside Help',0,
 null,'(928) 771-8697',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley towing/roadside discovery candidate. 1222 S State Route 89; 24/7 towing, roadside and lockout services."}'::jsonb
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
 'vendor','Chino Valley','towing_roadside','Towing & Roadside Help','Custom Recovery',
 'https://www.yellowpages.com/chino-valley-az/custom-towing','yellowpages.com','Current Chino Valley towing/roadside discovery candidate. 1222 S State Route 89.','assistant bootstrap research: Chino Valley Towing & Roadside Help',0,
 null,'(928) 636-2636',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley towing/roadside discovery candidate. 1222 S State Route 89."}'::jsonb
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
 'vendor','Chino Valley','towing_roadside','Towing & Roadside Help','Tri-City Towing and Equipment Transport',
 'https://www.yellowpages.com/chino-valley-az/custom-towing','yellowpages.com','Current Chino Valley towing/roadside discovery candidate. 2803 State Rte 89; 24/7 towing/recovery/equipment transport.','assistant bootstrap research: Chino Valley Towing & Roadside Help',0,
 null,'(928) 772-8644',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley towing/roadside discovery candidate. 2803 State Rte 89; 24/7 towing/recovery/equipment transport."}'::jsonb
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
 'vendor','Chino Valley','commercial_cleaning','Commercial Cleaning','Proclivity for Cleanliness LLC',
 'https://business.chinovalley.org/list/category/home-improvement-174?o=','business.chinovalley.org','Current Chamber local home/business cleaning candidate at 958 W Road 1 N, Chino Valley.','assistant bootstrap research: Chino Valley Commercial Cleaning',0,
 null,'(417) 332-7072',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber local home/business cleaning candidate at 958 W Road 1 N, Chino Valley."}'::jsonb
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
 'vendor','Chino Valley','linen_laundry','Linen & Laundry Service','Western Laundry & Dry Cleaning',
 'https://westerndrycleaners.com/commercial-services/','westerndrycleaners.com','Official commercial-service page lists Chino Valley location at 382 W Butterfield Rd and commercial linen/hospitality/restaurant programs.','assistant bootstrap research: Chino Valley Linen & Laundry Service',0,
 null,'(928) 636-7667',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Official commercial-service page lists Chino Valley location at 382 W Butterfield Rd and commercial linen/hospitality/restaurant programs."}'::jsonb
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
 'vendor','Chino Valley','junk_hauling','Junk Hauling','Copper State Junk Removal & Hauling',
 'https://business.chinovalley.org/list/ql/business-professional-services-5','business.chinovalley.org','Current Chamber member at 1264 S Highway 89 Suite B, Chino Valley.','assistant bootstrap research: Chino Valley Junk Hauling',0,
 null,'(928) 224-9381',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber member at 1264 S Highway 89 Suite B, Chino Valley."}'::jsonb
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
 'vendor','Chino Valley','facility_maintenance','Building Maintenance Help','KBO Contracting LLC',
 'https://business.chinovalley.org/members/ql/construction-equipment-contractors-7','business.chinovalley.org','Current Chino Valley contractor/facility-service candidate. PO Box 199.','assistant bootstrap research: Chino Valley Building Maintenance Help',0,
 null,'(928) 458-3475',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley contractor/facility-service candidate. PO Box 199."}'::jsonb
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
 'vendor','Chino Valley','facility_maintenance','Building Maintenance Help','Circle C Construction',
 'https://business.chinovalley.org/members/ql/construction-equipment-contractors-7','business.chinovalley.org','Current Chino Valley contractor/facility-service candidate. 1190 W Road 1 North.','assistant bootstrap research: Chino Valley Building Maintenance Help',0,
 null,'(928) 636-4660',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley contractor/facility-service candidate. 1190 W Road 1 North."}'::jsonb
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
 'vendor','Chino Valley','facility_maintenance','Building Maintenance Help','Heritage Roofing',
 'https://business.chinovalley.org/members/ql/construction-equipment-contractors-7','business.chinovalley.org','Current Chino Valley contractor/facility-service candidate. 1620 Hwy 89 Unit 3.','assistant bootstrap research: Chino Valley Building Maintenance Help',0,
 null,'(928) 910-2765',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley contractor/facility-service candidate. 1620 Hwy 89 Unit 3."}'::jsonb
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
 'vendor','Chino Valley','facility_maintenance','Building Maintenance Help','D R Building Services LLC',
 'https://business.chinovalley.org/members/ql/construction-equipment-contractors-7','business.chinovalley.org','Current Chino Valley contractor/facility-service candidate. Chino Valley-based general/masonry/repair contractor.','assistant bootstrap research: Chino Valley Building Maintenance Help',0,
 null,'(928) 713-9738',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley contractor/facility-service candidate. Chino Valley-based general/masonry/repair contractor."}'::jsonb
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
 'vendor','Chino Valley','facility_maintenance','Building Maintenance Help','Precision Custom Homes & Remodeling',
 'https://business.chinovalley.org/members/ql/construction-equipment-contractors-7','business.chinovalley.org','Current Chino Valley contractor/facility-service candidate. 2350 Yavapai St.','assistant bootstrap research: Chino Valley Building Maintenance Help',0,
 null,'(928) 583-0228',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chino Valley contractor/facility-service candidate. 2350 Yavapai St."}'::jsonb
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
 'vendor','Chino Valley','parking_lot','Parking Lot & Striping','Turco Asphalt Maintenance',
 'https://business.chinovalley.org/list/searchalpha/t','business.chinovalley.org','Current Chamber member based in Chino Valley; asphalt maintenance candidate for parking lots and commercial surfaces.','assistant bootstrap research: Chino Valley Parking Lot & Striping',0,
 null,'(928) 899-0256',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_02","researched_at":"2026-10-26T23:52:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber member based in Chino Valley; asphalt maintenance candidate for parking lots and commercial surfaces."}'::jsonb
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
where p.market='Chino Valley';


-- Assistant-led Chino Valley census batch 03 (2026-10-26)
-- Direct/authoritative verification layer for Chino Valley high-value vendors.
-- Inventory evidence only; preserve closed status and never promote/stage/send.

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Chino Valley','hvac_heat','Heating & Air','Chino Heating & Cooling, Inc.',
 'https://www.airconditionerprescott.com/','airconditionerprescott.com','Official site confirms Chino Valley location at 550 N US Highway 89, family owned since 1980, residential through light-industrial/commercial HVAC, maintenance agreements and 24-hour emergency service.','assistant verification research: Chino Valley Heating & Air',0,
 null,'(928) 636-2955',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_03","researched_at":"2026-10-26T23:58:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official site confirms Chino Valley location at 550 N US Highway 89, family owned since 1980, residential through light-industrial/commercial HVAC, maintenance agreements and 24-hour emergency service."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=now(),
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
 'vendor','Chino Valley','hvac_heat','Heating & Air','Balanced Heating & Air Conditioning',
 'https://hvac.balancedheating.com/','hvac.balancedheating.com','Official Chino Valley HVAC site lists 555 W Rd 3 N Ste D and residential/commercial HVAC repair, installation, maintenance and indoor-air-quality service.','assistant verification research: Chino Valley Heating & Air',0,
 null,'(928) 460-7819',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_03","researched_at":"2026-10-26T23:58:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official Chino Valley HVAC site lists 555 W Rd 3 N Ste D and residential/commercial HVAC repair, installation, maintenance and indoor-air-quality service."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=now(),
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
 'vendor','Chino Valley','backflow_plumbing','Backflow & Commercial Plumbing','WIHN Services Plumbing',
 'https://www.wihnservices.com/','wihnservices.com','Official site confirms multi-generation full-service plumbing; current Chamber evidence places Chino Valley base at 1420 S Table Mountain Rd.','assistant verification research: Chino Valley Backflow & Commercial Plumbing',0,
 null,'(928) 636-5405',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_03","researched_at":"2026-10-26T23:58:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official site confirms multi-generation full-service plumbing; current Chamber evidence places Chino Valley base at 1420 S Table Mountain Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=now(),
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
 'vendor','Chino Valley','electrical_service','Electrician','Copper Cross Electrical',
 'https://www.coppercrosselectrical.com/','coppercrosselectrical.com','Official site lists 1244 E Red Cinder Rd, Chino Valley and commercial electrical, new construction, remodels, panels, EV chargers, generators and automated gates.','assistant verification research: Chino Valley Electrician',0,
 null,'(928) 379-2875',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_03","researched_at":"2026-10-26T23:58:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official site lists 1244 E Red Cinder Rd, Chino Valley and commercial electrical, new construction, remodels, panels, EV chargers, generators and automated gates."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=now(),
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
 'vendor','Chino Valley','electrical_service','Electrician','Elan Electric Inc',
 'https://elanelectricinc.com/','elanelectricinc.com','Official site confirms Chino Valley/Yavapai County electrical contractor with residential, commercial and industrial work plus generator/solar/battery capability; current local listing places office at 3699 AZ-89.','assistant verification research: Chino Valley Electrician',0,
 null,'(928) 925-7937',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_03","researched_at":"2026-10-26T23:58:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official site confirms Chino Valley/Yavapai County electrical contractor with residential, commercial and industrial work plus generator/solar/battery capability; current local listing places office at 3699 AZ-89."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=now(),
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
 'vendor','Chino Valley','pest_control','Pest Control','Chino Exterminating',
 'https://chinoexterminating.com/','chinoexterminating.com','Official site confirms Chino Valley-based residential and commercial pest/wildlife control serving restaurants, hospitality, industrial, healthcare, schools, property management, retail and offices.','assistant verification research: Chino Valley Pest Control',0,
 null,'(928) 636-7378',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_03","researched_at":"2026-10-26T23:58:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official site confirms Chino Valley-based residential and commercial pest/wildlife control serving restaurants, hospitality, industrial, healthcare, schools, property management, retail and offices."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=now(),
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
 'vendor','Chino Valley','rural_property','Rural Property Help','PumpWorks, LLC',
 'https://pumpworksaz.com/about-us-2/','pumpworksaz.com','Official site lists 1646 S Yellow Brick Rd, Chino Valley; Arizona licensed well-pump contractor providing installation, maintenance, repair and emergency water support across Yavapai County.','assistant verification research: Chino Valley Rural Property Help',0,
 null,'(928) 308-4472',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_03","researched_at":"2026-10-26T23:58:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official site lists 1646 S Yellow Brick Rd, Chino Valley; Arizona licensed well-pump contractor providing installation, maintenance, repair and emergency water support across Yavapai County."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=now(),
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
 'vendor','Chino Valley','towing_roadside','Towing & Roadside Help','Custom Towing',
 'https://www.towingprescott.com/','towingprescott.com','Official company site confirms Chino Valley service/base, 24/7 light/medium towing, roadside assistance, lockouts, fuel delivery and recovery; Chamber lists 1222 S Highway 89.','assistant verification research: Chino Valley Towing & Roadside Help',0,
 null,'(928) 771-8697',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_03","researched_at":"2026-10-26T23:58:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official company site confirms Chino Valley service/base, 24/7 light/medium towing, roadside assistance, lockouts, fuel delivery and recovery; Chamber lists 1222 S Highway 89."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=now(),
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
 'vendor','Chino Valley','linen_laundry','Linen & Laundry Service','Western Laundry & Dry Cleaning',
 'https://westerndrycleaners.com/commercial-services/','westerndrycleaners.com','Official commercial-service page lists Chino Valley location at 382 W Butterfield Rd and commercial linen, restaurant/hospitality textiles, mats and janitorial-supply delivery across Northern Arizona.','assistant verification research: Chino Valley Linen & Laundry Service',0,
 'info@westerndrycleaners.com','(928) 636-7667',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_03","researched_at":"2026-10-26T23:58:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official commercial-service page lists Chino Valley location at 382 W Butterfield Rd and commercial linen, restaurant/hospitality textiles, mats and janitorial-supply delivery across Northern Arizona."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=now(),
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
 'vendor','Chino Valley','hvac_heat','Heating & Air','TDK Comfort Systems Inc',
 'https://www.trane.com/residential/en/dealers/tdk-comfort-systems-chino-valley-arizona-404241/','trane.com','Manufacturer-authorized Trane dealer page confirms current Chino Valley HVAC business, service area including 86323, HVAC repair/install/cleaning, 24/7 emergency service and NATE certification.','assistant verification research: Chino Valley Heating & Air',0,
 null,'(928) 636-0846',false,
 'secondary','verified_secondary',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_chino_valley_batch_03","researched_at":"2026-10-26T23:58:00Z","source_quality":"authoritative_industry_evidence","verification_status":"verified_secondary","note":"Manufacturer-authorized Trane dealer page confirms current Chino Valley HVAC business, service area including 86323, HVAC repair/install/cleaning, 24/7 emergency service and NATE certification."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 official_site=excluded.official_site,
 source_tier=excluded.source_tier,
 verification_status=excluded.verification_status,
 last_verified_at=now(),
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
where p.market='Chino Valley';


-- Assistant-led Dewey-Humboldt census batch 01 (2026-10-26)
-- First manually enumerated Dewey directory layer; Dewey is the public-directory alias for BMC market Dewey-Humboldt.
-- Discovery inventory only; preserve closed status and never promote/stage/send.

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Dewey-Humboldt','restaurants','restaurants','Blue Hills Cafe',
 'https://www.whereorg.com/dewey-az','whereorg.com','Current Dewey directory discovery listing; direct current-operation verification remains required.','assistant bootstrap research: Dewey restaurants',0,
 null,'(928) 632-7953',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Dewey directory discovery listing; direct current-operation verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','restaurants','restaurants','Sit-N-Bull',
 'https://www.whereorg.com/dewey-az','whereorg.com','Current Dewey directory discovery listing; direct current-operation verification remains required.','assistant bootstrap research: Dewey restaurants',0,
 null,'(928) 632-4023',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Dewey directory discovery listing; direct current-operation verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','restaurants','restaurants','Turn Grill',
 'https://www.whereorg.com/dewey-az','whereorg.com','Current Dewey directory discovery listing; direct current-operation verification remains required.','assistant bootstrap research: Dewey restaurants',0,
 null,'(928) 772-5718',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Dewey directory discovery listing; direct current-operation verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','restaurants','restaurants','Screamin Mimis Roadhouse',
 'https://www.whereorg.com/dewey-az','whereorg.com','Current Dewey directory discovery listing; direct current-operation verification remains required.','assistant bootstrap research: Dewey restaurants',0,
 null,'(928) 772-1124',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Dewey directory discovery listing; direct current-operation verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','restaurants','restaurants','Guido''s Pizza',
 'https://www.whereorg.com/dewey-az','whereorg.com','Current Dewey directory discovery listing; direct current-operation verification remains required.','assistant bootstrap research: Dewey restaurants',0,
 null,'(928) 632-5950',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Dewey directory discovery listing; direct current-operation verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','medical_centers','hospitals medical centers clinics','Kachina Animal Hospital',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey healthcare/business directory candidate; direct verification remains required.','assistant bootstrap research: Dewey hospitals medical centers clinics',0,
 null,'(928) 772-8225',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey healthcare/business directory candidate; direct verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','medical_centers','hospitals medical centers clinics','Aqua Fria Health Center',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey healthcare/business directory candidate; direct verification remains required.','assistant bootstrap research: Dewey hospitals medical centers clinics',0,
 null,'(928) 775-7221',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey healthcare/business directory candidate; direct verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','medical_centers','hospitals medical centers clinics','Alternative Health Works',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey healthcare/business directory candidate; direct verification remains required.','assistant bootstrap research: Dewey hospitals medical centers clinics',0,
 null,'(928) 420-4875',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey healthcare/business directory candidate; direct verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','medical_centers','hospitals medical centers clinics','Hospice of the Pines',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey healthcare/business directory candidate; direct verification remains required.','assistant bootstrap research: Dewey hospitals medical centers clinics',0,
 null,'(928) 632-0111',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey healthcare/business directory candidate; direct verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','medical_centers','hospitals medical centers clinics','United Westlabs',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey healthcare/business directory candidate; direct verification remains required.','assistant bootstrap research: Dewey hospitals medical centers clinics',0,
 null,'(928) 632-5905',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey healthcare/business directory candidate; direct verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','medical_centers','hospitals medical centers clinics','Kachina Animal Hospital PA',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey healthcare/business directory candidate; direct verification remains required.','assistant bootstrap research: Dewey hospitals medical centers clinics',0,
 null,'(928) 772-8225',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey healthcare/business directory candidate; direct verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','dental','dentists dental offices orthodontists','Dewery Dental Center',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey dental-office directory candidate at 150 S Highway 69.','assistant bootstrap research: Dewey dentists dental offices orthodontists',0,
 null,'(928) 632-8333',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey dental-office directory candidate at 150 S Highway 69."}'::jsonb
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
 'buyer','Dewey-Humboldt','dental','dentists dental offices orthodontists','Suit Orthodontics',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey orthodontic-office directory candidate.','assistant bootstrap research: Dewey dentists dental offices orthodontists',0,
 null,'(928) 237-9645',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey orthodontic-office directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','pharmacies','pharmacies drug stores','Low Cost Prescription',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey pharmacy/prescription-service directory candidate.','assistant bootstrap research: Dewey pharmacies drug stores',0,
 null,'(928) 632-5417',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey pharmacy/prescription-service directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','churches','churches worship centers','Dewey Seventh-Day Adventist',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey religious-organization directory candidate.','assistant bootstrap research: Dewey churches worship centers',0,
 null,'(928) 632-5182',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey religious-organization directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','churches','churches worship centers','Jehovah''s Witnesses',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey religious-organization directory candidate.','assistant bootstrap research: Dewey churches worship centers',0,
 null,'(928) 759-0212',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey religious-organization directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','churches','churches worship centers','Mountain View Southern Baptist',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey religious-organization directory candidate.','assistant bootstrap research: Dewey churches worship centers',0,
 null,'(928) 632-5787',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey religious-organization directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','churches','churches worship centers','Faith Assembly of God',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey religious-organization directory candidate.','assistant bootstrap research: Dewey churches worship centers',0,
 null,'(928) 632-7813',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey religious-organization directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','schools','schools charter schools private schools','Bradshaw Mountain Middle School',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey school directory candidate at 12255 E Turquoise Circle.','assistant bootstrap research: Dewey schools charter schools private schools',0,
 null,'(928) 759-4900',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey school directory candidate at 12255 E Turquoise Circle."}'::jsonb
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
 'buyer','Dewey-Humboldt','schools','schools charter schools private schools','Equine Learning Center',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey educational/professional-development facility candidate.','assistant bootstrap research: Dewey schools charter schools private schools',0,
 null,'(928) 458-7834',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey educational/professional-development facility candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','warehouses_industrial','warehouses industrial businesses distribution centers','Dewey Mini Storage',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey storage-facility directory candidate.','assistant bootstrap research: Dewey warehouses industrial businesses distribution centers',0,
 null,'(928) 632-9450',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey storage-facility directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','warehouses_industrial','warehouses industrial businesses distribution centers','Kachina Storage',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey storage-facility directory candidate.','assistant bootstrap research: Dewey warehouses industrial businesses distribution centers',0,
 null,'(928) 237-3994',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey storage-facility directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','warehouses_industrial','warehouses industrial businesses distribution centers','Blue Hills Mini Storage',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey storage-facility directory candidate.','assistant bootstrap research: Dewey warehouses industrial businesses distribution centers',0,
 null,'(928) 632-7766',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey storage-facility directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','property_management','property management companies apartment communities','Indian Meadows Real Estate Co',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey real-estate/property directory candidate.','assistant bootstrap research: Dewey property management companies apartment communities',0,
 null,'(928) 632-4919',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey real-estate/property directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','property_management','property management companies apartment communities','United Country Statler Bro',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey real-estate/property directory candidate.','assistant bootstrap research: Dewey property management companies apartment communities',0,
 null,'(928) 632-0014',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey real-estate/property directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','property_management','property management companies apartment communities','Exit Realty Cool Mountain Rock',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey real-estate/property directory candidate.','assistant bootstrap research: Dewey property management companies apartment communities',0,
 null,'(928) 632-1608',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey real-estate/property directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','property_management','property management companies apartment communities','Red Arrow Real Estate',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey real-estate/property directory candidate.','assistant bootstrap research: Dewey property management companies apartment communities',0,
 null,'(928) 772-7221',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey real-estate/property directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','property_management','property management companies apartment communities','Quail Wood Meadows LLC',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey real-estate/property directory candidate.','assistant bootstrap research: Dewey property management companies apartment communities',0,
 null,'(928) 632-1095',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey real-estate/property directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','property_management','property management companies apartment communities','Villages At Lynx Creek',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey real-estate/property directory candidate.','assistant bootstrap research: Dewey property management companies apartment communities',0,
 null,'(928) 772-7047',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey real-estate/property directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','property_management','property management companies apartment communities','Orchard Ranch Sales',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey real-estate/property directory candidate.','assistant bootstrap research: Dewey property management companies apartment communities',0,
 null,'(928) 772-9942',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey real-estate/property directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','insurance_professional','insurance agents professional offices','Spectrum Financial Group',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey professional/insurance/financial-office directory candidate.','assistant bootstrap research: Dewey insurance agents professional offices',0,
 null,'(928) 632-7978',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey professional/insurance/financial-office directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','insurance_professional','insurance agents professional offices','Chuck White Agency Inc',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey professional/insurance/financial-office directory candidate.','assistant bootstrap research: Dewey insurance agents professional offices',0,
 null,'(928) 632-1069',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey professional/insurance/financial-office directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','insurance_professional','insurance agents professional offices','Aai/Southwestern Hagstedt Ins',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey professional/insurance/financial-office directory candidate.','assistant bootstrap research: Dewey insurance agents professional offices',0,
 null,'(928) 632-1396',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey professional/insurance/financial-office directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','insurance_professional','insurance agents professional offices','Prepaid Legal Services',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey professional/insurance/financial-office directory candidate.','assistant bootstrap research: Dewey insurance agents professional offices',0,
 null,null,false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey professional/insurance/financial-office directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','insurance_professional','insurance agents professional offices','Donna L Chisum Bookkeeping & Tax S',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey professional/insurance/financial-office directory candidate.','assistant bootstrap research: Dewey insurance agents professional offices',0,
 null,'(928) 237-9190',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey professional/insurance/financial-office directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','retail','retail stores shopping stores','Foxworth-Galbraith Lumber Co',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey retail/local-business directory candidate.','assistant bootstrap research: Dewey retail stores shopping stores',0,
 null,'(928) 775-3300',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey retail/local-business directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','retail','retail stores shopping stores','Renas Thrifty Shop',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey retail/local-business directory candidate.','assistant bootstrap research: Dewey retail stores shopping stores',0,
 null,'(928) 775-9246',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey retail/local-business directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','retail','retail stores shopping stores','Blue Ridge Market',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey retail/local-business directory candidate.','assistant bootstrap research: Dewey retail stores shopping stores',0,
 null,'(928) 632-7278',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey retail/local-business directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','retail','retail stores shopping stores','Arizona Home Centers',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey retail/local-business directory candidate.','assistant bootstrap research: Dewey retail stores shopping stores',0,
 null,'(928) 776-7296',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey retail/local-business directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','retail','retail stores shopping stores','Back To School Uniform Store',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey retail/local-business directory candidate.','assistant bootstrap research: Dewey retail stores shopping stores',0,
 null,'(928) 632-8697',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey retail/local-business directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','retail','retail stores shopping stores','Tapestry Store',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey retail/local-business directory candidate.','assistant bootstrap research: Dewey retail stores shopping stores',0,
 null,'(928) 775-0851',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey retail/local-business directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','retail','retail stores shopping stores','Paul''s Pet Food',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey retail/local-business directory candidate.','assistant bootstrap research: Dewey retail stores shopping stores',0,
 null,'(928) 772-2771',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey retail/local-business directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','retail','retail stores shopping stores','Del Cor Florist',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey retail/local-business directory candidate.','assistant bootstrap research: Dewey retail stores shopping stores',0,
 null,'(928) 772-7165',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey retail/local-business directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','retail','retail stores shopping stores','Donna S Floral Elegance',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey retail/local-business directory candidate.','assistant bootstrap research: Dewey retail stores shopping stores',0,
 null,'(928) 710-5428',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey retail/local-business directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','retail','retail stores shopping stores','Best Choice Blinds & More LLC',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey retail/local-business directory candidate.','assistant bootstrap research: Dewey retail stores shopping stores',0,
 null,'(928) 775-6228',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey retail/local-business directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','general_business','other local businesses','Ultimate Automotive Repair',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey automotive/RV business directory candidate.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 775-7575',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey automotive/RV business directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','general_business','other local businesses','H & H Diesel Performance',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey automotive/RV business directory candidate.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 632-5317',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey automotive/RV business directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','general_business','other local businesses','Affinity Rv Service Sales & Rntls',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey automotive/RV business directory candidate.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 445-7910',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey automotive/RV business directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','general_business','other local businesses','York Rv Service Sales & Rental',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey automotive/RV business directory candidate.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 632-7656',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey automotive/RV business directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','general_business','other local businesses','Pioneer Classic Autos',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey automotive/RV business directory candidate.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 632-1166',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey automotive/RV business directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','general_business','other local businesses','Affinity Rv Service Sales',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey automotive/RV business directory candidate.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(623) 374-5785',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey automotive/RV business directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','warehouses_industrial','warehouses industrial businesses distribution centers','Accuduct Manufacturing Inc',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey industrial/manufacturing/distribution directory candidate.','assistant bootstrap research: Dewey warehouses industrial businesses distribution centers',0,
 null,'(928) 775-2541',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey industrial/manufacturing/distribution directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','warehouses_industrial','warehouses industrial businesses distribution centers','Classic Recreation Systems',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey industrial/manufacturing/distribution directory candidate.','assistant bootstrap research: Dewey warehouses industrial businesses distribution centers',0,
 null,'(928) 775-3307',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey industrial/manufacturing/distribution directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','warehouses_industrial','warehouses industrial businesses distribution centers','Southwest Bronze Inc',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey industrial/manufacturing/distribution directory candidate.','assistant bootstrap research: Dewey warehouses industrial businesses distribution centers',0,
 null,'(928) 442-9594',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey industrial/manufacturing/distribution directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','warehouses_industrial','warehouses industrial businesses distribution centers','Steyaert Castings',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey industrial/manufacturing/distribution directory candidate.','assistant bootstrap research: Dewey warehouses industrial businesses distribution centers',0,
 null,'(928) 632-7707',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey industrial/manufacturing/distribution directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','warehouses_industrial','warehouses industrial businesses distribution centers','Continental Tooling',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey industrial/manufacturing/distribution directory candidate.','assistant bootstrap research: Dewey warehouses industrial businesses distribution centers',0,
 null,null,false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey industrial/manufacturing/distribution directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','warehouses_industrial','warehouses industrial businesses distribution centers','Granite Mountain Archtrl Stone',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey industrial/manufacturing/distribution directory candidate.','assistant bootstrap research: Dewey warehouses industrial businesses distribution centers',0,
 null,'(928) 775-9800',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey industrial/manufacturing/distribution directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','warehouses_industrial','warehouses industrial businesses distribution centers','Granite Mountain Architectural Stone',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey industrial/manufacturing/distribution directory candidate.','assistant bootstrap research: Dewey warehouses industrial businesses distribution centers',0,
 null,null,false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey industrial/manufacturing/distribution directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','warehouses_industrial','warehouses industrial businesses distribution centers','Mdi Rock',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey industrial/manufacturing/distribution directory candidate.','assistant bootstrap research: Dewey warehouses industrial businesses distribution centers',0,
 null,'(928) 632-5320',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey industrial/manufacturing/distribution directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','warehouses_industrial','warehouses industrial businesses distribution centers','High Country Cabinets',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey industrial/manufacturing/distribution directory candidate.','assistant bootstrap research: Dewey warehouses industrial businesses distribution centers',0,
 null,'(928) 772-2250',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey industrial/manufacturing/distribution directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','warehouses_industrial','warehouses industrial businesses distribution centers','Heavy Equipment Machinery',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey industrial/manufacturing/distribution directory candidate.','assistant bootstrap research: Dewey warehouses industrial businesses distribution centers',0,
 null,'(928) 775-6525',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey industrial/manufacturing/distribution directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','warehouses_industrial','warehouses industrial businesses distribution centers','Yavapai Metal Recycling',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey industrial/manufacturing/distribution directory candidate.','assistant bootstrap research: Dewey warehouses industrial businesses distribution centers',0,
 null,'(928) 632-5205',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey industrial/manufacturing/distribution directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','warehouses_industrial','warehouses industrial businesses distribution centers','Yavapai Metal Recylcing LLC',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey industrial/manufacturing/distribution directory candidate.','assistant bootstrap research: Dewey warehouses industrial businesses distribution centers',0,
 null,'(928) 632-5205',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey industrial/manufacturing/distribution directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','warehouses_industrial','warehouses industrial businesses distribution centers','Mattera Enterprises Recycling',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey industrial/manufacturing/distribution directory candidate.','assistant bootstrap research: Dewey warehouses industrial businesses distribution centers',0,
 null,'(928) 632-8287',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey industrial/manufacturing/distribution directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','warehouses_industrial','warehouses industrial businesses distribution centers','Sanders Freight Lines LLC',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey industrial/manufacturing/distribution directory candidate.','assistant bootstrap research: Dewey warehouses industrial businesses distribution centers',0,
 null,'(928) 632-5008',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey industrial/manufacturing/distribution directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','warehouses_industrial','warehouses industrial businesses distribution centers','Bimbo Bakeries USA',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey industrial/manufacturing/distribution directory candidate.','assistant bootstrap research: Dewey warehouses industrial businesses distribution centers',0,
 null,'(928) 775-3949',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey industrial/manufacturing/distribution directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','warehouses_industrial','warehouses industrial businesses distribution centers','Cherry Valley Spring Water',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey industrial/manufacturing/distribution directory candidate.','assistant bootstrap research: Dewey warehouses industrial businesses distribution centers',0,
 null,'(928) 632-5528',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey industrial/manufacturing/distribution directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','warehouses_industrial','warehouses industrial businesses distribution centers','Santa Fe Propane',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey industrial/manufacturing/distribution directory candidate.','assistant bootstrap research: Dewey warehouses industrial businesses distribution centers',0,
 null,'(928) 775-0002',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey industrial/manufacturing/distribution directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','warehouses_industrial','warehouses industrial businesses distribution centers','Yavapai Propane Inc',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey industrial/manufacturing/distribution directory candidate.','assistant bootstrap research: Dewey warehouses industrial businesses distribution centers',0,
 null,'(928) 776-9007',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey industrial/manufacturing/distribution directory candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','general_business','other local businesses','Dewey-Humboldt Historical Society',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey nonprofit/community/public-facing organization candidate.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 632-3962',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey nonprofit/community/public-facing organization candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','general_business','other local businesses','Gift Of Tomorrows Foundation',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey nonprofit/community/public-facing organization candidate.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 277-6119',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey nonprofit/community/public-facing organization candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','general_business','other local businesses','Gods Refuge Inc',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey nonprofit/community/public-facing organization candidate.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 775-5002',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey nonprofit/community/public-facing organization candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','general_business','other local businesses','Agua Fria Open Space Alliance',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey nonprofit/community/public-facing organization candidate.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 925-7191',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey nonprofit/community/public-facing organization candidate."}'::jsonb
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
 'buyer','Dewey-Humboldt','general_business','other local businesses','Crown King Public Library',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey nonprofit/community/public-facing organization candidate.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 632-5986',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey nonprofit/community/public-facing organization candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Construction Resources LLC',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey general construction/facility-maintenance directory candidate.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 775-3311',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey general construction/facility-maintenance directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Scotskil Construction Co',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey general construction/facility-maintenance directory candidate.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 632-4762',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey general construction/facility-maintenance directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Dominion Builders LLC',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey general construction/facility-maintenance directory candidate.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 759-9690',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey general construction/facility-maintenance directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Elm Builders',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey general construction/facility-maintenance directory candidate.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 632-5072',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey general construction/facility-maintenance directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Desert Development & Design',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey general construction/facility-maintenance directory candidate.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 632-8018',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey general construction/facility-maintenance directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','A R General Contracting L L C',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey general construction/facility-maintenance directory candidate.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 632-7687',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey general construction/facility-maintenance directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Yarber Contractors LLC',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey general construction/facility-maintenance directory candidate.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 899-3447',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey general construction/facility-maintenance directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Elliotts Contracting Enterpri',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey general construction/facility-maintenance directory candidate.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 632-7239',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey general construction/facility-maintenance directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Jeff Evans Constuction LLC',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey general construction/facility-maintenance directory candidate.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 632-7211',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey general construction/facility-maintenance directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Swalve Construction',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey general construction/facility-maintenance directory candidate.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 632-5162',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey general construction/facility-maintenance directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Davis Contracting',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey general construction/facility-maintenance directory candidate.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 772-8741',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey general construction/facility-maintenance directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Aaz Contracting Inc',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey general construction/facility-maintenance directory candidate.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 999-1234',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey general construction/facility-maintenance directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Eds Construction Service LLC',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey general construction/facility-maintenance directory candidate.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 772-8961',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey general construction/facility-maintenance directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','LJS Construction',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey general construction/facility-maintenance directory candidate.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 632-7928',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey general construction/facility-maintenance directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Marjanen Builders LLC',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey general construction/facility-maintenance directory candidate.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 713-2480',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey general construction/facility-maintenance directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Schuck & Sons Cnstr Co Inc',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey general construction/facility-maintenance directory candidate.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 772-6966',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey general construction/facility-maintenance directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','electrical_service','Electrician','Double B Electric',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey electrical-contractor directory candidate.','assistant bootstrap research: Dewey Electrician',0,
 null,'(928) 632-1135',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey electrical-contractor directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','electrical_service','Electrician','Double B Electrical Contractor Inc',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey electrical-contractor directory candidate.','assistant bootstrap research: Dewey Electrician',0,
 null,null,false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey electrical-contractor directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','electrical_service','Electrician','Haskins Electric Inc',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey electrical-contractor directory candidate.','assistant bootstrap research: Dewey Electrician',0,
 null,'(928) 775-4512',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey electrical-contractor directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','rural_property','Rural Property Help','Jim Williams Well Drilling',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey well/septic/water/rural-property service directory candidate.','assistant bootstrap research: Dewey Rural Property Help',0,
 null,'(928) 772-8881',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey well/septic/water/rural-property service directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','rural_property','Rural Property Help','B & M Well Drillers',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey well/septic/water/rural-property service directory candidate.','assistant bootstrap research: Dewey Rural Property Help',0,
 null,'(928) 632-1911',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey well/septic/water/rural-property service directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','rural_property','Rural Property Help','Dewey Drilling & Pump Inc',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey well/septic/water/rural-property service directory candidate.','assistant bootstrap research: Dewey Rural Property Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey well/septic/water/rural-property service directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','rural_property','Rural Property Help','J T''s Backhoe & Septic',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey well/septic/water/rural-property service directory candidate.','assistant bootstrap research: Dewey Rural Property Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey well/septic/water/rural-property service directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','rural_property','Rural Property Help','Cbr Septic Solutions',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey well/septic/water/rural-property service directory candidate.','assistant bootstrap research: Dewey Rural Property Help',0,
 null,'(928) 925-0227',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey well/septic/water/rural-property service directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','rural_property','Rural Property Help','Rockin R Water Delivery',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey well/septic/water/rural-property service directory candidate.','assistant bootstrap research: Dewey Rural Property Help',0,
 null,'(928) 999-2171',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey well/septic/water/rural-property service directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','rural_property','Rural Property Help','Water Dance Water Delivery',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey well/septic/water/rural-property service directory candidate.','assistant bootstrap research: Dewey Rural Property Help',0,
 null,'(928) 632-1174',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey well/septic/water/rural-property service directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','tree_service','Tree Service & Brush Clearing','Arbor One Tree and Landscape',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey tree/landscape service directory candidate.','assistant bootstrap research: Dewey Tree Service & Brush Clearing',0,
 null,'(928) 632-8494',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey tree/landscape service directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','tree_service','Tree Service & Brush Clearing','Russ Murrays Tree Service',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey tree/landscape service directory candidate.','assistant bootstrap research: Dewey Tree Service & Brush Clearing',0,
 null,'(831) 659-2322',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey tree/landscape service directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','tree_service','Tree Service & Brush Clearing','Hayden Tree Farms Inc',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey tree/landscape service directory candidate.','assistant bootstrap research: Dewey Tree Service & Brush Clearing',0,
 null,'(928) 925-8721',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey tree/landscape service directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','landscaping','Landscaping & Yard Cleanup','Mdi Landscape Supplies',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey landscape-supply/service directory candidate.','assistant bootstrap research: Dewey Landscaping & Yard Cleanup',0,
 null,'(928) 632-5320',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey landscape-supply/service directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','floor_carpet','Floor & Carpet Cleaning','AAA Classic Carpet Cleaning',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey carpet-cleaning directory candidate.','assistant bootstrap research: Dewey Floor & Carpet Cleaning',0,
 null,'(928) 273-1257',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey carpet-cleaning directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','pressure_washing','Pressure Washing','Power Wash Plus',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey pressure-washing directory candidate.','assistant bootstrap research: Dewey Pressure Washing',0,
 null,'(928) 772-7512',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey pressure-washing directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','garage_door','Garage Door Repair','All Tech Garage Door',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey garage-door service directory candidate.','assistant bootstrap research: Dewey Garage Door Repair',0,
 null,'(928) 772-1665',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey garage-door service directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','pest_control','Pest Control','Absolute Pest Control',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey pest-control directory candidate.','assistant bootstrap research: Dewey Pest Control',0,
 null,'(928) 775-5125',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey pest-control directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','handyman_repairs','Handyman','Home Repair By Dennis',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey home-repair/handyman directory candidate.','assistant bootstrap research: Dewey Handyman',0,
 null,null,false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey home-repair/handyman directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','handyman_repairs','Handyman','Scott Weigele Remodel And Repair',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey remodel/repair directory candidate.','assistant bootstrap research: Dewey Handyman',0,
 null,'(928) 458-9166',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey remodel/repair directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','epoxy_flooring','Epoxy & Concrete Floors','Kilduff Concrete LLC',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey concrete contractor directory candidate.','assistant bootstrap research: Dewey Epoxy & Concrete Floors',0,
 null,'(928) 775-3801',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey concrete contractor directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','epoxy_flooring','Epoxy & Concrete Floors','Joe Webb Concrete LLC',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey concrete contractor directory candidate.','assistant bootstrap research: Dewey Epoxy & Concrete Floors',0,
 null,'(928) 632-5438',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey concrete contractor directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Professional Fence',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey fence/facility contractor directory candidate.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 632-8330',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey fence/facility contractor directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Diversified Roofing',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey roofing contractor directory candidate.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 772-4866',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey roofing contractor directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Roofing Wholesale Co Inc',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey roofing/facility supplier directory candidate.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 632-8160',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey roofing/facility supplier directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Artistic Design Tile & Stone',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey tile/stone contractor directory candidate.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 772-7574',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey tile/stone contractor directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Allred Drywall',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey drywall contractor directory candidate.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 632-0301',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey drywall contractor directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Sanders Plastering Systems',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey plastering contractor directory candidate.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 632-5008',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey plastering contractor directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','High Country Cabinets',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey cabinet/woodwork facility contractor directory candidate.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 772-2250',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey cabinet/woodwork facility contractor directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Ultimate Woodworks',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey woodworking/facility contractor directory candidate.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey woodworking/facility contractor directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Precision Utility Locating',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey utility-locating contractor directory candidate.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 632-9422',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey utility-locating contractor directory candidate."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','AZ Service LLC',
 'https://www.whereorg.com/dewey-az','whereorg.com','Dewey service contractor directory candidate.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 379-0340',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_01","researched_at":"2026-10-26T23:59:30Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey service contractor directory candidate."}'::jsonb
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
where p.market='Dewey-Humboldt';


-- Assistant-led Dewey-Humboldt census batch 02 (2026-10-26)
-- Dewey category-specific expansion across automotive, insurance, real estate, healthcare and construction.
-- Discovery inventory only; preserve closed status and never promote/stage/send.

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Dewey-Humboldt','general_business','other local businesses','Proto Fab',
 'https://www.whereorg.com/businesses/automotive-services-in-dewey-az','whereorg.com','Dewey automotive-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 632-0216',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey automotive-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','general_business','other local businesses','Thumb Butte Gas & Convenience',
 'https://www.whereorg.com/businesses/automotive-services-in-dewey-az','whereorg.com','Dewey automotive-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 632-7069',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey automotive-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','general_business','other local businesses','Northern Arizona Truck Repair',
 'https://www.whereorg.com/businesses/automotive-services-in-dewey-az','whereorg.com','Dewey automotive-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 632-7388',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey automotive-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','general_business','other local businesses','Locksmith 24 Hour Service',
 'https://www.whereorg.com/businesses/automotive-services-in-dewey-az','whereorg.com','Dewey automotive-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 772-2670',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey automotive-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','general_business','other local businesses','Chevron',
 'https://www.whereorg.com/businesses/automotive-services-in-dewey-az','whereorg.com','Dewey automotive-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 775-3263',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey automotive-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','general_business','other local businesses','Mobile Rv Works',
 'https://www.whereorg.com/businesses/automotive-services-in-dewey-az','whereorg.com','Dewey automotive-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 772-2260',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey automotive-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','general_business','other local businesses','Texaco',
 'https://www.whereorg.com/businesses/automotive-services-in-dewey-az','whereorg.com','Dewey automotive-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 632-7831',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey automotive-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','general_business','other local businesses','Artist''s Touch',
 'https://www.whereorg.com/businesses/automotive-services-in-dewey-az','whereorg.com','Dewey automotive-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 632-8091',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey automotive-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','auto_dealers','auto dealers car dealerships','Whalen Auto Sales',
 'https://www.whereorg.com/businesses/automotive-services-in-dewey-az','whereorg.com','Dewey automotive-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey auto dealers car dealerships',0,
 null,'(928) 717-1788',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey automotive-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','auto_dealers','auto dealers car dealerships','Southwest Motors N Rv CO',
 'https://www.whereorg.com/businesses/automotive-services-in-dewey-az','whereorg.com','Dewey automotive-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey auto dealers car dealerships',0,
 null,'(928) 772-4858',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey automotive-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','general_business','other local businesses','Texaco Inc',
 'https://www.whereorg.com/businesses/automotive-services-in-dewey-az','whereorg.com','Dewey automotive-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 632-4075',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey automotive-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','general_business','other local businesses','Maverik Country Store',
 'https://www.whereorg.com/businesses/automotive-services-in-dewey-az','whereorg.com','Dewey automotive-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 759-7334',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey automotive-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','general_business','other local businesses','Yavapai County Jeep Posse Inc',
 'https://www.whereorg.com/businesses/automotive-services-in-dewey-az','whereorg.com','Dewey automotive-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 759-2959',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey automotive-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','auto_dealers','auto dealers car dealerships','Colt Trailer Sales',
 'https://www.whereorg.com/businesses/automotive-services-in-dewey-az','whereorg.com','Dewey automotive-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey auto dealers car dealerships',0,
 null,'(928) 632-7744',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey automotive-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','general_business','other local businesses','Affordable Small Engine And Equiment Repair',
 'https://www.whereorg.com/businesses/automotive-services-in-dewey-az','whereorg.com','Dewey automotive-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 632-8009',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey automotive-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','general_business','other local businesses','Bga Fleet Service Truck Repair',
 'https://www.whereorg.com/businesses/automotive-services-in-dewey-az','whereorg.com','Dewey automotive-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(602) 710-0250',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey automotive-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','general_business','other local businesses','Diamond Touch Inc',
 'https://www.whereorg.com/businesses/automotive-services-in-dewey-az','whereorg.com','Dewey automotive-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey other local businesses',0,
 null,null,false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey automotive-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','general_business','other local businesses','Hh Mobile Diesel Service',
 'https://www.whereorg.com/businesses/automotive-services-in-dewey-az','whereorg.com','Dewey automotive-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey other local businesses',0,
 null,'(928) 632-5317',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey automotive-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','insurance_professional','insurance agents professional offices','Southwestern Hagstedt Ins',
 'https://www.whereorg.com/businesses/insurance-in-dewey-az','whereorg.com','Dewey insurance-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey insurance agents professional offices',0,
 null,'(928) 632-1396',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey insurance-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','insurance_professional','insurance agents professional offices','Farmer''s Insurance',
 'https://www.whereorg.com/businesses/insurance-in-dewey-az','whereorg.com','Dewey insurance-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey insurance agents professional offices',0,
 null,'(928) 775-9994',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey insurance-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','insurance_professional','insurance agents professional offices','CDS',
 'https://www.whereorg.com/businesses/insurance-in-dewey-az','whereorg.com','Dewey insurance-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey insurance agents professional offices',0,
 null,'(928) 772-8614',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey insurance-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','insurance_professional','insurance agents professional offices','Group Insurance Service',
 'https://www.whereorg.com/businesses/insurance-in-dewey-az','whereorg.com','Dewey insurance-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey insurance agents professional offices',0,
 null,'(928) 632-5820',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey insurance-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','insurance_professional','insurance agents professional offices','R Bobadilla Insurance Service',
 'https://www.whereorg.com/businesses/insurance-in-dewey-az','whereorg.com','Dewey insurance-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey insurance agents professional offices',0,
 null,'(928) 775-6551',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey insurance-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','insurance_professional','insurance agents professional offices','Farmers Insurance Group',
 'https://www.whereorg.com/businesses/insurance-in-dewey-az','whereorg.com','Dewey insurance-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey insurance agents professional offices',0,
 null,'(928) 771-1483',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey insurance-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','insurance_professional','insurance agents professional offices','Farmers Insurance',
 'https://www.whereorg.com/businesses/insurance-in-dewey-az','whereorg.com','Dewey insurance-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey insurance agents professional offices',0,
 null,'(928) 771-1483',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey insurance-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','insurance_professional','insurance agents professional offices','Ron Bobadilla Insurance Service',
 'https://www.whereorg.com/businesses/insurance-in-dewey-az','whereorg.com','Dewey insurance-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey insurance agents professional offices',0,
 null,'(928) 775-6551',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey insurance-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','insurance_professional','insurance agents professional offices','State Farm Insurance - State Route 69',
 'https://www.whereorg.com/businesses/insurance-in-dewey-az','whereorg.com','Dewey insurance-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey insurance agents professional offices',0,
 null,'(928) 775-4080',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey insurance-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','insurance_professional','insurance agents professional offices','State Farm Insurance - S State Route 69',
 'https://www.whereorg.com/businesses/insurance-in-dewey-az','whereorg.com','Dewey insurance-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey insurance agents professional offices',0,
 null,'(928) 237-5801',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey insurance-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','insurance_professional','insurance agents professional offices','Sharon Hagstedt',
 'https://www.whereorg.com/businesses/insurance-in-dewey-az','whereorg.com','Dewey insurance-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey insurance agents professional offices',0,
 null,'(928) 632-1396',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey insurance-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','property_management','property management companies apartment communities','Summer Sweet Realty Pro',
 'https://www.whereorg.com/businesses/real-estate-2-in-dewey-az','whereorg.com','Dewey real-estate/lodging category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey property management companies apartment communities',0,
 null,'(928) 632-7825',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey real-estate/lodging category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','property_management','property management companies apartment communities','High Desert Home Inspections',
 'https://www.whereorg.com/businesses/real-estate-2-in-dewey-az','whereorg.com','Dewey real-estate/lodging category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey property management companies apartment communities',0,
 null,'(928) 775-0211',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey real-estate/lodging category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','property_management','property management companies apartment communities','Realty Experts',
 'https://www.whereorg.com/businesses/real-estate-2-in-dewey-az','whereorg.com','Dewey real-estate/lodging category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey property management companies apartment communities',0,
 null,'(928) 632-8055',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey real-estate/lodging category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','property_management','property management companies apartment communities','C Lewis Realty',
 'https://www.whereorg.com/businesses/real-estate-2-in-dewey-az','whereorg.com','Dewey real-estate/lodging category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey property management companies apartment communities',0,
 null,'(928) 772-4323',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey real-estate/lodging category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','hotels_motels','hotels motels lodging','Rancho Sonora Inn & Rv Park',
 'https://www.whereorg.com/businesses/real-estate-2-in-dewey-az','whereorg.com','Dewey real-estate/lodging category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey hotels motels lodging',0,
 null,'(928) 772-2612',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey real-estate/lodging category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','property_management','property management companies apartment communities','Dominic Corrao',
 'https://www.whereorg.com/businesses/real-estate-2-in-dewey-az','whereorg.com','Dewey real-estate/lodging category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey property management companies apartment communities',0,
 null,'(928) 772-8205',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey real-estate/lodging category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','property_management','property management companies apartment communities','Impact Professional Realty',
 'https://www.whereorg.com/businesses/real-estate-2-in-dewey-az','whereorg.com','Dewey real-estate/lodging category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey property management companies apartment communities',0,
 null,'(928) 632-7825',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey real-estate/lodging category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','property_management','property management companies apartment communities','Bella Realty & Development LLC',
 'https://www.whereorg.com/businesses/real-estate-2-in-dewey-az','whereorg.com','Dewey real-estate/lodging category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey property management companies apartment communities',0,
 null,'(928) 775-9011',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey real-estate/lodging category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','property_management','property management companies apartment communities','Prudential Manzanita Realty',
 'https://www.whereorg.com/businesses/real-estate-2-in-dewey-az','whereorg.com','Dewey real-estate/lodging category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey property management companies apartment communities',0,
 null,'(928) 772-0150',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey real-estate/lodging category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','property_management','property management companies apartment communities','TDH Investments L L C',
 'https://www.whereorg.com/businesses/real-estate-2-in-dewey-az','whereorg.com','Dewey real-estate/lodging category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey property management companies apartment communities',0,
 null,'(928) 632-0371',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey real-estate/lodging category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','property_management','property management companies apartment communities','Exit Realty Cool Mountain',
 'https://www.whereorg.com/businesses/real-estate-2-in-dewey-az','whereorg.com','Dewey real-estate/lodging category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey property management companies apartment communities',0,
 null,'(928) 632-1600',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey real-estate/lodging category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','property_management','property management companies apartment communities','Glenron LLC',
 'https://www.whereorg.com/businesses/real-estate-2-in-dewey-az','whereorg.com','Dewey real-estate/lodging category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey property management companies apartment communities',0,
 null,'(928) 632-5069',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey real-estate/lodging category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','property_management','property management companies apartment communities','Rafter Eleven Rv & MBL HM Park',
 'https://www.whereorg.com/businesses/real-estate-2-in-dewey-az','whereorg.com','Dewey real-estate/lodging category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey property management companies apartment communities',0,
 null,'(928) 772-8266',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey real-estate/lodging category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','property_management','property management companies apartment communities','Trendsetter Realty',
 'https://www.whereorg.com/businesses/real-estate-2-in-dewey-az','whereorg.com','Dewey real-estate/lodging category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey property management companies apartment communities',0,
 null,'(928) 772-2400',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey real-estate/lodging category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','property_management','property management companies apartment communities','Gone West Properties CO LLC',
 'https://www.whereorg.com/businesses/real-estate-2-in-dewey-az','whereorg.com','Dewey real-estate/lodging category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey property management companies apartment communities',0,
 null,null,false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey real-estate/lodging category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','property_management','property management companies apartment communities','Summer Sweet Productions',
 'https://www.whereorg.com/businesses/real-estate-2-in-dewey-az','whereorg.com','Dewey real-estate/lodging category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey property management companies apartment communities',0,
 null,'(928) 632-7825',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey real-estate/lodging category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','property_management','property management companies apartment communities','Jennie Shook Real Estate',
 'https://www.whereorg.com/businesses/real-estate-2-in-dewey-az','whereorg.com','Dewey real-estate/lodging category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey property management companies apartment communities',0,
 null,'(928) 632-5416',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey real-estate/lodging category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','property_management','property management companies apartment communities','Prudential Foothills Rl Est',
 'https://www.whereorg.com/businesses/real-estate-2-in-dewey-az','whereorg.com','Dewey real-estate/lodging category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey property management companies apartment communities',0,
 null,'(928) 772-3105',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey real-estate/lodging category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','property_management','property management companies apartment communities','Circle P Development LLC',
 'https://www.whereorg.com/businesses/real-estate-2-in-dewey-az','whereorg.com','Dewey real-estate/lodging category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey property management companies apartment communities',0,
 null,null,false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey real-estate/lodging category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','property_management','property management companies apartment communities','Sl Development LLC',
 'https://www.whereorg.com/businesses/real-estate-2-in-dewey-az','whereorg.com','Dewey real-estate/lodging category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey property management companies apartment communities',0,
 null,'(928) 775-8630',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey real-estate/lodging category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','property_management','property management companies apartment communities','Devstar Realty LLC',
 'https://www.whereorg.com/businesses/real-estate-2-in-dewey-az','whereorg.com','Dewey real-estate/lodging category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey property management companies apartment communities',0,
 null,'(928) 420-0057',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey real-estate/lodging category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','property_management','property management companies apartment communities','Statler Brothers LLC',
 'https://www.whereorg.com/businesses/real-estate-2-in-dewey-az','whereorg.com','Dewey real-estate/lodging category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey property management companies apartment communities',0,
 null,'(928) 632-0014',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey real-estate/lodging category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','property_management','property management companies apartment communities','Tri-City Appraisals',
 'https://www.whereorg.com/businesses/real-estate-2-in-dewey-az','whereorg.com','Dewey real-estate/lodging category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey property management companies apartment communities',0,
 null,'(928) 899-3140',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey real-estate/lodging category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','hotels_motels','hotels motels lodging','Bear Creek Cabins',
 'https://www.whereorg.com/businesses/real-estate-2-in-dewey-az','whereorg.com','Dewey real-estate/lodging category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey hotels motels lodging',0,
 null,'(928) 632-5035',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey real-estate/lodging category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','therapy_behavioral','therapy counseling behavioral health clinics','Daybreak Behavioral Resources',
 'https://www.whereorg.com/businesses/healthcare-in-dewey-az','whereorg.com','Dewey healthcare-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey therapy counseling behavioral health clinics',0,
 null,'(928) 632-5529',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey healthcare-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','dental','dentists dental offices orthodontists','Our Family Dentist',
 'https://www.whereorg.com/businesses/healthcare-in-dewey-az','whereorg.com','Dewey healthcare-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey dentists dental offices orthodontists',0,
 null,'(928) 632-8333',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey healthcare-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','senior_daycare','senior living assisted living daycare childcare','Caring Senior Service',
 'https://www.whereorg.com/businesses/healthcare-in-dewey-az','whereorg.com','Dewey healthcare-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey senior living assisted living daycare childcare',0,
 null,'(928) 759-5760',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey healthcare-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','medical_centers','hospitals medical centers clinics','Home Dialysys',
 'https://www.whereorg.com/businesses/healthcare-in-dewey-az','whereorg.com','Dewey healthcare-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey hospitals medical centers clinics',0,
 null,'(928) 713-5122',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey healthcare-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','medical_centers','hospitals medical centers clinics','Dewey Medical Center',
 'https://www.whereorg.com/businesses/healthcare-in-dewey-az','whereorg.com','Dewey healthcare-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey hospitals medical centers clinics',0,
 null,'(928) 632-1155',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey healthcare-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','medical_centers','hospitals medical centers clinics','Dewey Medical Center Diagnostic Lab Inc',
 'https://www.whereorg.com/businesses/healthcare-in-dewey-az','whereorg.com','Dewey healthcare-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey hospitals medical centers clinics',0,
 null,null,false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey healthcare-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','medical_centers','hospitals medical centers clinics','Khan Marium',
 'https://www.whereorg.com/businesses/healthcare-in-dewey-az','whereorg.com','Dewey healthcare-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey hospitals medical centers clinics',0,
 null,'(928) 916-0012',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey healthcare-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','medical_centers','hospitals medical centers clinics','Accentcare Inc',
 'https://www.whereorg.com/businesses/healthcare-in-dewey-az','whereorg.com','Dewey healthcare-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey hospitals medical centers clinics',0,
 null,'(928) 632-5219',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey healthcare-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','medical_centers','hospitals medical centers clinics','Classes Unlimited',
 'https://www.whereorg.com/businesses/healthcare-in-dewey-az','whereorg.com','Dewey healthcare-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey hospitals medical centers clinics',0,
 null,'(928) 710-7787',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey healthcare-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','therapy_behavioral','therapy counseling behavioral health clinics','Mikrut Physical Therapy LLC',
 'https://www.whereorg.com/businesses/healthcare-in-dewey-az','whereorg.com','Dewey healthcare-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey therapy counseling behavioral health clinics',0,
 null,'(928) 632-0800',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey healthcare-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'buyer','Dewey-Humboldt','therapy_behavioral','therapy counseling behavioral health clinics','Lyonnais Therapy Services LLC',
 'https://www.whereorg.com/businesses/healthcare-in-dewey-az','whereorg.com','Dewey healthcare-category directory candidate; direct/current verification remains required.','assistant bootstrap research: Dewey therapy counseling behavioral health clinics',0,
 null,'(928) 592-8757',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey healthcare-category directory candidate; direct/current verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Paul Merritt Construction',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 772-9376',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Northern Arizona Masonry Inc',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 771-0335',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Steve Reddell Construction',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 632-9748',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Summit Ridge Industries',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 632-4663',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Silverwood Homes LLC',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 772-5744',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Moon Crest Enterprises LLC',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 632-9402',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Jim Lovin Construction',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 632-0286',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','garage_door','Garage Door Repair','High Desert Doors',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Garage Door Repair',0,
 null,'(928) 567-1453',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','ADS Builders',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 717-4489',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','rural_property','Rural Property Help','A S P Excavating',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Rural Property Help',0,
 null,'(928) 632-7821',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Phillips Homes',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 632-5567',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','S & D Construction',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 772-9180',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Dwight Peterson & Sons Inc',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 772-5051',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Masco',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 778-0222',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Seneca Design Materials Group',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 759-8999',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Jerry Carnes',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 632-8079',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','rural_property','Rural Property Help','J T''s Septic LLC',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Rural Property Help',0,
 null,'(928) 632-7077',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Kjb Construction LLC',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 632-8369',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Black Canyon Homes',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 772-2913',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Thurman Construction Inc',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 772-9789',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Reddell Steve Construction',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 632-9748',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Ross Equipment',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 772-0067',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Pine Time Builders Inc',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 775-6118',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','High Desert Woodworks LLC',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 632-0234',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Stapp Drywall Inc',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 632-8057',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','epoxy_flooring','Epoxy & Concrete Floors','Rjb Concrete',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Epoxy & Concrete Floors',0,
 null,'(928) 632-0429',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Sierra Pacific',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 772-1700',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','rural_property','Rural Property Help','Docs Dirt Works',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Rural Property Help',0,
 null,'(928) 632-7491',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','rural_property','Rural Property Help','Dewey Dirt Diggers',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Rural Property Help',0,
 null,'(928) 713-2055',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','R C Savage Construction Corp',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 632-8429',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','House Of Furniture Warehouse',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 632-7448',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Van Horn Builders',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 632-8429',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Woodwonders',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 636-5024',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Huntington Equipment Leasing',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 772-1149',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Schuck & Sons Dewey Lumber',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 632-7662',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','A-S Portables',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 632-0955',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Phillips Three Inc',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 772-1332',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Thurman Construction Company',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 772-9789',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Mile HI Rock',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 775-5084',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','P B Mfgd Homes Inc',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 632-5499',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','L&H Homes LLC',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 775-5946',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','epoxy_flooring','Epoxy & Concrete Floors','Sundance Redi-Rock',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Epoxy & Concrete Floors',0,
 null,'(928) 759-2700',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','rural_property','Rural Property Help','Dewey Drilling & Pump Service',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Rural Property Help',0,
 null,'(928) 632-7687',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','epoxy_flooring','Epoxy & Concrete Floors','Colt Concrete LLC',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Epoxy & Concrete Floors',0,
 null,'(928) 999-2150',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Foxworth Galbraith Lumber Company',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 775-3300',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Ross Equipment Rentals',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 772-0067',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','C B R Adventures Inc',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 632-5275',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','rural_property','Rural Property Help','Summit Ridge Construction & Excavation Inc',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Rural Property Help',0,
 null,'(928) 632-4663',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Byrd Roofing',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,null,false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','T''s Quality Tile LLC',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 533-5139',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','facility_maintenance','Building Maintenance Help','Eisenhour Construction LLC',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Building Maintenance Help',0,
 null,'(928) 499-7379',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
 'vendor','Dewey-Humboldt','rural_property','Rural Property Help','A J ''s Trenching LLC',
 'https://www.whereorg.com/businesses/construction-in-dewey-az','whereorg.com','Dewey construction-category directory candidate; direct/license verification remains required.','assistant bootstrap research: Dewey Rural Property Help',0,
 null,'(928) 308-4498',false,'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_02","researched_at":"2026-10-27T00:05:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Dewey construction-category directory candidate; direct/license verification remains required."}'::jsonb
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
where p.market='Dewey-Humboldt';


-- Assistant-led Dewey-Humboldt census batch 03 (2026-10-26)
-- Direct-source verification layer for current Dewey-Humboldt buyers and vendors.
-- Inventory evidence only; preserve closed status and never promote/stage/send.

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Dewey-Humboldt','electrical_service','Electrician','Kage Electric',
 'https://kageelectric.com/','kageelectric.com','Official site confirms family-owned Dewey-Humboldt electrical contractor at 270 S Dewey Rd with residential and commercial electrical service.','assistant verification research: Dewey-Humboldt Electrician',0,
 'OFFICE-INFO@KAGEELECTRIC.COM','(928) 444-9860',true,'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_03","researched_at":"2026-10-27T00:12:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official site confirms family-owned Dewey-Humboldt electrical contractor at 270 S Dewey Rd with residential and commercial electrical service."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 'vendor','Dewey-Humboldt','backflow_plumbing','Backflow & Commercial Plumbing','R.E.D. Plumbing Inc.',
 'https://www.redplumbinginc.com/','redplumbinginc.com','Official site confirms Dewey office at 11800 E Berry Dr and full-service residential/commercial plumbing across Dewey-Humboldt and the Quad Cities.','assistant verification research: Dewey-Humboldt Backflow & Commercial Plumbing',0,
 null,'(928) 772-9296',true,'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_03","researched_at":"2026-10-27T00:12:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official site confirms Dewey office at 11800 E Berry Dr and full-service residential/commercial plumbing across Dewey-Humboldt and the Quad Cities."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 'buyer','Dewey-Humboldt','dental','dentists dental offices orthodontists','Our Family Dentist',
 'https://www.ourfamilydentist.com/','ourfamilydentist.com','Official practice site confirms full-scope family/general/cosmetic dental office at 150 S Hwy 69 Suite 5, Dewey.','assistant verification research: Dewey-Humboldt dentists dental offices orthodontists',0,
 null,'(928) 632-8333',true,'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_03","researched_at":"2026-10-27T00:12:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official practice site confirms full-scope family/general/cosmetic dental office at 150 S Hwy 69 Suite 5, Dewey."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 'buyer','Dewey-Humboldt','medical_centers','hospitals medical centers clinics','Optima Medical - Dewey',
 'https://optimamedicalaz.com/locations/mesa-arizo/','optimamedicalaz.com','Official Optima locations page lists current Dewey clinic at 12075 E AZ-69 Suite B with office and fax numbers.','assistant verification research: Dewey-Humboldt hospitals medical centers clinics',0,
 'Info@OptimaMedicalAZ.com','(928) 772-1673',true,'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_03","researched_at":"2026-10-27T00:12:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official Optima locations page lists current Dewey clinic at 12075 E AZ-69 Suite B with office and fax numbers."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 'buyer','Dewey-Humboldt','gyms_fitness','gyms fitness centers recreation centers','Prescott Golf Club',
 'https://www.prescottgolfclub.com/','prescottgolfclub.com','Official site confirms semi-private/public golf facility, practice complex, restaurant and events at 1030 N Prescott Country Club, Dewey.','assistant verification research: Dewey-Humboldt gyms fitness centers recreation centers',0,
 'info@prescottgolfclub.com','(928) 772-8984',true,'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_03","researched_at":"2026-10-27T00:12:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official site confirms semi-private/public golf facility, practice complex, restaurant and events at 1030 N Prescott Country Club, Dewey."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 'buyer','Dewey-Humboldt','grocery','grocery stores supermarkets markets','Mortimer Farms Market & Deli',
 'https://mortimerfarmsaz.com/','mortimerfarmsaz.com','Official current site identifies Dewey farm market, deli and bakery at 12907 E State Route 169, open daily year-round.','assistant verification research: Dewey-Humboldt grocery stores supermarkets markets',0,
 'mortimerfarmsaz@gmail.com','(928) 830-1116',true,'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_03","researched_at":"2026-10-27T00:12:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official current site identifies Dewey farm market, deli and bakery at 12907 E State Route 169, open daily year-round."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 'buyer','Dewey-Humboldt','theaters_entertainment','theaters cinemas entertainment venues','Mortimer Farms',
 'https://mortimerfarmsaz.com/','mortimerfarmsaz.com','Official site confirms large Dewey agritourism/event operation with farm park, festivals, barn dances, workshops, weddings and private/corporate events.','assistant verification research: Dewey-Humboldt theaters cinemas entertainment venues',0,
 'support@mortimerfarmsaz.com','(928) 830-1116',true,'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_03","researched_at":"2026-10-27T00:12:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official site confirms large Dewey agritourism/event operation with farm park, festivals, barn dances, workshops, weddings and private/corporate events."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 'buyer','Dewey-Humboldt','insurance_professional','insurance agents professional offices','Heidi Fowler - State Farm Insurance Agent',
 'https://heidifowlerinsurance.com/','heidifowlerinsurance.com','Official agent site confirms Dewey office at 150 S Highway 69 Suite 9 and personal, small-business and commercial insurance services.','assistant verification research: Dewey-Humboldt insurance agents professional offices',0,
 null,'(928) 775-4080',true,'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_03","researched_at":"2026-10-27T00:12:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official agent site confirms Dewey office at 150 S Highway 69 Suite 9 and personal, small-business and commercial insurance services."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 'vendor','Dewey-Humboldt','hvac_heat','Heating & Air','Goettl''s High Desert Mechanical',
 'https://goettlshdm.com/','goettlshdm.com','Official company site confirms Northern Arizona HVAC contractor with 24/7 service; current local evidence places Dewey operation at 11715 E Berry Dr.','assistant verification research: Dewey-Humboldt Heating & Air',0,
 null,'(928) 567-2200',true,'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_03","researched_at":"2026-10-27T00:12:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official company site confirms Northern Arizona HVAC contractor with 24/7 service; current local evidence places Dewey operation at 11715 E Berry Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
 'vendor','Dewey-Humboldt','backflow_plumbing','Backflow & Commercial Plumbing','Goettl''s High Desert Mechanical',
 'https://goettlshdm.com/','goettlshdm.com','Official company site provides full residential/commercial plumbing, drain/sewer, water-quality and emergency services; current local evidence places Dewey operation at 11715 E Berry Dr.','assistant verification research: Dewey-Humboldt Backflow & Commercial Plumbing',0,
 null,'(928) 567-2200',true,'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_dewey_humboldt_batch_03","researched_at":"2026-10-27T00:12:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official company site provides full residential/commercial plumbing, drain/sewer, water-quality and emergency services; current local evidence places Dewey operation at 11715 E Berry Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
 snippet=excluded.snippet,
 search_query=excluded.search_query,
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
where p.market='Dewey-Humboldt';
