

-- Assistant-led Flagstaff vendor/trade census batch 02 (2026-10-26)
insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','hvac_heat','Heating & Air','Fiscor Heating and Cooling',
 'https://business.flagstaffchamber.com/list/ql/hvac-service-repair-and-installation-28','business.flagstaffchamber.com','Flagstaff Chamber lists licensed, bonded and insured HVAC contractor in Flagstaff.','assistant census research: Flagstaff Heating & Air',0,
 null,'(928) 227-3350',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Flagstaff Chamber lists licensed, bonded and insured HVAC contractor in Flagstaff."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','hvac_heat','Heating & Air','Comfort Systems of Arizona Inc.',
 'https://business.flagstaffchamber.com/list/ql/hvac-service-repair-and-installation-28','business.flagstaffchamber.com','Flagstaff Chamber HVAC listing at 5311 E Empire Ave.','assistant census research: Flagstaff Heating & Air',0,
 null,'(928) 774-9034',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Flagstaff Chamber HVAC listing at 5311 E Empire Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','backflow_plumbing','Backflow & Commercial Plumbing','TCR Rooter & Plumbing Repair',
 'https://business.flagstaffchamber.com/list/category/plumbing-supplies-services-1167','business.flagstaffchamber.com','Flagstaff Chamber plumbing/rooter listing at 1612 N West St.','assistant census research: Flagstaff Backflow & Commercial Plumbing',0,
 null,'(928) 773-4905',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Flagstaff Chamber plumbing/rooter listing at 1612 N West St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','backflow_plumbing','Backflow & Commercial Plumbing','Liberty Plumbing',
 'https://business.flagstaffchamber.com/list/ql/contractor-30?dm=True&o=alpha','business.flagstaffchamber.com','Chamber says Liberty Plumbing and Solar provides commercial and residential plumbing services in Flagstaff.','assistant census research: Flagstaff Backflow & Commercial Plumbing',0,
 null,'(928) 851-7779',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Chamber says Liberty Plumbing and Solar provides commercial and residential plumbing services in Flagstaff."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','backflow_plumbing','Backflow & Commercial Plumbing','RKS Plumbing & Mechanical Inc.',
 'https://business.flagstaffchamber.com/members/category/construction-related-1317?o=alpha','business.flagstaffchamber.com','Current Chamber construction-related listing for Flagstaff plumbing/mechanical contractor.','assistant census research: Flagstaff Backflow & Commercial Plumbing',0,
 null,'(602) 996-1866',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber construction-related listing for Flagstaff plumbing/mechanical contractor."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','electrical_service','Electrician','Cannon and Wendt Electric',
 'https://business.flagstaffchamber.com/list/category/electrical-1326','business.flagstaffchamber.com','Flagstaff Chamber electrical-construction listing at 1050 N San Francisco St.','assistant census research: Flagstaff Electrician',0,
 null,'(602) 279-1681',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Flagstaff Chamber electrical-construction listing at 1050 N San Francisco St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','electrical_service','Electrician','N.J. Shaum & Son, Inc., Electrical Contractors',
 'https://business.flagstaffchamber.com/list/category/electrical-1326','business.flagstaffchamber.com','Chamber says commercial, industrial and residential electrical repair/installation/maintenance; Flagstaff office.','assistant census research: Flagstaff Electrician',0,
 null,'(928) 774-4564',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Chamber says commercial, industrial and residential electrical repair/installation/maintenance; Flagstaff office."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','electrical_service','Electrician','Goodman Electric',
 'https://business.flagstaffchamber.com/list/category/electrical-1326','business.flagstaffchamber.com','Current Chamber electrical contractor listing at 5310 E Northgate Loop.','assistant census research: Flagstaff Electrician',0,
 null,'(928) 526-0256',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber electrical contractor listing at 5310 E Northgate Loop."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','facility_maintenance','Building Maintenance Help','B3 Construction LLC',
 'https://business.flagstaffchamber.com/list/category/contractors-1318','business.flagstaffchamber.com','Full-service commercial/residential remodel contractor; tenant improvements.','assistant census research: Flagstaff Building Maintenance Help',0,
 null,'(928) 699-8046',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Full-service commercial/residential remodel contractor; tenant improvements."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','facility_maintenance','Building Maintenance Help','Barden Home Builders',
 'https://business.flagstaffchamber.com/list/category/contractors-1318','business.flagstaffchamber.com','Flagstaff construction/remodeling contractor.','assistant census research: Flagstaff Building Maintenance Help',0,
 null,'(928) 607-4015',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Flagstaff construction/remodeling contractor."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','facility_maintenance','Building Maintenance Help','Caliente Construction, Inc.',
 'https://business.flagstaffchamber.com/list/category/contractors-1318','business.flagstaffchamber.com','Commercial general contractor with Flagstaff office.','assistant census research: Flagstaff Building Maintenance Help',0,
 null,'(928) 864-5070',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Commercial general contractor with Flagstaff office."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','facility_maintenance','Building Maintenance Help','CORE Construction',
 'https://business.flagstaffchamber.com/list/category/contractors-1318','business.flagstaffchamber.com','General construction company with Flagstaff office.','assistant census research: Flagstaff Building Maintenance Help',0,
 null,'(928) 433-4919',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"General construction company with Flagstaff office."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','facility_maintenance','Building Maintenance Help','Eberson Construction and Remodeling',
 'https://business.flagstaffchamber.com/list/category/contractors-1318','business.flagstaffchamber.com','Flagstaff construction/remodeling contractor.','assistant census research: Flagstaff Building Maintenance Help',0,
 null,'(928) 421-1177',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Flagstaff construction/remodeling contractor."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','facility_maintenance','Building Maintenance Help','High Caliber Construction',
 'https://business.flagstaffchamber.com/list/category/contractors-1318','business.flagstaffchamber.com','Flagstaff construction/renovation contractor.','assistant census research: Flagstaff Building Maintenance Help',0,
 null,'(928) 526-2156',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Flagstaff construction/renovation contractor."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','facility_maintenance','Building Maintenance Help','Loven Contracting, Inc.',
 'https://business.flagstaffchamber.com/list/category/contractors-1318','business.flagstaffchamber.com','Flagstaff contractor specializing in new construction, tenant improvement, preservation and renovation.','assistant census research: Flagstaff Building Maintenance Help',0,
 null,'(928) 779-5737',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Flagstaff contractor specializing in new construction, tenant improvement, preservation and renovation."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','facility_maintenance','Building Maintenance Help','JKC Inc General Contractor',
 'https://business.flagstaffchamber.com/list/category/contractors-1318','business.flagstaffchamber.com','Flagstaff general contractor.','assistant census research: Flagstaff Building Maintenance Help',0,
 null,'(928) 606-4378',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Flagstaff general contractor."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','facility_maintenance','Building Maintenance Help','Kinney Construction Services',
 'https://business.flagstaffchamber.com/list/category/contractors-1318','business.flagstaffchamber.com','Flagstaff construction service company.','assistant census research: Flagstaff Building Maintenance Help',0,
 null,'(928) 779-2820',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Flagstaff construction service company."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','facility_maintenance','Building Maintenance Help','Mike Furr Construction, Inc.',
 'https://business.flagstaffchamber.com/list/category/contractors-1318','business.flagstaffchamber.com','Flagstaff construction contractor.','assistant census research: Flagstaff Building Maintenance Help',0,
 null,'(928) 779-1473',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Flagstaff construction contractor."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','facility_maintenance','Building Maintenance Help','Trusted Trades LLC',
 'https://business.flagstaffchamber.com/list/category/contractors-1318','business.flagstaffchamber.com','Flagstaff trades/contractor listing.','assistant census research: Flagstaff Building Maintenance Help',0,
 null,'(928) 316-6350',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Flagstaff trades/contractor listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','facility_maintenance','Building Maintenance Help','DaBella',
 'https://business.flagstaffchamber.com/list/category/contractors-1318','business.flagstaffchamber.com','Flagstaff contractor office.','assistant census research: Flagstaff Building Maintenance Help',0,
 null,'(928) 224-0717',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Flagstaff contractor office."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','facility_maintenance','Building Maintenance Help','Outlook Construction & Remodeling, Inc.',
 'https://business.flagstaffchamber.com/list/category/contractors-1318','business.flagstaffchamber.com','Flagstaff general contractor specializing in kitchens, baths, additions and custom residences.','assistant census research: Flagstaff Building Maintenance Help',0,
 null,'(928) 707-1802',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Flagstaff general contractor specializing in kitchens, baths, additions and custom residences."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','garage_door','Garage Door Repair','Art of Doors, LLC',
 'https://business.flagstaffchamber.com/list/category/contractors-1318','business.flagstaffchamber.com','Flagstaff Chamber contractor listing for door services at 2301 E 5th Ave.','assistant census research: Flagstaff Garage Door Repair',0,
 null,'(928) 864-9320',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Flagstaff Chamber contractor listing for door services at 2301 E 5th Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','garage_door','Garage Door Repair','Loren Vickers Overhead Door, Inc.',
 'https://business.flagstaffchamber.com/list/category/contractors-1318','business.flagstaffchamber.com','Flagstaff Chamber overhead-door contractor listing at 1716 N Center St.','assistant census research: Flagstaff Garage Door Repair',0,
 null,'(928) 774-2947',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Flagstaff Chamber overhead-door contractor listing at 1716 N Center St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','facility_maintenance','Building Maintenance Help','Altitude Roofing LLC',
 'https://business.flagstaffchamber.com/list/category/contractors-roofing-1044','business.flagstaffchamber.com','Current Flagstaff Chamber residential/commercial roofing contractor listing.','assistant census research: Flagstaff Building Maintenance Help',0,
 null,'(928) 220-7663',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Flagstaff Chamber residential/commercial roofing contractor listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','facility_maintenance','Building Maintenance Help','LCR Roofing Inc.',
 'https://business.flagstaffchamber.com/list/category/contractors-roofing-1044','business.flagstaffchamber.com','Current Flagstaff Chamber residential/commercial roofing contractor listing.','assistant census research: Flagstaff Building Maintenance Help',0,
 null,'(928) 606-8406',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Flagstaff Chamber residential/commercial roofing contractor listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','facility_maintenance','Building Maintenance Help','Northern Arizona Building and Investments LLC',
 'https://business.flagstaffchamber.com/list/category/contractors-roofing-1044','business.flagstaffchamber.com','Current Flagstaff Chamber residential/commercial roofing contractor listing.','assistant census research: Flagstaff Building Maintenance Help',0,
 null,'(928) 853-1677',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Flagstaff Chamber residential/commercial roofing contractor listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','facility_maintenance','Building Maintenance Help','Northern Arizona Roof Services',
 'https://business.flagstaffchamber.com/list/category/contractors-roofing-1044','business.flagstaffchamber.com','Current Flagstaff Chamber residential/commercial roofing contractor listing.','assistant census research: Flagstaff Building Maintenance Help',0,
 null,'(928) 366-3504',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Flagstaff Chamber residential/commercial roofing contractor listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','landscaping','Landscaping & Yard Cleanup','L&S Excavating and Landscaping',
 'https://business.flagstaffchamber.com/list/category/landscaping-landscaping-design-1144?dm=True&o=','business.flagstaffchamber.com','Flagstaff excavation/landscaping contractor; dirt work and property improvements.','assistant census research: Flagstaff Landscaping & Yard Cleanup',0,
 null,'(928) 212-9306',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Flagstaff excavation/landscaping contractor; dirt work and property improvements."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','landscaping','Landscaping & Yard Cleanup','Agassiz Landscape Group LLC',
 'https://business.flagstaffchamber.com/list/category/landscaping-landscaping-design-1144?dm=True&o=','business.flagstaffchamber.com','Current Flagstaff Chamber landscaping listing.','assistant census research: Flagstaff Landscaping & Yard Cleanup',0,
 null,'(928) 525-0300',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Flagstaff Chamber landscaping listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','landscaping','Landscaping & Yard Cleanup','JB Construction and Landscape',
 'https://business.flagstaffchamber.com/list/category/contractors-1318','business.flagstaffchamber.com','Flagstaff construction and landscape contractor.','assistant census research: Flagstaff Landscaping & Yard Cleanup',0,
 null,'(928) 707-0517',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Flagstaff construction and landscape contractor."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','commercial_cleaning','Commercial Cleaning','Grand Slam Janitorial',
 'https://business.flagstaffchamber.com/list/ql/public-utilities-environment-19','business.flagstaffchamber.com','Current Flagstaff Chamber janitorial listing.','assistant census research: Flagstaff Commercial Cleaning',0,
 null,'(928) 588-3828',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Flagstaff Chamber janitorial listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','commercial_cleaning','Commercial Cleaning','Twilight Janitorial Service, Inc.',
 'https://business.flagstaffchamber.com/list/member/twilight-janitorial-service-inc-10074','business.flagstaffchamber.com','Chamber describes 24/7 licensed/insured/bonded commercial janitorial service for offices, warehouses, medical/dental, manufacturing, restaurants and churches.','assistant census research: Flagstaff Commercial Cleaning',0,
 null,'928-853-8064',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Chamber describes 24/7 licensed/insured/bonded commercial janitorial service for offices, warehouses, medical/dental, manufacturing, restaurants and churches."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','commercial_cleaning','Commercial Cleaning','Northern Flagstaff Janitorial',
 'https://business.flagstaffchamber.com/list/ql/public-utilities-environment-19','business.flagstaffchamber.com','Current Flagstaff Chamber janitorial listing.','assistant census research: Flagstaff Commercial Cleaning',0,
 null,'(928) 864-7453',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Flagstaff Chamber janitorial listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','commercial_cleaning','Commercial Cleaning','Pinnacle Building Services',
 'https://business.flagstaffchamber.com/list/category/construction-related-1317?dm=True&o=','business.flagstaffchamber.com','Flagstaff building/janitorial service with more than two decades of local operation.','assistant census research: Flagstaff Commercial Cleaning',0,
 null,'(928) 774-7228',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Flagstaff building/janitorial service with more than two decades of local operation."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','handyman_repairs','Handyman','Kopa Home Services',
 'https://business.flagstaffchamber.com/list/ql/public-utilities-environment-19','business.flagstaffchamber.com','Chamber says Kopa provides repair and maintenance for rentals, commercial spaces and residences.','assistant census research: Flagstaff Handyman',0,
 null,'(928) 864-9911',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Chamber says Kopa provides repair and maintenance for rentals, commercial spaces and residences."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','pest_control','Pest Control','Canyon Pest Control',
 'https://business.flagstaffchamber.com/list/ql/home-garden-12','business.flagstaffchamber.com','Current Flagstaff Chamber pest-control listing.','assistant census research: Flagstaff Pest Control',0,
 null,'(330) 978-2799',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Flagstaff Chamber pest-control listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','floor_carpet','Floor & Carpet Cleaning','Twilight Janitorial Service, Inc.',
 'https://business.flagstaffchamber.com/list/member/twilight-janitorial-service-inc-10074','business.flagstaffchamber.com','Chamber states floor stripping/waxing, tile/grout and carpet cleaning for commercial clients.','assistant census research: Flagstaff Floor & Carpet Cleaning',0,
 null,'928-853-8064',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Chamber states floor stripping/waxing, tile/grout and carpet cleaning for commercial clients."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','window_cleaning','Window Cleaning','Twilight Janitorial Service, Inc.',
 'https://business.flagstaffchamber.com/list/member/twilight-janitorial-service-inc-10074','business.flagstaffchamber.com','Chamber states commercial window washing among service offerings.','assistant census research: Flagstaff Window Cleaning',0,
 null,'928-853-8064',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Chamber states commercial window washing among service offerings."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','pressure_washing','Pressure Washing','Twilight Janitorial Service, Inc.',
 'https://business.flagstaffchamber.com/list/member/twilight-janitorial-service-inc-10074','business.flagstaffchamber.com','Chamber states pressure washing among commercial cleaning services.','assistant census research: Flagstaff Pressure Washing',0,
 null,'928-853-8064',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Chamber states pressure washing among commercial cleaning services."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','junk_hauling','Junk Removal','Bleeker''s Boxes',
 'https://business.flagstaffchamber.com/list/category/construction-related-products-services-1280','business.flagstaffchamber.com','Flagstaff rolloff trash container and portable construction-site storage service.','assistant census research: Flagstaff Junk Removal',0,
 null,'(928) 526-1455',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Flagstaff rolloff trash container and portable construction-site storage service."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','junk_hauling','Junk Removal','WM',
 'https://business.flagstaffchamber.com/list/category/contractors-1318','business.flagstaffchamber.com','Flagstaff waste/recycling operator listed by Chamber.','assistant census research: Flagstaff Junk Removal',0,
 null,'(928) 779-2950',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Flagstaff waste/recycling operator listed by Chamber."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','rural_property','Septic, Grading & Wells','L&S Excavating and Landscaping',
 'https://business.flagstaffchamber.com/list/category/construction-related-1317?dm=True&o=','business.flagstaffchamber.com','Flagstaff excavation contractor for dirt work and site preparation.','assistant census research: Flagstaff Septic, Grading & Wells',0,
 null,'(928) 212-9306',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Flagstaff excavation contractor for dirt work and site preparation."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','epoxy_flooring','Epoxy & Concrete Floors','Northern Arizona Epoxy Floors, LLC',
 'https://business.flagstaffchamber.com/list/ql/home-garden-12','business.flagstaffchamber.com','Current Flagstaff Chamber home/garden directory identifies local epoxy-flooring business.','assistant census research: Flagstaff Epoxy & Concrete Floors',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Flagstaff Chamber home/garden directory identifies local epoxy-flooring business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','facility_maintenance','Building Maintenance Help','HomeWatch Alliance, LLC',
 'https://business.flagstaffchamber.com/list/ql/home-garden-12','business.flagstaffchamber.com','Flagstaff property/home-watch maintenance business.','assistant census research: Flagstaff Building Maintenance Help',0,
 null,'(928) 224-2824',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Flagstaff property/home-watch maintenance business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','facility_maintenance','Building Maintenance Help','Della Terra Home Services',
 'https://business.flagstaffchamber.com/list/ql/home-garden-12','business.flagstaffchamber.com','Flagstaff home/property services business.','assistant census research: Flagstaff Building Maintenance Help',0,
 null,'(928) 522-4028',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Flagstaff home/property services business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','electrical_service','Electrician','Northern Arizona Wind and Sun, Inc.',
 'https://business.flagstaffchamber.com/list/category/energy-1329','business.flagstaffchamber.com','Flagstaff renewable-energy/electrical systems company listed by Chamber.','assistant census research: Flagstaff Electrician',0,
 null,'(928) 526-8017',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_vendors_02","researched_at":"2026-10-27T00:03:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Flagstaff renewable-energy/electrical systems company listed by Chamber."}'::jsonb
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
),updated_at=now() where p.market='Flagstaff';


-- Assistant-led verified Flagstaff batch 03 (2026-10-26)
insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Flagstaff','hvac_heat','Heating & Air','Fiscor Plumbing & Air',
 'https://fiscorhvac.com/contact/','fiscorhvac.com','Direct site lists Flagstaff office at 1338 W Forest Meadows St Suite 120 and 24/7 heating/cooling/plumbing service; ROC 313494.','assistant verified research: Flagstaff Heating & Air',0,
 null,'(928) 300-4002',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_verified_03","researched_at":"2026-10-27T00:12:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site lists Flagstaff office at 1338 W Forest Meadows St Suite 120 and 24/7 heating/cooling/plumbing service; ROC 313494."}'::jsonb
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
 'vendor','Flagstaff','backflow_plumbing','Backflow & Commercial Plumbing','Fiscor Plumbing & Air',
 'https://fiscorhvac.com/contact/','fiscorhvac.com','Direct site lists Flagstaff office and explicitly provides plumbing service in addition to heating/cooling.','assistant verified research: Flagstaff Backflow & Commercial Plumbing',0,
 null,'(928) 300-4002',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_verified_03","researched_at":"2026-10-27T00:12:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site lists Flagstaff office and explicitly provides plumbing service in addition to heating/cooling."}'::jsonb
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
 'vendor','Flagstaff','electrical_service','Electrician','N. J. Shaum & Son, Inc.',
 'https://shaum-electric.com/','shaum-electric.com','Direct site lists 300 S Babbitt Dr Suite 1, Flagstaff and commercial, industrial and residential electrical repair, installation and maintenance.','assistant verified research: Flagstaff Electrician',0,
 'info@shaum-electric.com','(928) 774-4564',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_verified_03","researched_at":"2026-10-27T00:12:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site lists 300 S Babbitt Dr Suite 1, Flagstaff and commercial, industrial and residential electrical repair, installation and maintenance."}'::jsonb
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
 'vendor','Flagstaff','commercial_cleaning','Commercial Cleaning','Twilight Janitorial Service, Inc.',
 'https://www.twilightjanitorial.com/about-us','twilightjanitorial.com','Direct site states locally owned licensed/insured/bonded 24/7 commercial janitorial service in and around Flagstaff.','assistant verified research: Flagstaff Commercial Cleaning',0,
 null,'(928) 853-8064',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_verified_03","researched_at":"2026-10-27T00:12:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site states locally owned licensed/insured/bonded 24/7 commercial janitorial service in and around Flagstaff."}'::jsonb
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
 'vendor','Flagstaff','floor_carpet','Floor & Carpet Cleaning','Twilight Janitorial Service, Inc.',
 'https://www.twilightjanitorial.com/about-us','twilightjanitorial.com','Direct site explicitly lists VCT stripping/waxing, tile/grout, carpet cleaning and spot removal for commercial clients.','assistant verified research: Flagstaff Floor & Carpet Cleaning',0,
 null,'(928) 853-8064',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_verified_03","researched_at":"2026-10-27T00:12:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site explicitly lists VCT stripping/waxing, tile/grout, carpet cleaning and spot removal for commercial clients."}'::jsonb
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
 'vendor','Flagstaff','window_cleaning','Window Cleaning','Twilight Janitorial Service, Inc.',
 'https://www.twilightjanitorial.com/about-us','twilightjanitorial.com','Direct site explicitly lists commercial window washing among its Flagstaff services.','assistant verified research: Flagstaff Window Cleaning',0,
 null,'(928) 853-8064',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_verified_03","researched_at":"2026-10-27T00:12:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site explicitly lists commercial window washing among its Flagstaff services."}'::jsonb
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
 'vendor','Flagstaff','pressure_washing','Pressure Washing','Twilight Janitorial Service, Inc.',
 'https://www.twilightjanitorial.com/about-us','twilightjanitorial.com','Direct site explicitly lists pressure washing among its Flagstaff commercial cleaning services.','assistant verified research: Flagstaff Pressure Washing',0,
 null,'(928) 853-8064',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_verified_03","researched_at":"2026-10-27T00:12:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site explicitly lists pressure washing among its Flagstaff commercial cleaning services."}'::jsonb
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
 'buyer','Flagstaff','hotels_motels','hotels motels lodging','Little America Hotel Flagstaff',
 'https://flagstaff.littleamerica.com/','flagstaff.littleamerica.com','Official hotel site lists 2515 E Butler Ave, Flagstaff and active lodging, dining and meeting/event operations.','assistant verified research: Flagstaff hotels motels lodging',0,
 null,'(928) 779-7900',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_verified_03","researched_at":"2026-10-27T00:12:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official hotel site lists 2515 E Butler Ave, Flagstaff and active lodging, dining and meeting/event operations."}'::jsonb
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
 'buyer','Flagstaff','restaurants','restaurants','Atria',
 'https://www.atriarestaurant.com/','atriarestaurant.com','Direct restaurant site lists 103 N Leroux St, Flagstaff with current dinner service Tuesday through Saturday.','assistant verified research: Flagstaff restaurants',0,
 'info@atriarestaurant.com','(928) 440-4377',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_verified_03","researched_at":"2026-10-27T00:12:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct restaurant site lists 103 N Leroux St, Flagstaff with current dinner service Tuesday through Saturday."}'::jsonb
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
 'buyer','Flagstaff','schools','schools charter schools private schools','Flagstaff Unified School District #1',
 'https://www.fusd1.org/','fusd1.org','Official district site; district operates 10 elementary schools, 2 middle schools and 3 high schools in Flagstaff.','assistant verified research: Flagstaff schools charter schools private schools',0,
 null,null,true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_verified_03","researched_at":"2026-10-27T00:12:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official district site; district operates 10 elementary schools, 2 middle schools and 3 high schools in Flagstaff."}'::jsonb
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
 'buyer','Flagstaff','public_facilities','government public facilities municipal buildings','City of Flagstaff',
 'https://www.flagstaff.az.gov/','flagstaff.az.gov','Official municipal site; city Facilities Maintenance is responsible for maintenance and renovations of all city-owned or leased buildings.','assistant verified research: Flagstaff government public facilities municipal buildings',0,
 null,'(928) 213-2000',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_verified_03","researched_at":"2026-10-27T00:12:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official municipal site; city Facilities Maintenance is responsible for maintenance and renovations of all city-owned or leased buildings."}'::jsonb
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
 'buyer','Flagstaff','warehouses_industrial','warehouses industrial businesses distribution centers','W. L. Gore & Associates',
 'https://www.gore.com/contact/locations','gore.com','Official Gore locations page lists multiple Flagstaff manufacturing/medical facilities including Woody Mountain, Elk Hill, Elden View, Medical East/West/Central and other Kiltie Lane sites.','assistant verified research: Flagstaff warehouses industrial businesses distribution centers',0,
 null,'(928) 864-3000',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_verified_03","researched_at":"2026-10-27T00:12:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official Gore locations page lists multiple Flagstaff manufacturing/medical facilities including Woody Mountain, Elk Hill, Elden View, Medical East/West/Central and other Kiltie Lane sites."}'::jsonb
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
 'buyer','Flagstaff','gyms_fitness','gyms fitness centers recreation centers','Flagstaff Aquaplex',
 'https://www.flagstaff.az.gov/896/Aquaplex','flagstaff.az.gov','Official city facility page identifies a multi-generational recreation center with pool, climbing wall, gym, fitness floor, classes and events.','assistant verified research: Flagstaff gyms fitness centers recreation centers',0,
 null,'(928) 213-2300',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_verified_03","researched_at":"2026-10-27T00:12:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official city facility page identifies a multi-generational recreation center with pool, climbing wall, gym, fitness floor, classes and events."}'::jsonb
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
 'buyer','Flagstaff','gyms_fitness','gyms fitness centers recreation centers','Hal Jensen Recreation Center',
 'https://flagstaff.az.gov/807/Hal-Jensen-Recreation-Center','flagstaff.az.gov','Official city page lists recreation/fitness center at 2403 N Izabel St with fitness center, meeting rooms and year-round programs.','assistant verified research: Flagstaff gyms fitness centers recreation centers',0,
 null,'(928) 213-2760',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_flagstaff_verified_03","researched_at":"2026-10-27T00:12:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official city page lists recreation/fitness center at 2403 N Izabel St with fitness center, meeting rooms and year-round programs."}'::jsonb
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
),updated_at=now() where p.market='Flagstaff';


-- Assistant-led Winslow census batch 01 (2026-10-26)
insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','general_business','other local businesses','3-C’s Auto Body',
 'https://winslowarizona.org/the-chamber/chamber-members/','winslowarizona.org','Current Winslow Chamber member; auto body, mechanical repair and towing facility at 902 W Third St.','assistant census research: Winslow other local businesses',0,
 null,'(928) 289-3837',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow Chamber member; auto body, mechanical repair and towing facility at 902 W Third St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','property_management','property management companies apartment communities','4 Corners Realty Inc. and Self Storage',
 'https://winslowarizona.org/the-chamber/chamber-members/','winslowarizona.org','Current Winslow Chamber member providing rentals, property management, real estate and self-storage.','assistant census research: Winslow property management companies apartment communities',0,
 null,'(928) 289-4727',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow Chamber member providing rentals, property management, real estate and self-storage."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Winslow','facility_maintenance','Building Maintenance Help','928 Roofing & Contracting',
 'https://winslowarizona.org/the-chamber/chamber-members/','winslowarizona.org','Current Winslow Chamber contractor; locally owned roofing and disaster-resolution business.','assistant census research: Winslow Building Maintenance Help',0,
 null,'928-699-6680',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow Chamber contractor; locally owned roofing and disaster-resolution business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','general_business','other local businesses','99 Printers',
 'https://winslowarizona.org/the-chamber/chamber-members/','winslowarizona.org','Current Winslow Chamber printing/graphics business at 8554 S Hwy 99.','assistant census research: Winslow other local businesses',0,
 null,'928-587-9448',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow Chamber printing/graphics business at 8554 S Hwy 99."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','senior_daycare','senior living assisted living daycare childcare','A Leap of Faith',
 'https://winslowarizona.org/the-chamber/chamber-members/','winslowarizona.org','Current Winslow Chamber daycare/learning-center facility at 723 N Apache St.','assistant census research: Winslow senior living assisted living daycare childcare',0,
 null,'(505) 203-3810',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow Chamber daycare/learning-center facility at 723 N Apache St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','insurance_professional','insurance agents professional offices','Abbasi Services LLC',
 'https://winslowarizona.org/the-chamber/chamber-members/','winslowarizona.org','Current Winslow Chamber bookkeeping, payroll and accounting-services office.','assistant census research: Winslow insurance agents professional offices',0,
 null,'(928) 224-9192',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow Chamber bookkeeping, payroll and accounting-services office."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','property_management','property management companies apartment communities','Adams-Hartnett Bldg Co., LLC',
 'https://winslowarizona.org/the-chamber/chamber-members/','winslowarizona.org','Current Winslow Chamber commercial/residential rental business with multiple commercial spaces.','assistant census research: Winslow property management companies apartment communities',0,
 null,'(928) 289-4755',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow Chamber commercial/residential rental business with multiple commercial spaces."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','theaters_entertainment','theaters cinemas entertainment venues','Affeldt Mion Museum',
 'https://winslowarizona.org/the-chamber/chamber-members/','winslowarizona.org','Current Winslow museum/attraction inside the historic depot at La Posada.','assistant census research: Winslow theaters cinemas entertainment venues',0,
 null,'(928) 289-4366',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow museum/attraction inside the historic depot at La Posada."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','insurance_professional','insurance agents professional offices','Aflac',
 'https://winslowarizona.org/the-chamber/chamber-members/','winslowarizona.org','Winslow Chamber insurance member serving the area.','assistant census research: Winslow insurance agents professional offices',0,
 null,'928-242-7555',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Winslow Chamber insurance member serving the area."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','general_business','other local businesses','Alice’s Place',
 'https://winslowarizona.org/the-chamber/chamber-members/','winslowarizona.org','Current Winslow domestic/sexual violence shelter and advocacy organization at 218 N Williamson Ave.','assistant census research: Winslow other local businesses',0,
 null,'(928) 289-3003',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow domestic/sexual violence shelter and advocacy organization at 218 N Williamson Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','insurance_professional','insurance agents professional offices','Allied Cash Advance',
 'https://winslowarizona.org/the-chamber/chamber-members/','winslowarizona.org','Current Winslow financial-services storefront at 1519 N Park Drive Suite C.','assistant census research: Winslow insurance agents professional offices',0,
 null,'(928) 977-2307',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow financial-services storefront at 1519 N Park Drive Suite C."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','schools','schools charter schools private schools','Ayusa',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/2/','winslowarizona.org','Current Winslow Chamber school/student-exchange organization.','assistant census research: Winslow schools charter schools private schools',0,
 null,'(928) 587-6160',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow Chamber school/student-exchange organization."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Winslow','electrical_service','Electrician','AZE Electrical Contractors LLC',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/2/','winslowarizona.org','Current Winslow Chamber member; local triple-licensed residential/commercial electrical, general contracting and HVAC business.','assistant census research: Winslow Electrician',0,
 null,'928-587-2612',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow Chamber member; local triple-licensed residential/commercial electrical, general contracting and HVAC business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Winslow','hvac_heat','Heating & Air','AZE Electrical Contractors LLC',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/2/','winslowarizona.org','Current Winslow Chamber member explicitly licensed for heating and air-conditioning.','assistant census research: Winslow Heating & Air',0,
 null,'928-587-2612',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow Chamber member explicitly licensed for heating and air-conditioning."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Winslow','facility_maintenance','Building Maintenance Help','AZE Electrical Contractors LLC',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/2/','winslowarizona.org','Current Winslow Chamber member explicitly licensed as a general contractor.','assistant census research: Winslow Building Maintenance Help',0,
 null,'928-587-2612',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow Chamber member explicitly licensed as a general contractor."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','insurance_professional','insurance agents professional offices','Barton Architecture, PLLC',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/2/','winslowarizona.org','Current Winslow full-service architecture/professional office at 319 N Kinsley Ave.','assistant census research: Winslow insurance agents professional offices',0,
 null,'928-289-4282',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow full-service architecture/professional office at 319 N Kinsley Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','hotels_motels','hotels motels lodging','Beall’s Bed & Bud',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/2/','winslowarizona.org','Current Winslow-area Chamber campground/lodging member.','assistant census research: Winslow hotels motels lodging',0,
 null,'(928) 414-1179',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow-area Chamber campground/lodging member."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','hotels_motels','hotels motels lodging','Best Western Plus Winslow Inn',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/2/','winslowarizona.org','Current Winslow hotel at 816 Transcon Ln.','assistant census research: Winslow hotels motels lodging',0,
 null,'(928) 289-2960',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow hotel at 816 Transcon Ln."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','gyms_fitness','gyms fitness centers recreation centers','Blackgoat Connection',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/2/','winslowarizona.org','Current Winslow wellness/massage/nutrition business.','assistant census research: Winslow gyms fitness centers recreation centers',0,
 null,'928-587-5171',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow wellness/massage/nutrition business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','insurance_professional','insurance agents professional offices','BMO',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/2/','winslowarizona.org','Current Winslow full-service bank branch.','assistant census research: Winslow insurance agents professional offices',0,
 null,'(928) 289-2436',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow full-service bank branch."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','restaurants','restaurants','Bojo’s Sports Bar & Grill',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/2/','winslowarizona.org','Current Winslow restaurant/bar with banquet facilities at 117 W Second St.','assistant census research: Winslow restaurants',0,
 null,'(928) 289-0616',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow restaurant/bar with banquet facilities at 117 W Second St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','restaurants','restaurants','Brown Mug Cafe',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/2/','winslowarizona.org','Current Winslow family-owned restaurant at 308 E Second St.','assistant census research: Winslow restaurants',0,
 null,'(928) 289-9973',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow family-owned restaurant at 308 E Second St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','retail','retail stores shopping stores','Casey’s Project Store',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/2/','winslowarizona.org','Current Winslow building-materials retail business.','assistant census research: Winslow retail stores shopping stores',0,
 null,'928-289-4311',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow building-materials retail business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','general_business','other local businesses','Cellular One of NEAZ',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/2/','winslowarizona.org','Current Winslow wireless/communications storefront at 1517 North Park Drive.','assistant census research: Winslow other local businesses',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow wireless/communications storefront at 1517 North Park Drive."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','public_facilities','government public facilities municipal buildings','City of Winslow',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/3/','winslowarizona.org','Official local government organization and facilities operator at 21 N Williamson.','assistant census research: Winslow government public facilities municipal buildings',0,
 null,'(928) 289-2422',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Official local government organization and facilities operator at 21 N Williamson."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','property_management','property management companies apartment communities','City of Winslow Public Housing',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/3/','winslowarizona.org','Current city housing department managing public housing apartments and Section 8 program facilities.','assistant census research: Winslow property management companies apartment communities',0,
 null,'(928) 289-4617',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current city housing department managing public housing apartments and Section 8 program facilities."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','warehouses_industrial','warehouses industrial businesses distribution centers','Dyna Rock LLC',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/4/','winslowarizona.org','Current Winslow materials supplier for sand, gravel, ready-mix concrete and landscape materials.','assistant census research: Winslow warehouses industrial businesses distribution centers',0,
 null,'(928) 289-9349',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow materials supplier for sand, gravel, ready-mix concrete and landscape materials."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','hotels_motels','hotels motels lodging','Earl’s RT 66 Motor Court',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/4/','winslowarizona.org','Current Winslow Route 66 motor court at 512 E Third St.','assistant census research: Winslow hotels motels lodging',0,
 null,'928-224-0161',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow Route 66 motor court at 512 E Third St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','restaurants','restaurants','El Falcone Family Restaurant',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/4/','winslowarizona.org','Current Winslow Route 66 restaurant at 1113 E Third St.','assistant census research: Winslow restaurants',0,
 null,'(928) 289-2628',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow Route 66 restaurant at 1113 E Third St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','warehouses_industrial','warehouses industrial businesses distribution centers','Gonzales Meat Processing',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/5/','winslowarizona.org','Current Winslow meat-processing business at 1416 Short St.','assistant census research: Winslow warehouses industrial businesses distribution centers',0,
 null,'(928) 386-2350',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow meat-processing business at 1416 Short St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','retail','retail stores shopping stores','Graceland Properties LLC',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/5/','winslowarizona.org','Current Winslow portable-building sales/business facility at 2001 Old Hwy 66.','assistant census research: Winslow retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow portable-building sales/business facility at 2001 Old Hwy 66."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','restaurants','restaurants','GrayBush Bakery, LLC',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/5/','winslowarizona.org','Current Winslow bakery at 613 W Desmond.','assistant census research: Winslow restaurants',0,
 null,'(928) 589-1601',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow bakery at 613 W Desmond."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Winslow','residential_cleaning','House Cleaning','Green Mountain Cleaners',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/5/','winslowarizona.org','Current Winslow eco-friendly cleaning service.','assistant census research: Winslow House Cleaning',0,
 null,'(928) 255-7587',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow eco-friendly cleaning service."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','general_business','other local businesses','Greer’s Mortuary of Winslow',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/5/','winslowarizona.org','Current Winslow funeral home/crematory at 316 W Second St.','assistant census research: Winslow other local businesses',0,
 null,'(928) 289-3335',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow funeral home/crematory at 316 W Second St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','general_business','other local businesses','Growing on 66',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/5/','winslowarizona.org','Current Winslow horticulture/community organization.','assistant census research: Winslow other local businesses',0,
 null,'928-587-8985',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow horticulture/community organization."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Winslow','rural_property','Septic, Grading & Wells','GWR LLC',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/5/','winslowarizona.org','Current Winslow septic-tank cleaning/service, portable-restroom and septic-install business.','assistant census research: Winslow Septic, Grading & Wells',0,
 null,'(928) 289-6441',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow septic-tank cleaning/service, portable-restroom and septic-install business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','insurance_professional','insurance agents professional offices','Hancock-Leavitt Insurance Agency',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/5/','winslowarizona.org','Current Winslow insurance agency at 303 W Second St serving families and small businesses.','assistant census research: Winslow insurance agents professional offices',0,
 null,'(928) 289-3333',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow insurance agency at 303 W Second St serving families and small businesses."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','property_management','property management companies apartment communities','Harley Hendricks Realty',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/5/','winslowarizona.org','Current Winslow real-estate, commercial/residential rental and property-management office.','assistant census research: Winslow property management companies apartment communities',0,
 null,'928-587-9250',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow real-estate, commercial/residential rental and property-management office."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','warehouses_industrial','warehouses industrial businesses distribution centers','Hopi Three Canyon Ranches',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/6/','winslowarizona.org','Current Winslow Chamber ranch/agriculture operation with large commercial cattle operations.','assistant census research: Winslow warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow Chamber ranch/agriculture operation with large commercial cattle operations."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Winslow','facility_maintenance','Building Maintenance Help','Independent Energy Homes, LLC',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/6/','winslowarizona.org','Current Winslow Chamber contractor licensed for general construction, roofing and electrical work.','assistant census research: Winslow Building Maintenance Help',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow Chamber contractor licensed for general construction, roofing and electrical work."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Winslow','electrical_service','Electrician','Independent Energy Homes, LLC',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/6/','winslowarizona.org','Current Winslow Chamber contractor explicitly licensed for electrical work.','assistant census research: Winslow Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow Chamber contractor explicitly licensed for electrical work."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Winslow','fire_safety','Fire Safety & Extinguisher Service','Integrated Sound & Security',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/6/','winslowarizona.org','Current Chamber security systems company offering fire-alarm testing and recertification in the Winslow area.','assistant census research: Winslow Fire Safety & Extinguisher Service',0,
 null,'(928) 774-2430',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber security systems company offering fire-alarm testing and recertification in the Winslow area."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','warehouses_industrial','warehouses industrial businesses distribution centers','Love’s Travel Stop',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/7/','winslowarizona.org','Current Winslow 24-hour truck stop/fueling, retail and restaurant facility at 720 Transcon Lane.','assistant census research: Winslow warehouses industrial businesses distribution centers',0,
 null,'(928) 288-6037',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow 24-hour truck stop/fueling, retail and restaurant facility at 720 Transcon Lane."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Winslow','commercial_cleaning','Commercial Cleaning','Luxxe Cleaning',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/7/','winslowarizona.org','Current Chamber cleaning vendor serving Flagstaff, Winslow and surrounding areas with commercial, residential, move-out and construction cleaning.','assistant census research: Winslow Commercial Cleaning',0,
 null,'(928) 853-6460',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber cleaning vendor serving Flagstaff, Winslow and surrounding areas with commercial, residential, move-out and construction cleaning."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','churches','churches worship centers','Multiply Church',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/8/','winslowarizona.org','Current Winslow church at 811 W Aspinwall.','assistant census research: Winslow churches worship centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow church at 811 W Aspinwall."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','general_business','other local businesses','NAACP-Winslow Branch #1015',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/8/','winslowarizona.org','Current Winslow nonprofit/community organization.','assistant census research: Winslow other local businesses',0,
 null,'928-289-9551',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow nonprofit/community organization."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','senior_daycare','senior living assisted living daycare childcare','NACOG, Winslow Head Start',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/8/','winslowarizona.org','Current Winslow Head Start school-readiness facility.','assistant census research: Winslow senior living assisted living daycare childcare',0,
 null,'(928) 289-2651',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow Head Start school-readiness facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','retail','retail stores shopping stores','Navajo & Hopi Indian Arts & Crafts Center',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/8/','winslowarizona.org','Current Winslow trading-post/retail arts facility.','assistant census research: Winslow retail stores shopping stores',0,
 null,'928-289-4923',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow trading-post/retail arts facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','auto_dealers','auto dealers car dealerships','Oxendale Auto Outlet',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/9/','winslowarizona.org','Current Winslow used-car dealership and service facility at 550 Mike Pike.','assistant census research: Winslow auto dealers car dealerships',0,
 null,'(928) 289-2335',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow used-car dealership and service facility at 550 Mike Pike."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','restaurants','restaurants','P & J’s Tasty Toppings',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/9/','winslowarizona.org','Current Winslow ice cream/burger/sandwich business at 1304 E Second St.','assistant census research: Winslow restaurants',0,
 null,'(928) 386-0289',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow ice cream/burger/sandwich business at 1304 E Second St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','general_business','other local businesses','Painted Desert News',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/9/','winslowarizona.org','Current local newspaper/media business serving Winslow.','assistant census research: Winslow other local businesses',0,
 null,'(928) 524-6203',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current local newspaper/media business serving Winslow."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','general_business','other local businesses','Person 2 Pet',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/9/','winslowarizona.org','Current Northern Arizona pet boarding/training/drop-in service listed by Winslow Chamber.','assistant census research: Winslow other local businesses',0,
 null,'405-937-0329',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Northern Arizona pet boarding/training/drop-in service listed by Winslow Chamber."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','insurance_professional','insurance agents professional offices','Pioneer Title Agency',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/9/','winslowarizona.org','Current Winslow title/escrow office at 300 W Third St.','assistant census research: Winslow insurance agents professional offices',0,
 null,'(928) 289-2028',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow title/escrow office at 300 W Third St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','restaurants','restaurants','Pizza Hut',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/9/','winslowarizona.org','Current Winslow restaurant at 600 Mike’s Pikes Blvd.','assistant census research: Winslow restaurants',0,
 null,'(928) 289-2445',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow restaurant at 600 Mike’s Pikes Blvd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','restaurants','restaurants','Poppin On The Corner',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/9/','winslowarizona.org','Current Winslow food vendor selling kettle corn/custom flavors.','assistant census research: Winslow restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow food vendor selling kettle corn/custom flavors."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','hotels_motels','hotels motels lodging','Quality Inn Winslow',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/9/','winslowarizona.org','Current Winslow hotel at 2035 W Third St.','assistant census research: Winslow hotels motels lodging',0,
 null,'(928) 289-1010',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow hotel at 2035 W Third St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','hotels_motels','hotels motels lodging','Quilty Inn',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/9/','winslowarizona.org','Current Winslow lodging property at 2035 W Third St.','assistant census research: Winslow hotels motels lodging',0,
 null,'(928) 289-1010',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow lodging property at 2035 W Third St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Winslow','hvac_heat','Heating & Air','Sky Blue Heating & Cooling',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/10/','winslowarizona.org','Current Winslow Chamber HVAC service provider explicitly expanding service to Winslow.','assistant census research: Winslow Heating & Air',0,
 null,'928-892-9920',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow Chamber HVAC service provider explicitly expanding service to Winslow."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','gyms_fitness','gyms fitness centers recreation centers','Snap Fitness',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/10/','winslowarizona.org','Current 24-hour Winslow fitness center at 1535 N Park Dr.','assistant census research: Winslow gyms fitness centers recreation centers',0,
 null,'(928) 244-3030',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current 24-hour Winslow fitness center at 1535 N Park Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','theaters_entertainment','theaters cinemas entertainment venues','Snowdrift Art Space',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/10/','winslowarizona.org','Current Winslow 10,000-square-foot art/exhibition venue at 120 W Second St.','assistant census research: Winslow theaters cinemas entertainment venues',0,
 null,'(928) 289-8201',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow 10,000-square-foot art/exhibition venue at 120 W Second St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','hotels_motels','hotels motels lodging','Soaring Eagle RV Park',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/10/','winslowarizona.org','Current Winslow 17-space RV park at 2125 W Third St.','assistant census research: Winslow hotels motels lodging',0,
 null,'(330) 507-3615',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow 17-space RV park at 2125 W Third St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','general_business','other local businesses','Soochies Ink',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/10/','winslowarizona.org','Current Winslow tattoo/piercing studio at 318 W Third St.','assistant census research: Winslow other local businesses',0,
 null,'(928) 386-1035',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow tattoo/piercing studio at 318 W Third St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','general_business','other local businesses','Soroptimist International of Winslow',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/10/','winslowarizona.org','Current Winslow service/nonprofit organization.','assistant census research: Winslow other local businesses',0,
 null,'(928) 289-3454',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow service/nonprofit organization."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','warehouses_industrial','warehouses industrial businesses distribution centers','Sparklight',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/10/','winslowarizona.org','Northern Arizona communications/utility service provider with business-service operations serving Winslow.','assistant census research: Winslow warehouses industrial businesses distribution centers',0,
 null,'(928) 537-2279',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Northern Arizona communications/utility service provider with business-service operations serving Winslow."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Winslow','facility_maintenance','Building Maintenance Help','SRJ Housing',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/10/','winslowarizona.org','Current Chamber general commercial and residential contractor.','assistant census research: Winslow Building Maintenance Help',0,
 null,'(480) 330-3379',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber general commercial and residential contractor."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','restaurants','restaurants','The Root Beer Stand',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/11/','winslowarizona.org','Current Winslow restaurant at 1001 N Williamson Ave.','assistant census research: Winslow restaurants',0,
 null,'(928) 289-2891',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow restaurant at 1001 N Williamson Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','restaurants','restaurants','The Sipp Shoppe',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/11/','winslowarizona.org','Current Winslow coffee/restaurant business at 101 W Second St.','assistant census research: Winslow restaurants',0,
 null,'928-224-0045',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow coffee/restaurant business at 101 W Second St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','hotels_motels','hotels motels lodging','Travelodge Winslow',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/11/','winslowarizona.org','Current Winslow lodging property at 1706 N Park Dr.','assistant census research: Winslow hotels motels lodging',0,
 null,'(928) 289-4687',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow lodging property at 1706 N Park Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','restaurants','restaurants','The Turquoise Room',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/11/','winslowarizona.org','Current Winslow restaurant at La Posada, 305 E Second St.','assistant census research: Winslow restaurants',0,
 null,'(928) 289-2888',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow restaurant at La Posada, 305 E Second St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','insurance_professional','insurance agents professional offices','Wells Fargo',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/12/','winslowarizona.org','Current Winslow bank branch at 210 W Second St.','assistant census research: Winslow insurance agents professional offices',0,
 null,'(928) 289-4626',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow bank branch at 210 W Second St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','therapy_behavioral','therapy counseling behavioral health clinics','Wellspring Therapy Services',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/12/','winslowarizona.org','Current Winslow Chamber health/holistic therapy provider.','assistant census research: Winslow therapy counseling behavioral health clinics',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow Chamber health/holistic therapy provider."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','property_management','property management companies apartment communities','White Mountain Association of Realtors',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/12/','winslowarizona.org','Current real-estate professional organization listed in Winslow Chamber.','assistant census research: Winslow property management companies apartment communities',0,
 null,'(928) 537-1107',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current real-estate professional organization listed in Winslow Chamber."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','property_management','property management companies apartment communities','Windmill Legacy',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/12/','winslowarizona.org','Current Winslow real-estate investment/rental-property business at 401 W Third St.','assistant census research: Winslow property management companies apartment communities',0,
 null,'951-805-7611',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow real-estate investment/rental-property business at 401 W Third St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','retail','retail stores shopping stores','Winslow Ace Hardware',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/12/','winslowarizona.org','Current Winslow building-supply store at 1500 N Park Drive; de-duplicated repeated Chamber entries.','assistant census research: Winslow retail stores shopping stores',0,
 null,'928-224-4572',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow building-supply store at 1500 N Park Drive; de-duplicated repeated Chamber entries."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','public_facilities','government public facilities municipal buildings','Winslow Animal Care Facility',
 'https://winslowarizona.org/the-chamber/chamber-members/pg/12/','winslowarizona.org','Current City of Winslow animal-care facility at 548 Barrigan Rd.','assistant census research: Winslow government public facilities municipal buildings',0,
 null,'(928) 289-3232',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current City of Winslow animal-care facility at 548 Barrigan Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','hotels_motels','hotels motels lodging','Clarion Pointe Winslow, LLC',
 'https://winslowarizona.org/the-chamber/chamber-members/?cn-cat=41&cn-s=','winslowarizona.org','Current Winslow 72-room hotel with indoor pool, hot tub, gym and breakfast.','assistant census research: Winslow hotels motels lodging',0,
 null,'(928) 289-4638',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow 72-room hotel with indoor pool, hot tub, gym and breakfast."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','hotels_motels','hotels motels lodging','La Posada Hotel',
 'https://winslowarizona.org/the-chamber/chamber-members/?cn-cat=41&cn-s=','winslowarizona.org','Current landmark Winslow hotel with restaurant, tours and gardens at 303 E Second St.','assistant census research: Winslow hotels motels lodging',0,
 null,'(928) 289-4366',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current landmark Winslow hotel with restaurant, tours and gardens at 303 E Second St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','hotels_motels','hotels motels lodging','Motel 6 Winslow',
 'https://winslowarizona.org/the-chamber/chamber-members/?cn-cat=41&cn-s=','winslowarizona.org','Current Winslow lodging property at 520 W Desmond.','assistant census research: Winslow hotels motels lodging',0,
 null,'(928) 289-9581',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow lodging property at 520 W Desmond."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','restaurants','restaurants','Mojo’s Cafe',
 'https://winslowarizona.org/the-chamber/chamber-members/?cn-cat=62&cn-s=','winslowarizona.org','Current Winslow coffee house/restaurant at 1700 N Park Drive.','assistant census research: Winslow restaurants',0,
 null,'(928) 289-6656',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Winslow coffee house/restaurant at 1700 N Park Drive."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Winslow','restaurants','restaurants','Nini’s Kitchen',
 'https://winslowarizona.org/the-chamber/chamber-members/?cn-cat=62&cn-s=','winslowarizona.org','Current family-owned Winslow Mexican/American restaurant established in 2024.','assistant census research: Winslow restaurants',0,
 null,'(928) 254-3001',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_batch_01","researched_at":"2026-10-27T00:20:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current family-owned Winslow Mexican/American restaurant established in 2024."}'::jsonb
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
),updated_at=now() where p.market='Winslow';


-- Assistant-led verified Winslow batch 02 (2026-10-26)
insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Winslow','electrical_service','Electrician','AZE Electrical Contractors LLC',
 'https://azebldgco.com/','azebldgco.com','Direct site lists 101 North Warren Avenue, Winslow; local family-owned contractor triple-licensed in electrical, HVAC and general contracting.','assistant verified research: Winslow Electrician',0,
 'azeelectricinc@gmail.com','928-587-2612',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_verified_02","researched_at":"2026-10-27T00:27:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site lists 101 North Warren Avenue, Winslow; local family-owned contractor triple-licensed in electrical, HVAC and general contracting."}'::jsonb
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
 'vendor','Winslow','hvac_heat','Heating & Air','AZE Electrical Contractors LLC',
 'https://azebldgco.com/','azebldgco.com','Direct site explicitly offers HVAC solutions and states triple licensing in HVAC, electrical and general contracting from Winslow.','assistant verified research: Winslow Heating & Air',0,
 'azeelectricinc@gmail.com','928-587-2612',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_verified_02","researched_at":"2026-10-27T00:27:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site explicitly offers HVAC solutions and states triple licensing in HVAC, electrical and general contracting from Winslow."}'::jsonb
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
 'vendor','Winslow','facility_maintenance','Building Maintenance Help','AZE Electrical Contractors LLC',
 'https://azebldgco.com/','azebldgco.com','Direct site identifies Winslow-based general contractor with more than 20 years of industry experience.','assistant verified research: Winslow Building Maintenance Help',0,
 'azeelectricinc@gmail.com','928-587-2612',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_verified_02","researched_at":"2026-10-27T00:27:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site identifies Winslow-based general contractor with more than 20 years of industry experience."}'::jsonb
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
 'vendor','Winslow','facility_maintenance','Building Maintenance Help','Independent Energy Homes, LLC',
 'https://iehomes.wixsite.com/iehomes','iehomes.wixsite.com','Direct site states licensed, bonded and insured contractor serving Holbrook and Winslow for new homes, remodels, roofing, flooring, doors/windows and related work; ROC licenses published.','assistant verified research: Winslow Building Maintenance Help',0,
 'iehomesaz@gmail.com','928-587-2047',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_verified_02","researched_at":"2026-10-27T00:27:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site states licensed, bonded and insured contractor serving Holbrook and Winslow for new homes, remodels, roofing, flooring, doors/windows and related work; ROC licenses published."}'::jsonb
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
 'vendor','Winslow','electrical_service','Electrician','Independent Energy Homes, LLC',
 'https://iehomes.wixsite.com/iehomes','iehomes.wixsite.com','Direct site explicitly offers licensed electrical service in Winslow and publishes ROC license numbers.','assistant verified research: Winslow Electrician',0,
 'iehomesaz@gmail.com','928-587-2047',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_verified_02","researched_at":"2026-10-27T00:27:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site explicitly offers licensed electrical service in Winslow and publishes ROC license numbers."}'::jsonb
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
 'buyer','Winslow','medical_centers','hospitals medical centers clinics','Little Colorado Medical Center',
 'https://lcmcwmh.com/','lcmcwmh.com','Direct hospital site identifies a 25-bed not-for-profit critical access hospital at 1501 N Williamson Ave, Winslow with emergency, inpatient, outpatient, surgery, cardiology, imaging, pharmacy and behavioral-health services.','assistant verified research: Winslow hospitals medical centers clinics',0,
 'QAstaff@lcmcwmh.com','(928) 289-4691',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_verified_02","researched_at":"2026-10-27T00:27:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct hospital site identifies a 25-bed not-for-profit critical access hospital at 1501 N Williamson Ave, Winslow with emergency, inpatient, outpatient, surgery, cardiology, imaging, pharmacy and behavioral-health services."}'::jsonb
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
 'buyer','Winslow','medical_centers','hospitals medical centers clinics','Little Colorado Physician’s Office',
 'https://lcmcwmh.com/contact/','lcmcwmh.com','Direct Little Colorado Medical Center contact page lists physician office at 200 E Lee St, Winslow.','assistant verified research: Winslow hospitals medical centers clinics',0,
 null,'(928) 289-3396',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_verified_02","researched_at":"2026-10-27T00:27:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct Little Colorado Medical Center contact page lists physician office at 200 E Lee St, Winslow."}'::jsonb
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
 'buyer','Winslow','schools','schools charter schools private schools','Winslow Unified School District #1',
 'https://www.wusd1.org/','wusd1.org','Official district site says Winslow Unified operates five school locations serving the Winslow community and outlying areas.','assistant verified research: Winslow schools charter schools private schools',0,
 null,'(928) 288-8101',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_verified_02","researched_at":"2026-10-27T00:27:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official district site says Winslow Unified operates five school locations serving the Winslow community and outlying areas."}'::jsonb
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
 'buyer','Winslow','public_facilities','government public facilities municipal buildings','City of Winslow',
 'https://www.winslowaz.gov/','winslowaz.gov','Official City of Winslow site lists City Hall at 102 E Third Street and current municipal operations.','assistant verified research: Winslow government public facilities municipal buildings',0,
 'cityhall@winslowaz.gov','(928) 289-2422',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_verified_02","researched_at":"2026-10-27T00:27:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official City of Winslow site lists City Hall at 102 E Third Street and current municipal operations."}'::jsonb
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
 'buyer','Winslow','insurance_professional','insurance agents professional offices','Hancock-Leavitt Insurance',
 'https://www.leavitt.com/hancock/office/winslow-303-w-2nd-st','leavitt.com','Direct agency site lists Winslow office at 303 W 2nd St and business, employee-benefit, home, auto and life insurance services.','assistant verified research: Winslow insurance agents professional offices',0,
 null,'(928) 289-3333',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_verified_02","researched_at":"2026-10-27T00:27:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct agency site lists Winslow office at 303 W 2nd St and business, employee-benefit, home, auto and life insurance services."}'::jsonb
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
 'buyer','Winslow','hotels_motels','hotels motels lodging','La Posada Hotel',
 'https://www.laposada.org/','laposada.org','Direct hotel site confirms active historic Route 66 hotel with restaurant, museum and gardens in Winslow.','assistant verified research: Winslow hotels motels lodging',0,
 'info@laposada.org','(928) 289-4366',true,
 'direct','direct_evidence',now(),'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_winslow_verified_02","researched_at":"2026-10-27T00:27:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct hotel site confirms active historic Route 66 hotel with restaurant, museum and gardens in Winslow."}'::jsonb
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
),updated_at=now() where p.market='Winslow';


-- Assistant-led Golden Valley census batch 02 (2026-10-26)
insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','restaurants','restaurants','Carolines Country Cafe',
 'https://www.mohavelocal.com/l/golden-valley-az/restaurants','mohavelocal.com','Current Golden Valley restaurant listing from Mohave Local.','assistant census research: Golden Valley restaurants',0,
 null,'(928) 565-2550',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Golden Valley restaurant listing from Mohave Local."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','restaurants','restaurants','El Rancho Restaurant',
 'https://www.mohavelocal.com/l/golden-valley-az/restaurants','mohavelocal.com','Current Golden Valley restaurant listing from Mohave Local.','assistant census research: Golden Valley restaurants',0,
 null,'(928) 565-2042',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Golden Valley restaurant listing from Mohave Local."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','restaurants','restaurants','Fat Tony''s Pizzeria',
 'https://www.mohavelocal.com/l/golden-valley-az/restaurants','mohavelocal.com','Current Golden Valley restaurant listing from Mohave Local.','assistant census research: Golden Valley restaurants',0,
 null,'(928) 565-7654',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Golden Valley restaurant listing from Mohave Local."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','restaurants','restaurants','Great American Pizza & Subs',
 'https://www.mohavelocal.com/l/golden-valley-az/restaurants','mohavelocal.com','Current Golden Valley restaurant listing from Mohave Local.','assistant census research: Golden Valley restaurants',0,
 null,'(928) 565-5550',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Golden Valley restaurant listing from Mohave Local."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','restaurants','restaurants','Neena''s Cafe & Sweets',
 'https://www.mohavelocal.com/l/golden-valley-az/restaurants','mohavelocal.com','Current Golden Valley restaurant listing from Mohave Local.','assistant census research: Golden Valley restaurants',0,
 null,'(928) 377-5959',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Golden Valley restaurant listing from Mohave Local."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','restaurants','restaurants','Sonic Drive In',
 'https://www.mohavelocal.com/l/golden-valley-az/restaurants','mohavelocal.com','Current Golden Valley restaurant listing from Mohave Local.','assistant census research: Golden Valley restaurants',0,
 null,'(928) 565-2255',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Golden Valley restaurant listing from Mohave Local."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','restaurants','restaurants','Valley Pizza And Cafe',
 'https://www.mohavelocal.com/l/golden-valley-az/restaurants','mohavelocal.com','Current Golden Valley restaurant listing from Mohave Local.','assistant census research: Golden Valley restaurants',0,
 null,'(928) 377-5970',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Golden Valley restaurant listing from Mohave Local."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','restaurants','restaurants','Off Road Diner Mexican Cantina',
 'https://www.enigma.com/directory/az/golden-valley','enigma.com','Current Golden Valley restaurant at 120 S Emery Park Rd.','assistant census research: Golden Valley restaurants',0,
 null,'(928) 377-1989',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Golden Valley restaurant at 120 S Emery Park Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','restaurants','restaurants','Golden Oyster Mexican & Seafood',
 'https://www.enigma.com/directory/az/golden-valley','enigma.com','Current Golden Valley restaurant at 3244 Aztec Rd.','assistant census research: Golden Valley restaurants',0,
 null,'(928) 377-1890',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Golden Valley restaurant at 3244 Aztec Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','restaurants','restaurants','Castle Rock Bar & Grill',
 'https://jway.homes/neighborhood/157014090/golden-valley','jway.homes','Golden Valley restaurant and event-space business.','assistant census research: Golden Valley restaurants',0,
 null,'(928) 565-3303',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Golden Valley restaurant and event-space business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','warehouses_industrial','warehouses industrial businesses distribution centers','Advantage Storage',
 'https://www.mohavelocal.com/l/golden-valley-az/storage-services','mohavelocal.com','Current Golden Valley storage facility.','assistant census research: Golden Valley warehouses industrial businesses distribution centers',0,
 null,'(928) 565-3221',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Golden Valley storage facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','warehouses_industrial','warehouses industrial businesses distribution centers','Echo Storage Options',
 'https://www.mohavelocal.com/l/golden-valley-az/storage-services','mohavelocal.com','Current Golden Valley storage facility.','assistant census research: Golden Valley warehouses industrial businesses distribution centers',0,
 null,'(928) 753-4449',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Golden Valley storage facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','warehouses_industrial','warehouses industrial businesses distribution centers','Golden Gate Mini Storage',
 'https://www.mohavelocal.com/l/golden-valley-az/storage-services','mohavelocal.com','Current Golden Valley storage facility.','assistant census research: Golden Valley warehouses industrial businesses distribution centers',0,
 null,'(928) 565-3475',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Golden Valley storage facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','warehouses_industrial','warehouses industrial businesses distribution centers','Kokopelli Storage',
 'https://www.mohavelocal.com/l/golden-valley-az/storage-services','mohavelocal.com','Current Golden Valley storage facility.','assistant census research: Golden Valley warehouses industrial businesses distribution centers',0,
 null,'(928) 565-7507',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Golden Valley storage facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','warehouses_industrial','warehouses industrial businesses distribution centers','Golden Valley Mini Storage',
 'https://jway.homes/neighborhood/157014090/golden-valley','jway.homes','Current Golden Valley storage facility.','assistant census research: Golden Valley warehouses industrial businesses distribution centers',0,
 null,'(928) 753-2025',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Golden Valley storage facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','warehouses_industrial','warehouses industrial businesses distribution centers','Storage Spot',
 'https://jway.homes/neighborhood/157014090/golden-valley','jway.homes','Current Golden Valley storage facility.','assistant census research: Golden Valley warehouses industrial businesses distribution centers',0,
 null,'(951) 236-7247',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Golden Valley storage facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','warehouses_industrial','warehouses industrial businesses distribution centers','Settlin'' In RV Park, LLC',
 'https://www.city-data.com/business-entities/Golden-Valley-AZ.html','city-data.com','Active Golden Valley business entity at 7930 E Highway 68; RV park/lodging facility candidate.','assistant census research: Golden Valley warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Golden Valley business entity at 7930 E Highway 68; RV park/lodging facility candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','churches','churches worship centers','Calvary Bible Fellowship',
 'https://www.mohavelocal.com/l/golden-valley-az/churches-religious-organizations','mohavelocal.com','Current Golden Valley church/religious facility.','assistant census research: Golden Valley churches worship centers',0,
 null,'(928) 565-9611',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Golden Valley church/religious facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','churches','churches worship centers','Chloride Baptist Church',
 'https://www.mohavelocal.com/l/golden-valley-az/churches-religious-organizations','mohavelocal.com','Current Golden Valley church/religious facility.','assistant census research: Golden Valley churches worship centers',0,
 null,'(928) 565-2898',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Golden Valley church/religious facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','churches','churches worship centers','Golden Valley Assembly Of God',
 'https://www.mohavelocal.com/l/golden-valley-az/churches-religious-organizations','mohavelocal.com','Current Golden Valley church/religious facility.','assistant census research: Golden Valley churches worship centers',0,
 null,'(928) 565-2700',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Golden Valley church/religious facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','churches','churches worship centers','Golden Valley Baptist Church',
 'https://www.mohavelocal.com/l/golden-valley-az/churches-religious-organizations','mohavelocal.com','Current Golden Valley church/religious facility.','assistant census research: Golden Valley churches worship centers',0,
 null,'(928) 565-4682',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Golden Valley church/religious facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','churches','churches worship centers','Cowboy Church of Mohave County',
 'https://jway.homes/neighborhood/157014090/golden-valley','jway.homes','Current Golden Valley church at 4327 Chino Dr.','assistant census research: Golden Valley churches worship centers',0,
 null,'(425) 647-5399',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Golden Valley church at 4327 Chino Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','churches','churches worship centers','Compassion Christian Fellowship',
 'https://www.uscorpdirectory.com/az/golden-valley','uscorpdirectory.com','Active Golden Valley nonprofit/church entity at 1315 S Tonto Rd.','assistant census research: Golden Valley churches worship centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Golden Valley nonprofit/church entity at 1315 S Tonto Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','general_business','other local businesses','Valley Auto Repair',
 'https://jway.homes/neighborhood/157014090/golden-valley','jway.homes','Golden Valley automotive/fuel business listing.','assistant census research: Golden Valley other local businesses',0,
 null,'(928) 565-6000',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Golden Valley automotive/fuel business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','general_business','other local businesses','Golden Valley Collision Center',
 'https://jway.homes/neighborhood/157014090/golden-valley','jway.homes','Golden Valley automotive/fuel business listing.','assistant census research: Golden Valley other local businesses',0,
 null,'(928) 565-3651',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Golden Valley automotive/fuel business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','general_business','other local businesses','The Big Tow Towing & Storage',
 'https://jway.homes/neighborhood/157014090/golden-valley','jway.homes','Golden Valley automotive/fuel business listing.','assistant census research: Golden Valley other local businesses',0,
 null,'(928) 565-3651',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Golden Valley automotive/fuel business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','general_business','other local businesses','The Outpost',
 'https://jway.homes/neighborhood/157014090/golden-valley','jway.homes','Golden Valley automotive/fuel business listing.','assistant census research: Golden Valley other local businesses',0,
 null,'(928) 565-4632',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Golden Valley automotive/fuel business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','general_business','other local businesses','D & D Auto Repair',
 'https://jway.homes/neighborhood/157014090/golden-valley','jway.homes','Golden Valley automotive/fuel business listing.','assistant census research: Golden Valley other local businesses',0,
 null,'(928) 565-7770',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Golden Valley automotive/fuel business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','general_business','other local businesses','Superior Tire',
 'https://jway.homes/neighborhood/157014090/golden-valley','jway.homes','Golden Valley automotive/fuel business listing.','assistant census research: Golden Valley other local businesses',0,
 null,'(928) 565-4277',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Golden Valley automotive/fuel business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','general_business','other local businesses','Coast In Gas & Food',
 'https://jway.homes/neighborhood/157014090/golden-valley','jway.homes','Golden Valley automotive/fuel business listing.','assistant census research: Golden Valley other local businesses',0,
 null,'(928) 565-2910',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Golden Valley automotive/fuel business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','general_business','other local businesses','M & M Mobile Mechanic & Auto Electric',
 'https://jway.homes/neighborhood/157014090/golden-valley','jway.homes','Golden Valley automotive/fuel business listing.','assistant census research: Golden Valley other local businesses',0,
 null,'(928) 565-2746',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Golden Valley automotive/fuel business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','general_business','other local businesses','Tic Tac Tow',
 'https://jway.homes/neighborhood/157014090/golden-valley','jway.homes','Golden Valley automotive/fuel business listing.','assistant census research: Golden Valley other local businesses',0,
 null,'(928) 681-7375',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Golden Valley automotive/fuel business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','general_business','other local businesses','Motorcycle Shop',
 'https://jway.homes/neighborhood/157014090/golden-valley','jway.homes','Golden Valley automotive/fuel business listing.','assistant census research: Golden Valley other local businesses',0,
 null,'(928) 565-3642',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Golden Valley automotive/fuel business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','general_business','other local businesses','Mid-Fifty F-100 Parts',
 'https://jway.homes/neighborhood/157014090/golden-valley','jway.homes','Golden Valley automotive/fuel business listing.','assistant census research: Golden Valley other local businesses',0,
 null,'(928) 565-2727',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Golden Valley automotive/fuel business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','general_business','other local businesses','K J''s Food Mart',
 'https://jway.homes/neighborhood/157014090/golden-valley','jway.homes','Golden Valley automotive/fuel business listing.','assistant census research: Golden Valley other local businesses',0,
 null,'(928) 565-2333',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Golden Valley automotive/fuel business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','general_business','other local businesses','Auto 68',
 'https://jway.homes/neighborhood/157014090/golden-valley','jway.homes','Golden Valley automotive/fuel business listing.','assistant census research: Golden Valley other local businesses',0,
 null,'(928) 565-5926',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Golden Valley automotive/fuel business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','general_business','other local businesses','Tire Works Total Car Care',
 'https://www.enigma.com/directory/az/golden-valley','enigma.com','Current full-service tire and auto-repair facility at 4115 AZ-68.','assistant census research: Golden Valley other local businesses',0,
 null,'(928) 377-1782',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current full-service tire and auto-repair facility at 4115 AZ-68."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','general_business','other local businesses','Little Lit Customs',
 'https://www.enigma.com/directory/az/golden-valley','enigma.com','Current Golden Valley vehicle repair/customs shop at 4120 AZ-68.','assistant census research: Golden Valley other local businesses',0,
 null,'(928) 303-9101',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Golden Valley vehicle repair/customs shop at 4120 AZ-68."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','general_business','other local businesses','GV Diesel And Auto Repair LLC',
 'https://www.uscorpdirectory.com/az/golden-valley/9','uscorpdirectory.com','Active Golden Valley auto/diesel repair entity at 7044 US Highway 68.','assistant census research: Golden Valley other local businesses',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Golden Valley auto/diesel repair entity at 7044 US Highway 68."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','retail','retail stores shopping stores','Trophy Mart',
 'https://jway.homes/neighborhood/157014090/golden-valley','jway.homes','Golden Valley retail/supply business listing.','assistant census research: Golden Valley retail stores shopping stores',0,
 null,'(928) 565-4601',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Golden Valley retail/supply business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','retail','retail stores shopping stores','Mail Boxes and More',
 'https://jway.homes/neighborhood/157014090/golden-valley','jway.homes','Golden Valley retail/supply business listing.','assistant census research: Golden Valley retail stores shopping stores',0,
 null,'(928) 565-3930',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Golden Valley retail/supply business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','retail','retail stores shopping stores','John Graves Propane',
 'https://jway.homes/neighborhood/157014090/golden-valley','jway.homes','Golden Valley retail/supply business listing.','assistant census research: Golden Valley retail stores shopping stores',0,
 null,'(928) 565-2821',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Golden Valley retail/supply business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','retail','retail stores shopping stores','Bucky''s Swap Meet',
 'https://jway.homes/neighborhood/157014090/golden-valley','jway.homes','Golden Valley retail/supply business listing.','assistant census research: Golden Valley retail stores shopping stores',0,
 null,'(928) 263-0074',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Golden Valley retail/supply business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','retail','retail stores shopping stores','Rocky Mountain Slots',
 'https://jway.homes/neighborhood/157014090/golden-valley','jway.homes','Golden Valley retail/supply business listing.','assistant census research: Golden Valley retail stores shopping stores',0,
 null,'(928) 565-7568',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Golden Valley retail/supply business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','retail','retail stores shopping stores','CBS Complete Business Systems',
 'https://jway.homes/neighborhood/157014090/golden-valley','jway.homes','Golden Valley retail/supply business listing.','assistant census research: Golden Valley retail stores shopping stores',0,
 null,'(928) 377-1037',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Golden Valley retail/supply business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','retail','retail stores shopping stores','Tradition Christmas Tree Farm',
 'https://jway.homes/neighborhood/157014090/golden-valley','jway.homes','Golden Valley retail/supply business listing.','assistant census research: Golden Valley retail stores shopping stores',0,
 null,'(928) 565-4646',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Golden Valley retail/supply business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','retail','retail stores shopping stores','Diamond Back Jewelry Services',
 'https://jway.homes/neighborhood/157014090/golden-valley','jway.homes','Golden Valley retail/supply business listing.','assistant census research: Golden Valley retail stores shopping stores',0,
 null,'(928) 565-4410',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Golden Valley retail/supply business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','retail','retail stores shopping stores','Uptown Drug',
 'https://jway.homes/neighborhood/157014090/golden-valley','jway.homes','Golden Valley retail/supply business listing.','assistant census research: Golden Valley retail stores shopping stores',0,
 null,'(928) 565-3900',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Golden Valley retail/supply business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','retail','retail stores shopping stores','Island Palms Nursery',
 'https://jway.homes/neighborhood/157014090/golden-valley','jway.homes','Golden Valley retail/supply business listing.','assistant census research: Golden Valley retail stores shopping stores',0,
 null,'(928) 279-0178',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Golden Valley retail/supply business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','retail','retail stores shopping stores','Stock-Rite Bldg Supply',
 'https://jway.homes/neighborhood/157014090/golden-valley','jway.homes','Golden Valley retail/supply business listing.','assistant census research: Golden Valley retail stores shopping stores',0,
 null,'(928) 565-5555',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Golden Valley retail/supply business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','retail','retail stores shopping stores','GV Pawn',
 'https://jway.homes/neighborhood/157014090/golden-valley','jway.homes','Golden Valley retail/supply business listing.','assistant census research: Golden Valley retail stores shopping stores',0,
 null,'(928) 565-2555',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Golden Valley retail/supply business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','retail','retail stores shopping stores','Dollar General',
 'https://www.enigma.com/directory/az/golden-valley','enigma.com','Current Golden Valley discount/grocery retail facility at 5181 AZ-68.','assistant census research: Golden Valley retail stores shopping stores',0,
 null,'(928) 543-9028',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Golden Valley discount/grocery retail facility at 5181 AZ-68."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','grocery','grocery stores supermarkets markets','Great American Mini Mart / Outpost',
 'https://www.enigma.com/directory/az/golden-valley','enigma.com','Current Golden Valley gas/convenience retail operation on Highway 68.','assistant census research: Golden Valley grocery stores supermarkets markets',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Golden Valley gas/convenience retail operation on Highway 68."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','medical_centers','hospitals medical centers clinics','Golden Valley Medical Center',
 'https://www.enigma.com/directory/az/golden-valley','enigma.com','Current KRMC-affiliated primary-care clinic at 4995 AZ-68.','assistant census research: Golden Valley hospitals medical centers clinics',0,
 null,'(928) 681-8500',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current KRMC-affiliated primary-care clinic at 4995 AZ-68."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','schools','schools charter schools private schools','Black Mountain School',
 'https://jway.homes/neighborhood/157014090/golden-valley','jway.homes','Current K-8 public school at 3404 N Santa Maria Rd.','assistant census research: Golden Valley schools charter schools private schools',0,
 null,'(928) 565-9111',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current K-8 public school at 3404 N Santa Maria Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','insurance_professional','insurance agents professional offices','Edwards Insurance Agency',
 'https://jway.homes/neighborhood/157014090/golden-valley','jway.homes','Current Golden Valley insurance office on Highway 68.','assistant census research: Golden Valley insurance agents professional offices',0,
 null,'(928) 565-3300',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Golden Valley insurance office on Highway 68."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','insurance_professional','insurance agents professional offices','Tri State Appraisal GV',
 'https://jway.homes/neighborhood/157014090/golden-valley','jway.homes','Golden Valley appraisal/professional-services business.','assistant census research: Golden Valley insurance agents professional offices',0,
 null,'(928) 565-5111',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Golden Valley appraisal/professional-services business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','general_business','other local businesses','VFW Post 2555',
 'https://jway.homes/neighborhood/157014090/golden-valley','jway.homes','Golden Valley nonprofit/community-service facility.','assistant census research: Golden Valley other local businesses',0,
 null,'(928) 565-3344',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Golden Valley nonprofit/community-service facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','theaters_entertainment','theaters cinemas entertainment venues','Castle Rock Event Center',
 'https://jway.homes/neighborhood/157014090/golden-valley','jway.homes','Golden Valley event venue.','assistant census research: Golden Valley theaters cinemas entertainment venues',0,
 null,'(928) 565-3303',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Golden Valley event venue."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','warehouses_industrial','warehouses industrial businesses distribution centers','Mohave Block Company',
 'https://www.city-data.com/business-entities/Golden-Valley-AZ.html','city-data.com','Golden Valley active concrete/block manufacturing entity at 6584 S Tampico Rd.','assistant census research: Golden Valley warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Golden Valley active concrete/block manufacturing entity at 6584 S Tampico Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','warehouses_industrial','warehouses industrial businesses distribution centers','Morken Mfg., LLC',
 'https://www.city-data.com/business-entities/Golden-Valley-AZ.html','city-data.com','Active Golden Valley manufacturing entity at 3305 W Smith Dr.','assistant census research: Golden Valley warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Golden Valley manufacturing entity at 3305 W Smith Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','warehouses_industrial','warehouses industrial businesses distribution centers','MSG Distribution Inc',
 'https://www.city-data.com/business-entities/Golden-Valley-AZ.html','city-data.com','Active Golden Valley distribution entity at 3356 W Carmichael Rd.','assistant census research: Golden Valley warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Golden Valley distribution entity at 3356 W Carmichael Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','warehouses_industrial','warehouses industrial businesses distribution centers','Desert Drift Distribution LLC',
 'https://www.uscorpdirectory.com/az/golden-valley','uscorpdirectory.com','Active Golden Valley distribution entity at 3576 N Hassayampa Rd.','assistant census research: Golden Valley warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Golden Valley distribution entity at 3576 N Hassayampa Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','warehouses_industrial','warehouses industrial businesses distribution centers','LMCC Trucking Limited Liability Company',
 'https://www.city-data.com/business-entities/Golden-Valley-AZ.html','city-data.com','Golden Valley trucking/transportation entity at 6244 W Abrigo Dr.','assistant census research: Golden Valley warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Golden Valley trucking/transportation entity at 6244 W Abrigo Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','warehouses_industrial','warehouses industrial businesses distribution centers','Mabry Transport, LLC',
 'https://www.city-data.com/business-entities/Golden-Valley-AZ.html','city-data.com','Golden Valley transportation entity on Lochiel Road.','assistant census research: Golden Valley warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Golden Valley transportation entity on Lochiel Road."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','warehouses_industrial','warehouses industrial businesses distribution centers','Michael Hansen Transportation, LLC',
 'https://www.city-data.com/business-entities/Golden-Valley-AZ.html','city-data.com','Golden Valley transportation entity at 1598 S Glenbar Rd.','assistant census research: Golden Valley warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Golden Valley transportation entity at 1598 S Glenbar Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','warehouses_industrial','warehouses industrial businesses distribution centers','New Era Transport, LLC',
 'https://www.city-data.com/business-entities/Golden-Valley-AZ.html','city-data.com','Golden Valley transportation entity at 4236 N Concho Rd.','assistant census research: Golden Valley warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Golden Valley transportation entity at 4236 N Concho Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Golden Valley','warehouses_industrial','warehouses industrial businesses distribution centers','RSW Trucking, L.L.C.',
 'https://www.city-data.com/business-entities/Golden-Valley-AZ.html','city-data.com','Golden Valley trucking entity at 3200 N Kaba Rd.','assistant census research: Golden Valley warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Golden Valley trucking entity at 3200 N Kaba Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Golden Valley','hvac_heat','Heating & Air','A 2 Z Refrigeration',
 'https://www.dnb.com/business-directory/company-information.construction.us.arizona.golden_valley.html','dnb.com','D&B Golden Valley construction directory candidate for Heating & Air.','assistant census research: Golden Valley Heating & Air',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"D&B Golden Valley construction directory candidate for Heating & Air."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Golden Valley','electrical_service','Electrician','Select Electric LLC',
 'https://www.dnb.com/business-directory/company-information.construction.us.arizona.golden_valley.html','dnb.com','D&B Golden Valley construction directory candidate for Electrician.','assistant census research: Golden Valley Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"D&B Golden Valley construction directory candidate for Electrician."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Golden Valley','rural_property','Septic, Grading & Wells','Rodenbaugh Excavation and Grading LLC',
 'https://www.dnb.com/business-directory/company-information.construction.us.arizona.golden_valley.html','dnb.com','D&B Golden Valley construction directory candidate for Septic, Grading & Wells.','assistant census research: Golden Valley Septic, Grading & Wells',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"D&B Golden Valley construction directory candidate for Septic, Grading & Wells."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Golden Valley','rural_property','Septic, Grading & Wells','MRA Excavating LLC',
 'https://www.dnb.com/business-directory/company-information.construction.us.arizona.golden_valley.html','dnb.com','D&B Golden Valley construction directory candidate for Septic, Grading & Wells.','assistant census research: Golden Valley Septic, Grading & Wells',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"D&B Golden Valley construction directory candidate for Septic, Grading & Wells."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Golden Valley','backflow_plumbing','Backflow & Commercial Plumbing','Dial Kyle Plumbing L.L.C.',
 'https://www.dnb.com/business-directory/company-information.construction.us.arizona.golden_valley.html','dnb.com','D&B Golden Valley construction directory candidate for Backflow & Commercial Plumbing.','assistant census research: Golden Valley Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"D&B Golden Valley construction directory candidate for Backflow & Commercial Plumbing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Golden Valley','backflow_plumbing','Backflow & Commercial Plumbing','Secret Pass Plumbing',
 'https://www.dnb.com/business-directory/company-information.construction.us.arizona.golden_valley.html','dnb.com','D&B Golden Valley construction directory candidate for Backflow & Commercial Plumbing.','assistant census research: Golden Valley Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"D&B Golden Valley construction directory candidate for Backflow & Commercial Plumbing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Golden Valley','facility_maintenance','Building Maintenance Help','Complete Restoration Inc.',
 'https://www.dnb.com/business-directory/company-information.construction.us.arizona.golden_valley.html','dnb.com','D&B Golden Valley construction directory candidate for Building Maintenance Help.','assistant census research: Golden Valley Building Maintenance Help',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"D&B Golden Valley construction directory candidate for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Golden Valley','rural_property','Septic, Grading & Wells','Pinnacle Grading, L.L.C.',
 'https://www.dnb.com/business-directory/company-information.construction.us.arizona.golden_valley.html','dnb.com','D&B Golden Valley construction directory candidate for Septic, Grading & Wells.','assistant census research: Golden Valley Septic, Grading & Wells',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"D&B Golden Valley construction directory candidate for Septic, Grading & Wells."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Golden Valley','facility_maintenance','Building Maintenance Help','Neal Construction Industry LLC',
 'https://www.dnb.com/business-directory/company-information.construction.us.arizona.golden_valley.html','dnb.com','D&B Golden Valley construction directory candidate for Building Maintenance Help.','assistant census research: Golden Valley Building Maintenance Help',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"D&B Golden Valley construction directory candidate for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Golden Valley','pest_control','Pest Control','J & S Pest Control LLC',
 'https://www.uscorpdirectory.com/az/golden-valley/4','uscorpdirectory.com','Active Golden Valley pest-control entity at 4496 N Cowlic Rd.','assistant census research: Golden Valley Pest Control',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Golden Valley pest-control entity at 4496 N Cowlic Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Golden Valley','handyman_repairs','Handyman','Whiteley Handyman Services LLC',
 'https://www.uscorpdirectory.com/az/golden-valley/9','uscorpdirectory.com','Active Golden Valley handyman entity at 2756 Chiricahua Rd.','assistant census research: Golden Valley Handyman',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Golden Valley handyman entity at 2756 Chiricahua Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Golden Valley','electrical_service','Electrician','RPN Electric, LLC',
 'https://www.city-data.com/business-entities/Golden-Valley-AZ.html','city-data.com','Golden Valley electrical entity at 3524 N Neptune Way.','assistant census research: Golden Valley Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Golden Valley electrical entity at 3524 N Neptune Way."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Golden Valley','epoxy_flooring','Epoxy & Concrete Floors','River Tile and Stone, LLC',
 'https://www.city-data.com/business-entities/Golden-Valley-AZ.html','city-data.com','Golden Valley flooring/tile entity at 640 S Santa Maria Rd.','assistant census research: Golden Valley Epoxy & Concrete Floors',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Golden Valley flooring/tile entity at 640 S Santa Maria Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Golden Valley','facility_maintenance','Building Maintenance Help','PJH Construction, LLC',
 'https://statsnet.co/en/states/us-az/golden-valley','statsnet.co','Registered Golden Valley construction entity.','assistant census research: Golden Valley Building Maintenance Help',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Registered Golden Valley construction entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Golden Valley','rural_property','Septic, Grading & Wells','Johnny & Son''s Bobcat Service, LLC',
 'https://statsnet.co/en/states/us-az/golden-valley','statsnet.co','Registered Golden Valley bobcat/site-work entity.','assistant census research: Golden Valley Septic, Grading & Wells',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Registered Golden Valley bobcat/site-work entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Golden Valley','electrical_service','Electrician','C&M Service Electric LLC',
 'https://statsnet.co/en/states/us-az/golden-valley','statsnet.co','Registered Golden Valley electrical service entity.','assistant census research: Golden Valley Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_golden_valley_batch_02","researched_at":"2026-10-27T00:36:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Registered Golden Valley electrical service entity."}'::jsonb
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
),updated_at=now() where p.market='Golden Valley';


-- Assistant-led Ash Fork census batch 02 (2026-10-26)
insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','warehouses_industrial','warehouses industrial businesses distribution centers','American Sand Stone',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork stone/quarry/materials business in the local business directory.','assistant census research: Ash Fork warehouses industrial businesses distribution centers',0,
 null,'(928) 637-2542',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork stone/quarry/materials business in the local business directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','warehouses_industrial','warehouses industrial businesses distribution centers','Dunbar Stone Co',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork stone/quarry/materials business in the local business directory.','assistant census research: Ash Fork warehouses industrial businesses distribution centers',0,
 null,'(928) 637-2592',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork stone/quarry/materials business in the local business directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','warehouses_industrial','warehouses industrial businesses distribution centers','Levin Stone Company Inc',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork stone/quarry/materials business in the local business directory.','assistant census research: Ash Fork warehouses industrial businesses distribution centers',0,
 null,'(928) 637-2288',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork stone/quarry/materials business in the local business directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','warehouses_industrial','warehouses industrial businesses distribution centers','Horner Stone',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork stone/quarry/materials business in the local business directory.','assistant census research: Ash Fork warehouses industrial businesses distribution centers',0,
 null,'(928) 637-2271',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork stone/quarry/materials business in the local business directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','warehouses_industrial','warehouses industrial businesses distribution centers','Rock Ridge Quarries',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork stone/quarry/materials business in the local business directory.','assistant census research: Ash Fork warehouses industrial businesses distribution centers',0,
 null,'(928) 636-0508',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork stone/quarry/materials business in the local business directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','warehouses_industrial','warehouses industrial businesses distribution centers','International Stone',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork stone/quarry/materials business in the local business directory.','assistant census research: Ash Fork warehouses industrial businesses distribution centers',0,
 null,'(928) 637-2222',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork stone/quarry/materials business in the local business directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','warehouses_industrial','warehouses industrial businesses distribution centers','Bluebird Stone',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork stone/quarry/materials business in the local business directory.','assistant census research: Ash Fork warehouses industrial businesses distribution centers',0,
 null,'(928) 637-2522',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork stone/quarry/materials business in the local business directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','warehouses_industrial','warehouses industrial businesses distribution centers','Horner Stone Company Inc',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork stone/quarry/materials business in the local business directory.','assistant census research: Ash Fork warehouses industrial businesses distribution centers',0,
 null,'(928) 637-2271',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork stone/quarry/materials business in the local business directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','warehouses_industrial','warehouses industrial businesses distribution centers','Hammond Wholesale Flagstone',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork stone/quarry/materials business in the local business directory.','assistant census research: Ash Fork warehouses industrial businesses distribution centers',0,
 null,'(928) 637-9852',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork stone/quarry/materials business in the local business directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','warehouses_industrial','warehouses industrial businesses distribution centers','Juniper Wood Ranch',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork ranch/agriculture/land-based business candidate.','assistant census research: Ash Fork warehouses industrial businesses distribution centers',0,
 null,'(928) 637-2506',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork ranch/agriculture/land-based business candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','warehouses_industrial','warehouses industrial businesses distribution centers','Grand Canyon Farms',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork ranch/agriculture/land-based business candidate.','assistant census research: Ash Fork warehouses industrial businesses distribution centers',0,
 null,'(928) 637-2328',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork ranch/agriculture/land-based business candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','warehouses_industrial','warehouses industrial businesses distribution centers','AlAnn Ranch',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork ranch/agriculture/land-based business candidate.','assistant census research: Ash Fork warehouses industrial businesses distribution centers',0,
 null,'(928) 925-0139',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork ranch/agriculture/land-based business candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','warehouses_industrial','warehouses industrial businesses distribution centers','Juniper Wood Ranch Winery',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork ranch/agriculture/land-based business candidate.','assistant census research: Ash Fork warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork ranch/agriculture/land-based business candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','warehouses_industrial','warehouses industrial businesses distribution centers','Leist Land and Livestock, LLC',
 'https://www.city-data.com/business-entities/Ash-Fork-AZ.html','city-data.com','Ash Fork ranch/agriculture/land-based business candidate.','assistant census research: Ash Fork warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork ranch/agriculture/land-based business candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','warehouses_industrial','warehouses industrial businesses distribution centers','Lakota Ranch, LLC',
 'https://www.city-data.com/business-entities/Ash-Fork-AZ.html','city-data.com','Ash Fork ranch/agriculture/land-based business candidate.','assistant census research: Ash Fork warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork ranch/agriculture/land-based business candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','warehouses_industrial','warehouses industrial businesses distribution centers','Point Fire Ranch, LLC',
 'https://www.city-data.com/business-entities/Ash-Fork-AZ.html','city-data.com','Ash Fork ranch/agriculture/land-based business candidate.','assistant census research: Ash Fork warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork ranch/agriculture/land-based business candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Ash Fork','facility_maintenance','Building Maintenance Help','Joe Ulrich Masonry',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork masonry/construction business.','assistant census research: Ash Fork Building Maintenance Help',0,
 null,'(928) 637-2662',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork masonry/construction business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','retail','retail stores shopping stores','Hammonds Route 66 Lumber',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork lumber/building-supply business.','assistant census research: Ash Fork retail stores shopping stores',0,
 null,'(928) 637-9877',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork lumber/building-supply business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','churches','churches worship centers','First Southern Baptist Church',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork church facility.','assistant census research: Ash Fork churches worship centers',0,
 null,'(928) 637-2226',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork church facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','grocery','grocery stores supermarkets markets','Corral Market',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork grocery/convenience market at 93 Lewis Ave.','assistant census research: Ash Fork grocery stores supermarkets markets',0,
 null,'(928) 637-2268',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork grocery/convenience market at 93 Lewis Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','general_business','other local businesses','Monte Carlo Truck Service',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork truck-service business.','assistant census research: Ash Fork other local businesses',0,
 null,'(928) 637-2678',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork truck-service business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','property_management','property management companies apartment communities','Country Life Realty',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork real-estate office.','assistant census research: Ash Fork property management companies apartment communities',0,
 null,'(928) 637-2399',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork real-estate office."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','general_business','other local businesses','U-Haul Co',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork truck-rental/moving business on Old Route 66.','assistant census research: Ash Fork other local businesses',0,
 null,'(928) 637-0010',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork truck-rental/moving business on Old Route 66."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','general_business','other local businesses','Ash Fork Mobil',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork fuel/convenience facility.','assistant census research: Ash Fork other local businesses',0,
 null,'(928) 637-2308',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork fuel/convenience facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','insurance_professional','insurance agents professional offices','Kanaka Internet Services',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork technology/business-services operation.','assistant census research: Ash Fork insurance agents professional offices',0,
 null,'(928) 637-0048',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork technology/business-services operation."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Ash Fork','facility_maintenance','Building Maintenance Help','Ash Creek Homes',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork home/construction business.','assistant census research: Ash Fork Building Maintenance Help',0,
 null,'(928) 637-9882',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork home/construction business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','grocery','grocery stores supermarkets markets','Mandy''s Market',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork market/retail facility.','assistant census research: Ash Fork grocery stores supermarkets markets',0,
 null,'(928) 637-2698',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork market/retail facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','hotels_motels','hotels motels lodging','Copperstate Motel',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork motel at 101 W Lewis Ave.','assistant census research: Ash Fork hotels motels lodging',0,
 null,'(928) 637-2335',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork motel at 101 W Lewis Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','warehouses_industrial','warehouses industrial businesses distribution centers','Double F Transportation',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork transportation business.','assistant census research: Ash Fork warehouses industrial businesses distribution centers',0,
 null,'(928) 637-2788',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork transportation business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','restaurants','restaurants','Route 66 Grill',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork Route 66 restaurant listing.','assistant census research: Ash Fork restaurants',0,
 null,'(928) 637-2528',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork Route 66 restaurant listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','general_business','other local businesses','Desoto''s Beauty & Barber Shop',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork beauty/barber business.','assistant census research: Ash Fork other local businesses',0,
 null,'(928) 637-9886',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork beauty/barber business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','retail','retail stores shopping stores','Davis Leather Co',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork leather/retail business.','assistant census research: Ash Fork retail stores shopping stores',0,
 null,'(928) 637-0111',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork leather/retail business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','general_business','other local businesses','American Legion Post 57',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork American Legion/community facility.','assistant census research: Ash Fork other local businesses',0,
 null,'(928) 637-2254',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork American Legion/community facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','schools','schools charter schools private schools','Ash Fork Unified School District',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork public school district facility.','assistant census research: Ash Fork schools charter schools private schools',0,
 null,'(928) 637-2561',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork public school district facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','public_facilities','government public facilities municipal buildings','Ash Fork Water Service',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork water utility/public-service facility.','assistant census research: Ash Fork government public facilities municipal buildings',0,
 null,'(928) 637-2774',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork water utility/public-service facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','property_management','property management companies apartment communities','Jakes Old West Properties',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork real-estate/property business.','assistant census research: Ash Fork property management companies apartment communities',0,
 null,'(928) 637-2675',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork real-estate/property business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','property_management','property management companies apartment communities','Buyer''s Realty',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork real-estate office.','assistant census research: Ash Fork property management companies apartment communities',0,
 null,'(928) 637-0066',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork real-estate office."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','general_business','other local businesses','Canine Coifeuse & Creations',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork pet/grooming business.','assistant census research: Ash Fork other local businesses',0,
 null,'(928) 637-2377',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork pet/grooming business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','warehouses_industrial','warehouses industrial businesses distribution centers','ASND Transportation',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork transportation business.','assistant census research: Ash Fork warehouses industrial businesses distribution centers',0,
 null,'(928) 637-2232',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork transportation business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','general_business','other local businesses','Rick Murphy''s Chevron',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork fuel/convenience/travel facility.','assistant census research: Ash Fork other local businesses',0,
 null,'(928) 637-2580',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork fuel/convenience/travel facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','general_business','other local businesses','Ash Fork Food Bank',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork nonprofit food-bank facility.','assistant census research: Ash Fork other local businesses',0,
 null,'(928) 637-0462',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork nonprofit food-bank facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','property_management','property management companies apartment communities','Ash Fork Realty',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork real-estate business.','assistant census research: Ash Fork property management companies apartment communities',0,
 null,'(928) 637-0066',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork real-estate business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','general_business','other local businesses','Old Nevada Corporation',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork Route 66 business entity at 921 W Old Route 66.','assistant census research: Ash Fork other local businesses',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork Route 66 business entity at 921 W Old Route 66."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','warehouses_industrial','warehouses industrial businesses distribution centers','3north LLC',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork forestry/land-based business.','assistant census research: Ash Fork warehouses industrial businesses distribution centers',0,
 null,'(928) 636-4454',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork forestry/land-based business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','general_business','other local businesses','All American Track Inc',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork business at 1238 W Canyon Rd.','assistant census research: Ash Fork other local businesses',0,
 null,'(928) 606-5686',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork business at 1238 W Canyon Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','retail','retail stores shopping stores','Sun San Distribute',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork distribution/retail business at 96 W Park Ave.','assistant census research: Ash Fork retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork distribution/retail business at 96 W Park Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','general_business','other local businesses','JJ Enterprise',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork local business entity.','assistant census research: Ash Fork other local businesses',0,
 null,'(928) 637-2744',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork local business entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','retail','retail stores shopping stores','Windspirit Embroidery',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork custom embroidery/maker business.','assistant census research: Ash Fork retail stores shopping stores',0,
 null,'(928) 237-0281',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork custom embroidery/maker business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Ash Fork','facility_maintenance','Building Maintenance Help','Cauthen Construction LLC',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork construction contractor.','assistant census research: Ash Fork Building Maintenance Help',0,
 null,'(928) 637-2679',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork construction contractor."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Ash Fork','rural_property','Septic, Grading & Wells','Triple R Excavation',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork excavation/site-work business.','assistant census research: Ash Fork Septic, Grading & Wells',0,
 null,'(520) 308-0280',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork excavation/site-work business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','retail','retail stores shopping stores','Towels Scrubs & More',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork apparel/supplies business.','assistant census research: Ash Fork retail stores shopping stores',0,
 null,'(928) 637-2249',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork apparel/supplies business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','general_business','other local businesses','Hillside Texaco & RV',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork fuel/RV traveler facility at I-40.','assistant census research: Ash Fork other local businesses',0,
 null,'(928) 637-2228',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork fuel/RV traveler facility at I-40."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','hotels_motels','hotels motels lodging','Route 66 RV.com LLC',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork RV/campground business.','assistant census research: Ash Fork hotels motels lodging',0,
 null,'(928) 637-2402',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork RV/campground business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','insurance_professional','insurance agents professional offices','Yavaco Technologies',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork technology/professional-services business.','assistant census research: Ash Fork insurance agents professional offices',0,
 null,'(928) 637-0098',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork technology/professional-services business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','gyms_fitness','gyms fitness centers recreation centers','Essentially Oils & Massage',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork wellness/massage business.','assistant census research: Ash Fork gyms fitness centers recreation centers',0,
 null,'(928) 380-8864',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork wellness/massage business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','gyms_fitness','gyms fitness centers recreation centers','KJ''s Tanning',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork tanning/wellness business.','assistant census research: Ash Fork gyms fitness centers recreation centers',0,
 null,'(928) 637-6434',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork tanning/wellness business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','schools','schools charter schools private schools','High Desert Educational Consulting',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork educational consulting/training business.','assistant census research: Ash Fork schools charter schools private schools',0,
 null,'(928) 380-2870',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork educational consulting/training business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','general_business','other local businesses','Bridge Ministries',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork ministry/community organization.','assistant census research: Ash Fork other local businesses',0,
 null,'(928) 637-6567',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork ministry/community organization."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','public_facilities','government public facilities municipal buildings','Juniper Woods Volunteer Fire Department',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork-area volunteer fire facility.','assistant census research: Ash Fork government public facilities municipal buildings',0,
 null,'(928) 607-9758',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork-area volunteer fire facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','public_facilities','government public facilities municipal buildings','Kaibab Estates West Fire Department',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork-area volunteer fire/public-safety facility.','assistant census research: Ash Fork government public facilities municipal buildings',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork-area volunteer fire/public-safety facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','public_facilities','government public facilities municipal buildings','US Post Office - Ash Fork',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork federal postal facility at 435 Park Ave.','assistant census research: Ash Fork government public facilities municipal buildings',0,
 null,'(928) 637-2554',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork federal postal facility at 435 Park Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','churches','churches worship centers','St Anne Roman Catholic Mission Ash Fork',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork Catholic church facility.','assistant census research: Ash Fork churches worship centers',0,
 null,'(928) 637-2458',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork Catholic church facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Ash Fork','electrical_service','Electrician','Solar Guy',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork solar/electrical service candidate.','assistant census research: Ash Fork Electrician',0,
 null,'(928) 607-3415',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork solar/electrical service candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','general_business','other local businesses','Anderson''s Kennels',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork kennel/pet-services business.','assistant census research: Ash Fork other local businesses',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork kennel/pet-services business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','retail','retail stores shopping stores','Horner Feed & Mercantile LLC',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork feed/mercantile retail business.','assistant census research: Ash Fork retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork feed/mercantile retail business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','restaurants','restaurants','Piccadilly Pizza & Subs',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork pizza/sub restaurant at 1198 W Old Route 66.','assistant census research: Ash Fork restaurants',0,
 null,'(928) 637-2580',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork pizza/sub restaurant at 1198 W Old Route 66."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','retail','retail stores shopping stores','Family Dollar Store',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork discount retail store at 155 Park Ave.','assistant census research: Ash Fork retail stores shopping stores',0,
 null,'(928) 637-0115',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork discount retail store at 155 Park Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Ash Fork','facility_maintenance','Building Maintenance Help','High Country Vinyl Siding',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork siding/property-maintenance business.','assistant census research: Ash Fork Building Maintenance Help',0,
 null,'(928) 899-0936',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork siding/property-maintenance business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','senior_daycare','senior living assisted living daycare childcare','Ash Fork Head Start Center',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork Head Start/childcare facility.','assistant census research: Ash Fork senior living assisted living daycare childcare',0,
 null,'(928) 637-1027',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork Head Start/childcare facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','hotels_motels','hotels motels lodging','ReUnion Camp / Juniperwood Ranch Winery',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork camp/rural lodging and winery facility.','assistant census research: Ash Fork hotels motels lodging',0,
 null,'(602) 626-0316',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork camp/rural lodging and winery facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','hotels_motels','hotels motels lodging','Interstate 40 Grand Canyon RV Park & Campground',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork RV park/campground on Old Highway 66.','assistant census research: Ash Fork hotels motels lodging',0,
 null,'(928) 637-9897',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork RV park/campground on Old Highway 66."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','warehouses_industrial','warehouses industrial businesses distribution centers','Stapleton Transportation Company, LLC',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork trucking/transportation company.','assistant census research: Ash Fork warehouses industrial businesses distribution centers',0,
 null,'(928) 310-4030',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork trucking/transportation company."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Ash Fork','rural_property','Septic, Grading & Wells','KP Ventures Well Drilling & Pump',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork well-drilling and pump service candidate.','assistant census research: Ash Fork Septic, Grading & Wells',0,
 null,'(928) 637-1709',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork well-drilling and pump service candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','general_business','other local businesses','Double Track Publishing',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork publishing/business-services company.','assistant census research: Ash Fork other local businesses',0,
 null,'(928) 637-2707',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork publishing/business-services company."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','warehouses_industrial','warehouses industrial businesses distribution centers','Magdrive LLC',
 'https://www.whereorg.com/businesses/ash-fork-az','whereorg.com','Ash Fork industrial/technology entity at 2225 N Gemini Dr.','assistant census research: Ash Fork warehouses industrial businesses distribution centers',0,
 null,'(928) 637-6797',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Ash Fork industrial/technology entity at 2225 N Gemini Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','hotels_motels','hotels motels lodging','Ash Fork Inn / Canyon''s Edge Route 66 Motel',
 'https://www.iexitapp.com/Arizona/I-40/Exit%20144/14301','iexitapp.com','Current Ash Fork Route 66 motel near I-40 Exit 144.','assistant census research: Ash Fork hotels motels lodging',0,
 null,'(928) 637-2514',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Ash Fork Route 66 motel near I-40 Exit 144."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','theaters_entertainment','theaters cinemas entertainment venues','Ash Fork Tourist Center and Museum',
 'https://www.iexitapp.com/Arizona/I-40/Exit%20144/14301','iexitapp.com','Current Ash Fork Route 66 museum/tourist facility.','assistant census research: Ash Fork theaters cinemas entertainment venues',0,
 null,'(928) 637-0204',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Ash Fork Route 66 museum/tourist facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','restaurants','restaurants','Ranch House Cafe',
 'https://www.iexitapp.com/Arizona/I-40/Exit%20146/14300','iexitapp.com','Current Ash Fork cafe/diner near I-40 Exit 146.','assistant census research: Ash Fork restaurants',0,
 null,'(928) 890-7929',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Ash Fork cafe/diner near I-40 Exit 146."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','restaurants','restaurants','Spice Grill & Bar',
 'https://www.iexitapp.com/Arizona/I-40/Exit%20146/14300','iexitapp.com','Current Ash Fork restaurant at 33 Lewis Ave.','assistant census research: Ash Fork restaurants',0,
 null,'(928) 277-1292',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Ash Fork restaurant at 33 Lewis Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','restaurants','restaurants','AGAF Smokehouse',
 'https://www.iexitapp.com/Arizona/I-40/Exit%20146/14300','iexitapp.com','Current Ash Fork food business at 96 W Park Ave.','assistant census research: Ash Fork restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Ash Fork food business at 96 W Park Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','restaurants','restaurants','Oasis Lounge',
 'https://www.iexitapp.com/Arizona/I-40/Exit%20146/14300','iexitapp.com','Current Ash Fork bar/lounge at 346 Park Ave.','assistant census research: Ash Fork restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Ash Fork bar/lounge at 346 Park Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','general_business','other local businesses','ONE9 Travel Center',
 'https://www.iexitapp.com/Arizona/I-40/Exit%20146/14300','iexitapp.com','Current 24-hour Ash Fork truck stop/convenience/fuel facility at 43 Park Ave.','assistant census research: Ash Fork other local businesses',0,
 null,'(928) 754-1285',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current 24-hour Ash Fork truck stop/convenience/fuel facility at 43 Park Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','general_business','other local businesses','TA Travel Center Ash Fork',
 'https://www.iexitapp.com/Arizona/I-40/Exit%20144/14301','iexitapp.com','Current large Ash Fork travel center/truck stop on Old Route 66.','assistant census research: Ash Fork other local businesses',0,
 null,'(928) 405-7788',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current large Ash Fork travel center/truck stop on Old Route 66."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','general_business','other local businesses','Patriot Automotive & Truck Repair',
 'https://www.iexitapp.com/Arizona/I-40/Exit%20146/14300','iexitapp.com','Current Ash Fork automotive/truck repair facility at 268 Lewis Ave.','assistant census research: Ash Fork other local businesses',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Ash Fork automotive/truck repair facility at 268 Lewis Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Ash Fork','facility_maintenance','Building Maintenance Help','JDL Contracting, LLC',
 'https://www.city-data.com/business-entities/Ash-Fork-AZ.html','city-data.com','Active Ash Fork business entity candidate for Building Maintenance Help.','assistant census research: Ash Fork Building Maintenance Help',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Ash Fork business entity candidate for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Ash Fork','electrical_service','Electrician','KJ Electrical Contractors, LLC',
 'https://www.city-data.com/business-entities/Ash-Fork-AZ.html','city-data.com','Active Ash Fork business entity candidate for Electrician.','assistant census research: Ash Fork Electrician',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Ash Fork business entity candidate for Electrician."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Ash Fork','facility_maintenance','Building Maintenance Help','New West Construction, L.L.C.',
 'https://www.city-data.com/business-entities/Ash-Fork-AZ.html','city-data.com','Active Ash Fork business entity candidate for Building Maintenance Help.','assistant census research: Ash Fork Building Maintenance Help',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Ash Fork business entity candidate for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Ash Fork','facility_maintenance','Building Maintenance Help','Olive Branch Construction, LLC',
 'https://www.city-data.com/business-entities/Ash-Fork-AZ.html','city-data.com','Active Ash Fork business entity candidate for Building Maintenance Help.','assistant census research: Ash Fork Building Maintenance Help',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Ash Fork business entity candidate for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Ash Fork','fire_safety','Fire Safety & Extinguisher Service','Titan Fire Protection, Inc.',
 'https://www.city-data.com/business-entities/Ash-Fork-AZ.html','city-data.com','Active Ash Fork business entity candidate for Fire Safety & Extinguisher Service.','assistant census research: Ash Fork Fire Safety & Extinguisher Service',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Ash Fork business entity candidate for Fire Safety & Extinguisher Service."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Ash Fork','towing_roadside','Towing & Roadside Help','Road Serve, LLC',
 'https://www.city-data.com/business-entities/Ash-Fork-AZ.html','city-data.com','Active Ash Fork business entity candidate for Towing & Roadside Help.','assistant census research: Ash Fork Towing & Roadside Help',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Ash Fork business entity candidate for Towing & Roadside Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','warehouses_industrial','warehouses industrial businesses distribution centers','Juniper Woods Transport, LLC',
 'https://www.city-data.com/business-entities/Ash-Fork-AZ.html','city-data.com','Active Ash Fork trucking/transportation entity.','assistant census research: Ash Fork warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Ash Fork trucking/transportation entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','warehouses_industrial','warehouses industrial businesses distribution centers','Keele Trucking, LLC',
 'https://www.city-data.com/business-entities/Ash-Fork-AZ.html','city-data.com','Active Ash Fork trucking/transportation entity.','assistant census research: Ash Fork warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Ash Fork trucking/transportation entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','warehouses_industrial','warehouses industrial businesses distribution centers','Meant 2 B Trucking, LLC',
 'https://www.city-data.com/business-entities/Ash-Fork-AZ.html','city-data.com','Active Ash Fork trucking/transportation entity.','assistant census research: Ash Fork warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Ash Fork trucking/transportation entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','warehouses_industrial','warehouses industrial businesses distribution centers','Purple Works Trucking, LLC',
 'https://www.city-data.com/business-entities/Ash-Fork-AZ.html','city-data.com','Active Ash Fork trucking/transportation entity.','assistant census research: Ash Fork warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Ash Fork trucking/transportation entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','warehouses_industrial','warehouses industrial businesses distribution centers','SSM Trucking, LLC',
 'https://www.city-data.com/business-entities/Ash-Fork-AZ.html','city-data.com','Active Ash Fork trucking/transportation entity.','assistant census research: Ash Fork warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Ash Fork trucking/transportation entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','retail','retail stores shopping stores','Thrift 66 Store, LLC',
 'https://www.city-data.com/business-entities/Ash-Fork-AZ.html','city-data.com','Active Ash Fork retail entity at 322 W Lewis Ave.','assistant census research: Ash Fork retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Ash Fork retail entity at 322 W Lewis Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','restaurants','restaurants','Lulu Belle''s BBQ, LLC',
 'https://www.city-data.com/business-entities/Ash-Fork-AZ.html','city-data.com','Active Ash Fork restaurant/food entity at 33 W Lewis Ave.','assistant census research: Ash Fork restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Ash Fork restaurant/food entity at 33 W Lewis Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','general_business','other local businesses','Northern Arizona Animal Assistance Corp.',
 'https://www.city-data.com/business-entities/Ash-Fork-AZ.html','city-data.com','Active Ash Fork animal/nonprofit entity.','assistant census research: Ash Fork other local businesses',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Ash Fork animal/nonprofit entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Ash Fork','general_business','other local businesses','Robert Fulton Post 57, Inc.',
 'https://www.city-data.com/business-entities/Ash-Fork-AZ.html','city-data.com','Active Ash Fork American Legion/community entity.','assistant census research: Ash Fork other local businesses',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_ash_fork_batch_02","researched_at":"2026-10-27T00:46:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Ash Fork American Legion/community entity."}'::jsonb
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
),updated_at=now() where p.market='Ash Fork';


-- Assistant-led Seligman census batch 02 (2026-10-26)
insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','hotels_motels','hotels motels lodging','Canyon Lodge',
 'https://seligmanazchamber.com/visit-seligman/where-to-stay/','seligmanazchamber.com','Current Seligman lodging/accommodation business.','assistant census research: Seligman hotels motels lodging',0,
 null,'(928) 925-9435',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Seligman lodging/accommodation business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','hotels_motels','hotels motels lodging','Historic Route 66 Motel',
 'https://seligmanazchamber.com/visit-seligman/where-to-stay/','seligmanazchamber.com','Current Seligman lodging/accommodation business.','assistant census research: Seligman hotels motels lodging',0,
 null,'(928) 422-3204',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Seligman lodging/accommodation business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','hotels_motels','hotels motels lodging','Supai Motel',
 'https://seligmanazchamber.com/visit-seligman/where-to-stay/','seligmanazchamber.com','Current Seligman lodging/accommodation business.','assistant census research: Seligman hotels motels lodging',0,
 null,'(928) 422-4135',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Seligman lodging/accommodation business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','hotels_motels','hotels motels lodging','Stagecoach 66 Motel',
 'https://seligmanazchamber.com/visit-seligman/where-to-stay/','seligmanazchamber.com','Current Seligman lodging/accommodation business.','assistant census research: Seligman hotels motels lodging',0,
 null,'(928) 422-3470',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Seligman lodging/accommodation business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','hotels_motels','hotels motels lodging','Seligman Route 66 KOA Journey',
 'https://seligmanazchamber.com/visit-seligman/where-to-stay/','seligmanazchamber.com','Current Seligman lodging/accommodation business.','assistant census research: Seligman hotels motels lodging',0,
 null,'(928) 422-3358',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Seligman lodging/accommodation business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','hotels_motels','hotels motels lodging','Grand Canyon Caverns Inn',
 'https://seligmanazchamber.com/visit-seligman/where-to-stay/','seligmanazchamber.com','Current Seligman lodging/accommodation business.','assistant census research: Seligman hotels motels lodging',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Seligman lodging/accommodation business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','hotels_motels','hotels motels lodging','Aztec Motel & Creative Space',
 'https://seligmanazchamber.com/visit-seligman/where-to-stay/','seligmanazchamber.com','Current Seligman lodging/accommodation business.','assistant census research: Seligman hotels motels lodging',0,
 null,'(928) 455-1015',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Seligman lodging/accommodation business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','hotels_motels','hotels motels lodging','Deluxe Inn',
 'https://seligmanazchamber.com/visit-seligman/where-to-stay/','seligmanazchamber.com','Current Seligman lodging/accommodation business.','assistant census research: Seligman hotels motels lodging',0,
 null,'(928) 422-3244',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Seligman lodging/accommodation business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','restaurants','restaurants','Roadkill Cafe & O.K. Saloon',
 'https://www.seligmanazchamber.com/visit-seligman/where-to-eat-drink','seligmanazchamber.com','Current Seligman food/bar/cafe business.','assistant census research: Seligman restaurants',0,
 null,'(928) 422-3554',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Seligman food/bar/cafe business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','restaurants','restaurants','Westside Lilo''s Cafe',
 'https://www.seligmanazchamber.com/visit-seligman/where-to-eat-drink','seligmanazchamber.com','Current Seligman food/bar/cafe business.','assistant census research: Seligman restaurants',0,
 null,'(928) 422-5456',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Seligman food/bar/cafe business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','restaurants','restaurants','Delgadillo''s Snow Cap',
 'https://www.seligmanazchamber.com/visit-seligman/where-to-eat-drink','seligmanazchamber.com','Current Seligman food/bar/cafe business.','assistant census research: Seligman restaurants',0,
 null,'(928) 422-3291',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Seligman food/bar/cafe business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','restaurants','restaurants','The Commodore House',
 'https://www.seligmanazchamber.com/visit-seligman/where-to-eat-drink','seligmanazchamber.com','Current Seligman food/bar/cafe business.','assistant census research: Seligman restaurants',0,
 null,'(928) 707-4512',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Seligman food/bar/cafe business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','restaurants','restaurants','Highway Hot Dog',
 'https://www.seligmanazchamber.com/visit-seligman/where-to-eat-drink','seligmanazchamber.com','Current Seligman food/bar/cafe business.','assistant census research: Seligman restaurants',0,
 null,'(928) 899-9552',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Seligman food/bar/cafe business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','restaurants','restaurants','The Pizza Joint',
 'https://www.seligmanazchamber.com/visit-seligman/where-to-eat-drink','seligmanazchamber.com','Current Seligman food/bar/cafe business.','assistant census research: Seligman restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Seligman food/bar/cafe business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','restaurants','restaurants','Black Cat Bar',
 'https://www.seligmanazchamber.com/visit-seligman/where-to-eat-drink','seligmanazchamber.com','Current Seligman food/bar/cafe business.','assistant census research: Seligman restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Seligman food/bar/cafe business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','restaurants','restaurants','Route 66 RoadRunner Cafe & Bar',
 'https://www.seligmanazchamber.com/visit-seligman/where-to-eat-drink','seligmanazchamber.com','Current Seligman food/bar/cafe business.','assistant census research: Seligman restaurants',0,
 null,'(928) 232-2004',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Seligman food/bar/cafe business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','restaurants','restaurants','Copper Cart',
 'https://www.seligmanazchamber.com/visit-seligman/where-to-eat-drink','seligmanazchamber.com','Current Seligman food/bar/cafe business.','assistant census research: Seligman restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Seligman food/bar/cafe business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','restaurants','restaurants','The Pizza Joint at Stagecoach 66',
 'https://www.seligmanazchamber.com/visit-seligman/where-to-eat-drink','seligmanazchamber.com','Current Seligman food/bar/cafe business.','assistant census research: Seligman restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Seligman food/bar/cafe business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','retail','retail stores shopping stores','Route 66 RoadRunner',
 'https://seligmanazchamber.com/visit-seligman/where-to-shop/','seligmanazchamber.com','Current Seligman retail/general-store/feed business.','assistant census research: Seligman retail stores shopping stores',0,
 null,'(928) 232-2004',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Seligman retail/general-store/feed business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','retail','retail stores shopping stores','Historic Route 66 General Store',
 'https://seligmanazchamber.com/visit-seligman/where-to-shop/','seligmanazchamber.com','Current Seligman retail/general-store/feed business.','assistant census research: Seligman retail stores shopping stores',0,
 null,'(928) 422-3549',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Seligman retail/general-store/feed business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','retail','retail stores shopping stores','Route 66 Road Relics',
 'https://seligmanazchamber.com/visit-seligman/where-to-shop/','seligmanazchamber.com','Current Seligman retail/general-store/feed business.','assistant census research: Seligman retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Seligman retail/general-store/feed business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','retail','retail stores shopping stores','Angel & Vilma Delgadillo''s Original Route 66 Gift Shop',
 'https://seligmanazchamber.com/visit-seligman/where-to-shop/','seligmanazchamber.com','Current Seligman retail/general-store/feed business.','assistant census research: Seligman retail stores shopping stores',0,
 null,'(928) 422-3352',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Seligman retail/general-store/feed business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','retail','retail stores shopping stores','Roadkill Cafe / O.K. Saloon Gift Shop',
 'https://seligmanazchamber.com/visit-seligman/where-to-shop/','seligmanazchamber.com','Current Seligman retail/general-store/feed business.','assistant census research: Seligman retail stores shopping stores',0,
 null,'(928) 422-3554',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Seligman retail/general-store/feed business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','grocery','grocery stores supermarkets markets','Seligman Grocery Mart',
 'https://seligmanazchamber.com/visit-seligman/where-to-shop/','seligmanazchamber.com','Current Seligman retail/general-store/feed business.','assistant census research: Seligman grocery stores supermarkets markets',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Seligman retail/general-store/feed business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','retail','retail stores shopping stores','4B RT 66 Feed & Stuff',
 'https://seligmanazchamber.com/visit-seligman/where-to-shop/','seligmanazchamber.com','Current Seligman retail/general-store/feed business.','assistant census research: Seligman retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Seligman retail/general-store/feed business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','retail','retail stores shopping stores','Champie Feed & Tack',
 'https://seligmanazchamber.com/visit-seligman/where-to-shop/','seligmanazchamber.com','Current Seligman retail/general-store/feed business.','assistant census research: Seligman retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Seligman retail/general-store/feed business."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Seligman','towing_roadside','Towing & Roadside Help','Historic Route 66 Auto & Towing',
 'https://www.seligmanazchamber.com/local-information/local-services/','seligmanazchamber.com','Current Seligman Chamber lists 24/7 towing, tire/oil service and small-engine repair.','assistant census research: Seligman Towing & Roadside Help',0,
 null,'(928) 422-3528',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Seligman Chamber lists 24/7 towing, tire/oil service and small-engine repair."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','general_business','other local businesses','Historic Route 66 Automotive',
 'https://www.seligmanazchamber.com/local-information/local-services/','seligmanazchamber.com','Current Seligman automotive repair facility.','assistant census research: Seligman other local businesses',0,
 null,'(928) 422-3528',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Seligman automotive repair facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','public_facilities','government public facilities municipal buildings','Seligman Library',
 'https://www.seligmanazchamber.com/local-information/local-services/','seligmanazchamber.com','Current Seligman public library facility.','assistant census research: Seligman government public facilities municipal buildings',0,
 null,'(928) 422-3633',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Seligman public library facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','general_business','other local businesses','Johnson''s Travel Center',
 'https://www.google.com/search?q=Johnson%27s+Travel+Center+Seligman+AZ','google.com','Current 24-hour truck stop/travel facility at I-40 Exit 123.','assistant census research: Seligman other local businesses',0,
 null,'(928) 422-3540',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current 24-hour truck stop/travel facility at I-40 Exit 123."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','general_business','other local businesses','Olson''s Seligman Mini Mart',
 'https://www.google.com/search?q=Olson%27s+Seligman+Mini+Mart','google.com','Current 24-hour gas/convenience traveler facility at I-40 Exit 123.','assistant census research: Seligman other local businesses',0,
 null,'(928) 422-3586',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current 24-hour gas/convenience traveler facility at I-40 Exit 123."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','general_business','other local businesses','Route 66 Chevron / America''s Main Street',
 'https://www.google.com/search?q=Chevron+Seligman+AZ','google.com','Current Route 66 gas/convenience traveler facility.','assistant census research: Seligman other local businesses',0,
 null,'(928) 422-7866',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Route 66 gas/convenience traveler facility."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','schools','schools charter schools private schools','Seligman Elementary and High School',
 'https://www.google.com/search?q=Seligman+Elementary+and+High+School','google.com','Current public K-12 campus serving the Seligman Unified School District.','assistant census research: Seligman schools charter schools private schools',0,
 null,'(928) 216-4123',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current public K-12 campus serving the Seligman Unified School District."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','churches','churches worship centers','Seligman Christian Fellowship',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman church entity at 22475 W Cedar St.','assistant census research: Seligman churches worship centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman church entity at 22475 W Cedar St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','churches','churches worship centers','St. Francis Roman Catholic Parish Seligman',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman Catholic parish entity at 104 Schoeny St.','assistant census research: Seligman churches worship centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman Catholic parish entity at 104 Schoeny St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','general_business','other local businesses','Seligman Chamber of Commerce',
 'https://seligmanazchamber.com/contact-us/','seligmanazchamber.com','Current local chamber/business organization.','assistant census research: Seligman other local businesses',0,
 null,'(928) 607-3032',false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current local chamber/business organization."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','theaters_entertainment','theaters cinemas entertainment venues','Seligman Historical Society',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman historical/community organization.','assistant census research: Seligman theaters cinemas entertainment venues',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman historical/community organization."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','theaters_entertainment','theaters cinemas entertainment venues','Route 66 Motorporium',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Route 66 attraction/retail entity at 22385 W Old Highway 66.','assistant census research: Seligman theaters cinemas entertainment venues',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Route 66 attraction/retail entity at 22385 W Old Highway 66."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','hotels_motels','hotels motels lodging','Canyon Lodge Motel, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman lodging entity.','assistant census research: Seligman hotels motels lodging',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman lodging entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','hotels_motels','hotels motels lodging','Delta Motel, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman lodging entity.','assistant census research: Seligman hotels motels lodging',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman lodging entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','hotels_motels','hotels motels lodging','Seligman Canyon Lodge, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman lodging entity.','assistant census research: Seligman hotels motels lodging',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman lodging entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','hotels_motels','hotels motels lodging','Romney Motel an Arizona, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman lodging entity.','assistant census research: Seligman hotels motels lodging',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman lodging entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','restaurants','restaurants','Delgadillo''s Snow Cap, L.L.C.',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman food/bar business entity.','assistant census research: Seligman restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman food/bar business entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','restaurants','restaurants','Bri-Lor Subs, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman food/bar business entity.','assistant census research: Seligman restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman food/bar business entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','restaurants','restaurants','Shyanne Chuck Wagon, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman food/bar business entity.','assistant census research: Seligman restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman food/bar business entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','restaurants','restaurants','The Black Cat Bar, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman food/bar business entity.','assistant census research: Seligman restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman food/bar business entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','restaurants','restaurants','Lulu Belle''s BBQ, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman food/bar business entity.','assistant census research: Seligman restaurants',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman food/bar business entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','grocery','grocery stores supermarkets markets','Seligman Grocery Mart, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman grocery/food retail entity.','assistant census research: Seligman grocery stores supermarkets markets',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman grocery/food retail entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','grocery','grocery stores supermarkets markets','Discount Food & Deli, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman grocery/food retail entity.','assistant census research: Seligman grocery stores supermarkets markets',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman grocery/food retail entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','retail','retail stores shopping stores','Route 66 Roadrunner, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman retail/specialty business entity.','assistant census research: Seligman retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman retail/specialty business entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','retail','retail stores shopping stores','Seligamn Feed, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman retail/specialty business entity.','assistant census research: Seligman retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman retail/specialty business entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','retail','retail stores shopping stores','4B RT 66 Feed & Stuff, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman retail/specialty business entity.','assistant census research: Seligman retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman retail/specialty business entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','retail','retail stores shopping stores','Champie Feed & Tack, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman retail/specialty business entity.','assistant census research: Seligman retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman retail/specialty business entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','retail','retail stores shopping stores','Desert Basin Screen Printing, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman retail/specialty business entity.','assistant census research: Seligman retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman retail/specialty business entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','retail','retail stores shopping stores','Enduro Stuff, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman retail/specialty business entity.','assistant census research: Seligman retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman retail/specialty business entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','retail','retail stores shopping stores','JarmsTools, LLC.',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman retail/specialty business entity.','assistant census research: Seligman retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman retail/specialty business entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','retail','retail stores shopping stores','Robison Outdoors, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman retail/specialty business entity.','assistant census research: Seligman retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman retail/specialty business entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','retail','retail stores shopping stores','Route 66 Slots, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman retail/specialty business entity.','assistant census research: Seligman retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman retail/specialty business entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','retail','retail stores shopping stores','Shannon''s Wild Sunflowers, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman retail/specialty business entity.','assistant census research: Seligman retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman retail/specialty business entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','retail','retail stores shopping stores','Wildflower Honey Farms, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman retail/specialty business entity.','assistant census research: Seligman retail stores shopping stores',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman retail/specialty business entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Seligman','hvac_heat','Heating & Air','High Country Heating and Cooling, Inc.',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman service/trade entity candidate for Heating & Air.','assistant census research: Seligman Heating & Air',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman service/trade entity candidate for Heating & Air."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Seligman','backflow_plumbing','Backflow & Commercial Plumbing','TriPlumb AZ, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman service/trade entity candidate for Backflow & Commercial Plumbing.','assistant census research: Seligman Backflow & Commercial Plumbing',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman service/trade entity candidate for Backflow & Commercial Plumbing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Seligman','facility_maintenance','Building Maintenance Help','Z to A Construction, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman service/trade entity candidate for Building Maintenance Help.','assistant census research: Seligman Building Maintenance Help',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman service/trade entity candidate for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Seligman','facility_maintenance','Building Maintenance Help','Knott''s -N- Nails, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman service/trade entity candidate for Building Maintenance Help.','assistant census research: Seligman Building Maintenance Help',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman service/trade entity candidate for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Seligman','facility_maintenance','Building Maintenance Help','Double K Carports of the Southwest L.L.C.',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman service/trade entity candidate for Building Maintenance Help.','assistant census research: Seligman Building Maintenance Help',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman service/trade entity candidate for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Seligman','rural_property','Septic, Grading & Wells','Rough Rock Land Services, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman service/trade entity candidate for Septic, Grading & Wells.','assistant census research: Seligman Septic, Grading & Wells',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman service/trade entity candidate for Septic, Grading & Wells."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Seligman','rural_property','Septic, Grading & Wells','Earth Services Southwest, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman service/trade entity candidate for Septic, Grading & Wells.','assistant census research: Seligman Septic, Grading & Wells',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman service/trade entity candidate for Septic, Grading & Wells."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Seligman','rural_property','Septic, Grading & Wells','Earth Services Northwest, PLLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman service/trade entity candidate for Septic, Grading & Wells.','assistant census research: Seligman Septic, Grading & Wells',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman service/trade entity candidate for Septic, Grading & Wells."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Seligman','facility_maintenance','Building Maintenance Help','Probert''s Welding and Fabricating, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman service/trade entity candidate for Building Maintenance Help.','assistant census research: Seligman Building Maintenance Help',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman service/trade entity candidate for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Seligman','towing_roadside','Towing & Roadside Help','Seligman Truck and Auto Repair, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman service/trade entity candidate for Towing & Roadside Help.','assistant census research: Seligman Towing & Roadside Help',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman service/trade entity candidate for Towing & Roadside Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Seligman','facility_maintenance','Building Maintenance Help','KA Repair, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman service/trade entity candidate for Building Maintenance Help.','assistant census research: Seligman Building Maintenance Help',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman service/trade entity candidate for Building Maintenance Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Seligman','towing_roadside','Towing & Roadside Help','Road Serve, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman service/trade entity candidate for Towing & Roadside Help.','assistant census research: Seligman Towing & Roadside Help',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman service/trade entity candidate for Towing & Roadside Help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Seligman','rural_property','Septic, Grading & Wells','The Brad H2O Delivery, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman service/trade entity candidate for Septic, Grading & Wells.','assistant census research: Seligman Septic, Grading & Wells',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman service/trade entity candidate for Septic, Grading & Wells."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'vendor','Seligman','rural_property','Septic, Grading & Wells','Burch Water Service, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman service/trade entity candidate for Septic, Grading & Wells.','assistant census research: Seligman Septic, Grading & Wells',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman service/trade entity candidate for Septic, Grading & Wells."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','warehouses_industrial','warehouses industrial businesses distribution centers','B & B Bovine Express, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman transportation/logistics business entity.','assistant census research: Seligman warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman transportation/logistics business entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','warehouses_industrial','warehouses industrial businesses distribution centers','JAF Trucking, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman transportation/logistics business entity.','assistant census research: Seligman warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman transportation/logistics business entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','warehouses_industrial','warehouses industrial businesses distribution centers','Nevaeh Trucking, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman transportation/logistics business entity.','assistant census research: Seligman warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman transportation/logistics business entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','warehouses_industrial','warehouses industrial businesses distribution centers','P S Transport, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman transportation/logistics business entity.','assistant census research: Seligman warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman transportation/logistics business entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','warehouses_industrial','warehouses industrial businesses distribution centers','Stein Family Trucking L.L.C.',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman transportation/logistics business entity.','assistant census research: Seligman warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman transportation/logistics business entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','warehouses_industrial','warehouses industrial businesses distribution centers','Elevated Operations, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman transportation/logistics business entity.','assistant census research: Seligman warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman transportation/logistics business entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','warehouses_industrial','warehouses industrial businesses distribution centers','Chaparral Arizona Ranch, Inc.',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman ranch/agriculture/land-based business entity.','assistant census research: Seligman warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman ranch/agriculture/land-based business entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','warehouses_industrial','warehouses industrial businesses distribution centers','Circle A Ranch at Doomsday Acres, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman ranch/agriculture/land-based business entity.','assistant census research: Seligman warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman ranch/agriculture/land-based business entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','warehouses_industrial','warehouses industrial businesses distribution centers','Crown Hill Ranch, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman ranch/agriculture/land-based business entity.','assistant census research: Seligman warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman ranch/agriculture/land-based business entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','warehouses_industrial','warehouses industrial businesses distribution centers','Double LL Apple Farm, L.L.C.',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman ranch/agriculture/land-based business entity.','assistant census research: Seligman warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman ranch/agriculture/land-based business entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','warehouses_industrial','warehouses industrial businesses distribution centers','J.A.F. Ranch, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman ranch/agriculture/land-based business entity.','assistant census research: Seligman warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman ranch/agriculture/land-based business entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','warehouses_industrial','warehouses industrial businesses distribution centers','Raven''s Landing, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman ranch/agriculture/land-based business entity.','assistant census research: Seligman warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman ranch/agriculture/land-based business entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','warehouses_industrial','warehouses industrial businesses distribution centers','The Stud Ranch, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman ranch/agriculture/land-based business entity.','assistant census research: Seligman warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman ranch/agriculture/land-based business entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','warehouses_industrial','warehouses industrial businesses distribution centers','Tin Star Ranch, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman ranch/agriculture/land-based business entity.','assistant census research: Seligman warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman ranch/agriculture/land-based business entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','warehouses_industrial','warehouses industrial businesses distribution centers','Tumbling Rock Ranch L.L.C.',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman ranch/agriculture/land-based business entity.','assistant census research: Seligman warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman ranch/agriculture/land-based business entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','warehouses_industrial','warehouses industrial businesses distribution centers','Untamed Spirit Arizona, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman ranch/agriculture/land-based business entity.','assistant census research: Seligman warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman ranch/agriculture/land-based business entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','warehouses_industrial','warehouses industrial businesses distribution centers','Untamed Spirit, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman ranch/agriculture/land-based business entity.','assistant census research: Seligman warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman ranch/agriculture/land-based business entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','property_management','property management companies apartment communities','Homestead Ranch Developers, L.L.C.',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman property/real-estate/management entity.','assistant census research: Seligman property management companies apartment communities',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman property/real-estate/management entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','property_management','property management companies apartment communities','Jatt Properties, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman property/real-estate/management entity.','assistant census research: Seligman property management companies apartment communities',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman property/real-estate/management entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','property_management','property management companies apartment communities','North Mountain Investment Group, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman property/real-estate/management entity.','assistant census research: Seligman property management companies apartment communities',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman property/real-estate/management entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','property_management','property management companies apartment communities','Remember Me Realty, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman property/real-estate/management entity.','assistant census research: Seligman property management companies apartment communities',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman property/real-estate/management entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','property_management','property management companies apartment communities','Sierra Verde Ranch Realty, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman property/real-estate/management entity.','assistant census research: Seligman property management companies apartment communities',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman property/real-estate/management entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','property_management','property management companies apartment communities','Shadow Rock Ranch Property Owners Association, Inc.',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman property/real-estate/management entity.','assistant census research: Seligman property management companies apartment communities',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman property/real-estate/management entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','property_management','property management companies apartment communities','Veliz Investments, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman property/real-estate/management entity.','assistant census research: Seligman property management companies apartment communities',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman property/real-estate/management entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','property_management','property management companies apartment communities','Point Loma Funding, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman property/real-estate/management entity.','assistant census research: Seligman property management companies apartment communities',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman property/real-estate/management entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','property_management','property management companies apartment communities','Bartell Management, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman property/real-estate/management entity.','assistant census research: Seligman property management companies apartment communities',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman property/real-estate/management entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','property_management','property management companies apartment communities','Delgadillo Properties, L.L.C.',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman property/real-estate/management entity.','assistant census research: Seligman property management companies apartment communities',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman property/real-estate/management entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','medical_centers','hospitals medical centers clinics','North Yavapai Community Health Services, Inc.',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman community-health-services entity with Seligman addresses.','assistant census research: Seligman hospitals medical centers clinics',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman community-health-services entity with Seligman addresses."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','gyms_fitness','gyms fitness centers recreation centers','Incorporate Wellness, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman wellness business entity.','assistant census research: Seligman gyms fitness centers recreation centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman wellness business entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','general_business','other local businesses','Fairytale Service Dogs Inc',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman service-dog nonprofit entity.','assistant census research: Seligman other local businesses',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman service-dog nonprofit entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','general_business','other local businesses','For the Love of the Hoof, Inc.',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman animal/equine nonprofit entity.','assistant census research: Seligman other local businesses',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman animal/equine nonprofit entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','general_business','other local businesses','Bridge Canyon Recreation Association',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman-area recreation/community organization.','assistant census research: Seligman other local businesses',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman-area recreation/community organization."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','insurance_professional','insurance agents professional offices','CBJ Tax Specialists Corp',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman tax/professional-services entity.','assistant census research: Seligman insurance agents professional offices',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman tax/professional-services entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','insurance_professional','insurance agents professional offices','Process Improvement Excellence Consulting, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman consulting/professional-services entity.','assistant census research: Seligman insurance agents professional offices',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman consulting/professional-services entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','insurance_professional','insurance agents professional offices','Sierra Verde Consulting, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman consulting entity.','assistant census research: Seligman insurance agents professional offices',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman consulting entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','warehouses_industrial','warehouses industrial businesses distribution centers','J.C. Manufacturing, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman manufacturing entity.','assistant census research: Seligman warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman manufacturing entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','warehouses_industrial','warehouses industrial businesses distribution centers','Juniper Mountain Enterprises, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman enterprise/industrial candidate.','assistant census research: Seligman warehouses industrial businesses distribution centers',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman enterprise/industrial candidate."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','general_business','other local businesses','Solberg Automotive, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman automotive business entity.','assistant census research: Seligman other local businesses',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman automotive business entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','general_business','other local businesses','Superior Rentals of Seligman, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman rental business entity.','assistant census research: Seligman other local businesses',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman rental business entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','general_business','other local businesses','Roadhouse Social Club, LLC',
 'https://www.city-data.com/business-entities/Seligman-AZ.html','city-data.com','Active Seligman social/entertainment business entity.','assistant census research: Seligman other local businesses',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Active Seligman social/entertainment business entity."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,snippet=excluded.snippet,search_query=excluded.search_query,
 public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
 public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
 source_tier=excluded.source_tier,verification_status=excluded.verification_status,
 status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,
 last_seen_at=now(),query_strategy_version=excluded.query_strategy_version,
 evidence=market_inventory_candidates.evidence || excluded.evidence,updated_at=now();

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Seligman','theaters_entertainment','theaters cinemas entertainment venues','Grand Canyon Caverns',
 'https://seligmanazchamber.com/visit-seligman/where-to-stay/','seligmanazchamber.com','Current full-service Seligman-area resort/attraction with lodging, tours and food service.','assistant census research: Seligman theaters cinemas entertainment venues',0,
 null,null,false,
 'secondary','discovery',null,'discovered',7,'{"bootstrap_source":"assistant_web_research_2026_10_26_seligman_batch_02","researched_at":"2026-10-27T00:58:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current full-service Seligman-area resort/attraction with lodging, tours and food service."}'::jsonb
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
),updated_at=now() where p.market='Seligman';
