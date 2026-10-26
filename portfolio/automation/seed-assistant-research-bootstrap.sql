

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
