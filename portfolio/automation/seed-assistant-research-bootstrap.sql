

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
