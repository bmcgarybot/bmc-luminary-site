-- Assistant-led bootstrap research batch 01 (2026-10-26)
-- Discovery/direct-evidence inventory seed. Never promotes vendors/buyers or stages/sends outreach.
-- Re-running is idempotent by (side,market,category_key,source_url,business_name).

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'vendor','Ash Fork','towing_roadside','Towing & Roadside Help','Murphy''s Towing & Truck Repair',
  'https://mtaz.com/contact/','mtaz.com','Direct site lists Ash Fork location and 24/7 towing/roadside.','assistant bootstrap research: Ash Fork Towing & Roadside Help',0,
  'murphysdispatch@outlook.com','(928) 853-5202',true,
  'direct','direct_evidence',now(),'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site lists Ash Fork location and 24/7 towing/roadside."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'vendor','Ash Fork','towing_roadside','Towing & Roadside Help','Roadside 24/7',
  'https://www.roadside24-7.com/','roadside24-7.com','Direct site says based in Ash Fork and serves I-40/Route 66 corridor.','assistant bootstrap research: Ash Fork Towing & Roadside Help',0,
  null,'(928) 221-9110',true,
  'direct','direct_evidence',now(),'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site says based in Ash Fork and serves I-40/Route 66 corridor."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'vendor','Ash Fork','handyman_repairs','Handyman','Wild West Handyman Services LLC',
  'https://www.wildwesthandyman.com/','wildwesthandyman.com','Direct site explicitly lists Ash Fork in service area; not a licensed contractor and works under handyman exemption.','assistant bootstrap research: Ash Fork Handyman',0,
  null,'(928) 476-0107',true,
  'direct','direct_evidence',now(),'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site explicitly lists Ash Fork in service area; not a licensed contractor and works under handyman exemption."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'vendor','Ash Fork','hvac_heat','Heating & Air','Air-Exx HVAC',
  'https://www.airexxhvac.com/ash-fork-hvac','airexxhvac.com','Direct Ash Fork HVAC service page; ROC 350424 stated.','assistant bootstrap research: Ash Fork Heating & Air',0,
  'airexxhvac@yahoo.com','(928) 565-6440',true,
  'direct','direct_evidence',now(),'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct Ash Fork HVAC service page; ROC 350424 stated."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'vendor','Ash Fork','electrical_service','Electrician','Ash Fork Electric',
  'https://homversa.com/az/ash-fork/electricians','homversa.com','Discovery source says Arizona ROC #327703 and registered in Ash Fork; verify against ROC before promotion.','assistant bootstrap research: Ash Fork Electrician',0,
  null,null,false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Discovery source says Arizona ROC #327703 and registered in Ash Fork; verify against ROC before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'buyer','Ash Fork','churches','churches worship centers','Gospel of Faith Church',
  'https://www.gospeloffaithchurch.com/','gospeloffaithchurch.com','Direct church site lists Ash Fork address and contacts.','assistant bootstrap research: Ash Fork churches worship centers',0,
  'gospeloffaithchurchaz@gmail.com','(928) 715-6985',true,
  'direct','direct_evidence',now(),'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct church site lists Ash Fork address and contacts."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'vendor','Mayer','backflow_plumbing','Backflow & Commercial Plumbing','Aqua Cat Plumbing & Water Treatment',
  'https://www.aquacatplumbing.com/service-areas','aquacatplumbing.com','Direct service-area page explicitly lists Mayer.','assistant bootstrap research: Mayer Backflow & Commercial Plumbing',0,
  null,null,true,
  'direct','direct_evidence',now(),'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct service-area page explicitly lists Mayer."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'vendor','Mayer','handyman_repairs','Handyman','Licensed Handyman, Inc.',
  'https://www.licensedhandyman.biz/service-area','licensedhandyman.biz','Direct service-area page explicitly lists Mayer; AZ ROC #349772 stated.','assistant bootstrap research: Mayer Handyman',0,
  null,'(928) 239-3640',true,
  'direct','direct_evidence',now(),'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct service-area page explicitly lists Mayer; AZ ROC #349772 stated."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'vendor','Mayer','backflow_plumbing','Backflow & Commercial Plumbing','Manor Plumbing Co',
  'https://www.enigma.com/directory/az/mayer/','enigma.com','Discovery directory lists Manor Plumbing Co in Mayer; direct/ROC verification still needed.','assistant bootstrap research: Mayer Backflow & Commercial Plumbing',0,
  null,null,false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Discovery directory lists Manor Plumbing Co in Mayer; direct/ROC verification still needed."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'buyer','Mayer','medical_centers','hospitals medical centers clinics','Cordes Clinic',
  'https://www.enigma.com/directory/az/mayer/','enigma.com','Discovery directory lists Cordes Clinic at 20172 E Stagecoach Trl, Mayer.','assistant bootstrap research: Mayer hospitals medical centers clinics',0,
  null,null,false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Discovery directory lists Cordes Clinic at 20172 E Stagecoach Trl, Mayer."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'buyer','Mayer','schools','schools charter schools private schools','Mayer Unified School District',
  'https://www.whereorg.com/mayer-az','whereorg.com','Discovery listing identifies district in Mayer; replace with direct district page during audit.','assistant bootstrap research: Mayer schools charter schools private schools',0,
  null,'(928) 642-1000',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Discovery listing identifies district in Mayer; replace with direct district page during audit."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'buyer','Mayer','churches','churches worship centers','Mayer Community Church',
  'https://www.whereorg.com/businesses/mayer-az','whereorg.com','Discovery listing identifies church in Mayer.','assistant bootstrap research: Mayer churches worship centers',0,
  null,'(928) 632-9533',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Discovery listing identifies church in Mayer."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'buyer','Mayer','hotels_motels','hotels motels lodging','Creekside Lodge & Cabins',
  'https://www.enigma.com/directory/az/mayer/','enigma.com','Discovery directory lists Creekside Lodge & Cabins in Mayer.','assistant bootstrap research: Mayer hotels motels lodging',0,
  null,null,false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Discovery directory lists Creekside Lodge & Cabins in Mayer."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'vendor','Cordes Lakes','locksmith_access','Locks & Access Control','Cordes Lakes Hardware & Locksmith',
  'https://cordeshardware.com/','cordeshardware.com','Direct site is located in Cordes Lakes/Mayer and explicitly offers locksmith service calls.','assistant bootstrap research: Cordes Lakes Locks & Access Control',0,
  'cordeshardware@gmail.com','(928) 547-1784',true,
  'direct','direct_evidence',now(),'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site is located in Cordes Lakes/Mayer and explicitly offers locksmith service calls."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'vendor','Cordes Lakes','handyman_repairs','Handyman','Licensed Handyman, Inc.',
  'https://www.licensedhandyman.biz/service-area','licensedhandyman.biz','Direct service-area page explicitly includes Cordes Lakes.','assistant bootstrap research: Cordes Lakes Handyman',0,
  null,'(928) 239-3640',true,
  'direct','direct_evidence',now(),'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct service-area page explicitly includes Cordes Lakes."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'vendor','Cordes Lakes','backflow_plumbing','Backflow & Commercial Plumbing','Aqua Cat Plumbing & Water Treatment',
  'https://www.aquacatplumbing.com/service-areas','aquacatplumbing.com','Direct service-area page explicitly lists Cordes Lakes.','assistant bootstrap research: Cordes Lakes Backflow & Commercial Plumbing',0,
  null,null,true,
  'direct','direct_evidence',now(),'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct service-area page explicitly lists Cordes Lakes."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'buyer','Cordes Lakes','grocery','grocery stores supermarkets markets','Holly''s Market',
  'https://www.homes.com/local-guide/prescott-valley-az/cordes-lakes-neighborhood/','homes.com','Discovery source identifies Holly''s Market as a local Cordes Lakes grocery option.','assistant bootstrap research: Cordes Lakes grocery stores supermarkets markets',0,
  null,null,false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Discovery source identifies Holly''s Market as a local Cordes Lakes grocery option."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'buyer','Cordes Lakes','restaurants','restaurants','El Gordo Real Mexican Grill',
  'https://www.homes.com/local-guide/prescott-valley-az/cordes-lakes-neighborhood/','homes.com','Discovery source identifies El Gordo in Cordes Lakes.','assistant bootstrap research: Cordes Lakes restaurants',0,
  null,null,false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Discovery source identifies El Gordo in Cordes Lakes."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'buyer','Cordes Lakes','public_facilities','government public facilities municipal buildings','Cordes Lakes Community Center',
  'https://www.homes.com/local-guide/prescott-valley-az/cordes-lakes-neighborhood/','homes.com','Discovery source identifies local community center; direct public source still needed.','assistant bootstrap research: Cordes Lakes government public facilities municipal buildings',0,
  null,null,false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Discovery source identifies local community center; direct public source still needed."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'vendor','Williamson Valley','backflow_plumbing','Backflow & Commercial Plumbing','Nichols Plumbing, Electrical, & HVAC',
  'https://nicholsaz.com/prescott','nicholsaz.com','Direct Prescott-area page explicitly lists Williamson Valley.','assistant bootstrap research: Williamson Valley Backflow & Commercial Plumbing',0,
  null,'(928) 300-1221',true,
  'direct','direct_evidence',now(),'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct Prescott-area page explicitly lists Williamson Valley."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'vendor','Williamson Valley','hvac_heat','Heating & Air','Nichols Plumbing, Electrical, & HVAC',
  'https://nicholsaz.com/prescott','nicholsaz.com','Direct page states plumbing/HVAC/electrical service across Prescott area including Williamson Valley.','assistant bootstrap research: Williamson Valley Heating & Air',0,
  null,'(928) 300-1221',true,
  'direct','direct_evidence',now(),'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct page states plumbing/HVAC/electrical service across Prescott area including Williamson Valley."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'vendor','Williamson Valley','electrical_service','Electrician','Nichols Plumbing, Electrical, & HVAC',
  'https://nicholsaz.com/prescott','nicholsaz.com','Direct page explicitly includes Williamson Valley and electrical service.','assistant bootstrap research: Williamson Valley Electrician',0,
  null,'(928) 300-1221',true,
  'direct','direct_evidence',now(),'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct page explicitly includes Williamson Valley and electrical service."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'vendor','Williamson Valley','backflow_plumbing','Backflow & Commercial Plumbing','Aqua Cat Plumbing & Water Treatment',
  'https://www.aquacatplumbing.com/service-areas','aquacatplumbing.com','Direct service-area page explicitly lists Williamson Valley.','assistant bootstrap research: Williamson Valley Backflow & Commercial Plumbing',0,
  null,null,true,
  'direct','direct_evidence',now(),'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct service-area page explicitly lists Williamson Valley."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'vendor','Seligman','towing_roadside','Towing & Roadside Help','Historic Route 66 Auto & Towing',
  'https://www.seligmanazchamber.com/local-information/local-services/','seligmanazchamber.com','Seligman Chamber lists 24/7 towing, oil/tire service and roadside help.','assistant bootstrap research: Seligman Towing & Roadside Help',0,
  null,'(928) 422-3528',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Seligman Chamber lists 24/7 towing, oil/tire service and roadside help."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'vendor','Seligman','hvac_heat','Heating & Air','Air-Exx HVAC',
  'https://www.airexxhvac.com/ash-fork-hvac','airexxhvac.com','Direct HVAC site lists Seligman among service areas.','assistant bootstrap research: Seligman Heating & Air',0,
  'airexxhvac@yahoo.com','(928) 565-6440',true,
  'direct','direct_evidence',now(),'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct HVAC site lists Seligman among service areas."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'buyer','Seligman','restaurants','restaurants','Roadkill Cafe / O.K. Saloon',
  'https://seligmanazchamber.com/visit-seligman/where-to-eat-drink/','seligmanazchamber.com','Current Seligman Chamber dining listing.','assistant bootstrap research: Seligman restaurants',0,
  'roadkillcafeseligmanaz@yahoo.com','(928) 422-3554',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Seligman Chamber dining listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'buyer','Seligman','grocery','grocery stores supermarkets markets','Historic Route 66 General Store',
  'https://seligmanazchamber.com/visit-seligman/where-to-shop/','seligmanazchamber.com','Current Chamber page says store sells groceries, hardware and other supplies.','assistant bootstrap research: Seligman grocery stores supermarkets markets',0,
  null,'(928) 422-3549',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber page says store sells groceries, hardware and other supplies."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'buyer','Seligman','schools','schools charter schools private schools','Seligman Unified School District',
  'https://www.seligmanazchamber.com/local-information/resources/','seligmanazchamber.com','Current Chamber resource page identifies Seligman Unified School District.','assistant bootstrap research: Seligman schools charter schools private schools',0,
  null,null,false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber resource page identifies Seligman Unified School District."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'buyer','Seligman','churches','churches worship centers','Agape Baptist Church',
  'https://www.seligmanazchamber.com/local-information/resources/','seligmanazchamber.com','Current Chamber resource page lists local church and phone.','assistant bootstrap research: Seligman churches worship centers',0,
  null,'(928) 422-3420',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber resource page lists local church and phone."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'buyer','Seligman','hotels_motels','hotels motels lodging','Canyon Lodge',
  'https://www.seligmanazchamber.com/visit-seligman/where-to-stay','seligmanazchamber.com','Current Chamber lodging page identifies Canyon Lodge.','assistant bootstrap research: Seligman hotels motels lodging',0,
  null,'800-700-5054',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current Chamber lodging page identifies Canyon Lodge."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'vendor','Skull Valley','backflow_plumbing','Backflow & Commercial Plumbing','Aqua Cat Plumbing & Water Treatment',
  'https://www.aquacatplumbing.com/service-areas','aquacatplumbing.com','Direct service-area page explicitly lists Skull Valley.','assistant bootstrap research: Skull Valley Backflow & Commercial Plumbing',0,
  null,null,true,
  'direct','direct_evidence',now(),'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct service-area page explicitly lists Skull Valley."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'vendor','Skull Valley','backflow_plumbing','Backflow & Commercial Plumbing','CreekWell Plumbing & Water Treatment',
  'https://www.creekwellplumbing.com/','creekwellplumbing.com','Direct site lists Skull Valley, but currently states work is under Arizona handyman exemption and new licensed work is pending; discovery only for regulated plumbing.','assistant bootstrap research: Skull Valley Backflow & Commercial Plumbing',0,
  null,'(928) 228-5770',true,
  'direct','direct_evidence',now(),'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site lists Skull Valley, but currently states work is under Arizona handyman exemption and new licensed work is pending; discovery only for regulated plumbing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'vendor','Skull Valley','electrical_service','Electrician','Stubbs Electric',
  'https://www.whereorg.com/skull-valley-az','whereorg.com','Discovery directory lists Stubbs Electric in Skull Valley; direct/ROC verification needed.','assistant bootstrap research: Skull Valley Electrician',0,
  null,'(928) 633-2100',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Discovery directory lists Stubbs Electric in Skull Valley; direct/ROC verification needed."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'buyer','Skull Valley','restaurants','restaurants','The Forge at Skull Valley',
  'https://www.theforgeskullvalley.com/','theforgeskullvalley.com','Direct cafe/farm-store site lists Skull Valley address.','assistant bootstrap research: Skull Valley restaurants',0,
  'claire@theforgeskullvalley.com',null,true,
  'direct','direct_evidence',now(),'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct cafe/farm-store site lists Skull Valley address."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'buyer','Skull Valley','schools','schools charter schools private schools','Skull Valley School District',
  'https://skullvalleyschool.org/','skullvalleyschool.org','Official school district site with Skull Valley address and contacts.','assistant bootstrap research: Skull Valley schools charter schools private schools',0,
  'admin@skullvalleyschool.org','(928) 442-3322',true,
  'direct','direct_evidence',now(),'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official school district site with Skull Valley address and contacts."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'buyer','Skull Valley','churches','churches worship centers','Skull Valley Bible Church',
  'https://www.skullvalleybiblechurch.org/','skullvalleybiblechurch.org','Direct church site lists Skull Valley address and contacts.','assistant bootstrap research: Skull Valley churches worship centers',0,
  'welcome@skullvalleybiblechurch.org','(928) 464-3172',true,
  'direct','direct_evidence',now(),'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct church site lists Skull Valley address and contacts."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'vendor','Dewey-Humboldt','hvac_heat','Heating & Air','ACE Cooling, Heating, Plumbing and Electrical',
  'https://acehomeaz.com/areas-served/dewey-humboldt/','acehomeaz.com','Direct Dewey-Humboldt service page for HVAC/plumbing/electrical.','assistant bootstrap research: Dewey-Humboldt Heating & Air',0,
  null,null,true,
  'direct','direct_evidence',now(),'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct Dewey-Humboldt service page for HVAC/plumbing/electrical."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'vendor','Dewey-Humboldt','backflow_plumbing','Backflow & Commercial Plumbing','ACE Cooling, Heating, Plumbing and Electrical',
  'https://acehomeaz.com/areas-served/dewey-humboldt/','acehomeaz.com','Direct Dewey-Humboldt service page explicitly offers plumbing.','assistant bootstrap research: Dewey-Humboldt Backflow & Commercial Plumbing',0,
  null,null,true,
  'direct','direct_evidence',now(),'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct Dewey-Humboldt service page explicitly offers plumbing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'vendor','Dewey-Humboldt','electrical_service','Electrician','ACE Cooling, Heating, Plumbing and Electrical',
  'https://acehomeaz.com/areas-served/dewey-humboldt/','acehomeaz.com','Direct Dewey-Humboldt service page explicitly offers electrical.','assistant bootstrap research: Dewey-Humboldt Electrician',0,
  null,null,true,
  'direct','direct_evidence',now(),'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct Dewey-Humboldt service page explicitly offers electrical."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'vendor','Dewey-Humboldt','handyman_repairs','Handyman','Licensed Handyman, Inc.',
  'https://www.licensedhandyman.biz/service-area','licensedhandyman.biz','Direct service-area page explicitly lists Dewey and Humboldt.','assistant bootstrap research: Dewey-Humboldt Handyman',0,
  null,'(928) 239-3640',true,
  'direct','direct_evidence',now(),'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct service-area page explicitly lists Dewey and Humboldt."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'vendor','Dewey-Humboldt','handyman_repairs','Handyman','Powerhouse Handyman Services LLC',
  'https://nextdoor.com/pages/powerhouse-handyman-services-dewey-az/','nextdoor.com','Public Nextdoor business page in Dewey; explicitly says not a licensed contractor.','assistant bootstrap research: Dewey-Humboldt Handyman',0,
  'hvactech428@gmail.com','(928) 642-6117',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Public Nextdoor business page in Dewey; explicitly says not a licensed contractor."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'buyer','Dewey-Humboldt','public_facilities','government public facilities municipal buildings','Town of Dewey-Humboldt',
  'https://www.dhaz.gov/2170/About-Dewey-Humboldt','dhaz.gov','Official town site; valid public-facility buyer target.','assistant bootstrap research: Dewey-Humboldt government public facilities municipal buildings',0,
  null,null,true,
  'direct','direct_evidence',now(),'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official town site; valid public-facility buyer target."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'vendor','Golden Valley','hvac_heat','Heating & Air','Comfort Air Solutions',
  'https://comfortairsolutionsaz.com/service-areas','comfortairsolutionsaz.com','Direct service-area page explicitly lists Golden Valley.','assistant bootstrap research: Golden Valley Heating & Air',0,
  null,'(928) 450-5534',true,
  'direct','direct_evidence',now(),'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct service-area page explicitly lists Golden Valley."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'vendor','Golden Valley','hvac_heat','Heating & Air','Air Control Home Services',
  'https://www.aircontrolaz.com/service-area/golden-valley/','aircontrolaz.com','Direct Golden Valley HVAC/plumbing/electrical service page; ROC numbers published.','assistant bootstrap research: Golden Valley Heating & Air',0,
  null,'(928) 361-9902',true,
  'direct','direct_evidence',now(),'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct Golden Valley HVAC/plumbing/electrical service page; ROC numbers published."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'vendor','Golden Valley','backflow_plumbing','Backflow & Commercial Plumbing','R and N Plumbing',
  'https://randnplumbing.org/','randnplumbing.org','Direct site says Golden Valley, Arizona; ROC #353736 and bonded/insured stated.','assistant bootstrap research: Golden Valley Backflow & Commercial Plumbing',0,
  null,'(928) 263-2789',true,
  'direct','direct_evidence',now(),'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site says Golden Valley, Arizona; ROC #353736 and bonded/insured stated."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'vendor','Golden Valley','backflow_plumbing','Backflow & Commercial Plumbing','Bradshaw''s Plumbing',
  'https://bradshawsplumbing.com/services/','bradshawsplumbing.com','Direct site says service area includes Golden Valley; ROC #356277 stated.','assistant bootstrap research: Golden Valley Backflow & Commercial Plumbing',0,
  null,'(928) 303-5037',true,
  'direct','direct_evidence',now(),'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct site says service area includes Golden Valley; ROC #356277 stated."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'vendor','Golden Valley','hvac_heat','Heating & Air','Air-Exx HVAC',
  'https://www.airexxhvac.com/golden-valley-hvac','airexxhvac.com','Direct Golden Valley HVAC page; ROC 350424 stated.','assistant bootstrap research: Golden Valley Heating & Air',0,
  'airexxhvac@yahoo.com','(928) 565-6440',true,
  'direct','direct_evidence',now(),'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct Golden Valley HVAC page; ROC 350424 stated."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'vendor','Golden Valley','hvac_heat','Heating & Air','Ambient Edge',
  'https://www.ambientedge.com/about-us/','ambientedge.com','Direct company page lists Golden Valley in Arizona service area.','assistant bootstrap research: Golden Valley Heating & Air',0,
  null,null,true,
  'direct','direct_evidence',now(),'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Direct company page lists Golden Valley in Arizona service area."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'vendor','Golden Valley','hvac_heat','Heating & Air','A to Z Refrigeration, Inc.',
  'https://www.bbb.org/us/az/golden-valley/profile/heating-and-air-conditioning/a-to-z-refrigeration-inc-1126-1000060099','bbb.org','BBB discovery profile places company in Golden Valley and describes HVAC/commercial refrigeration.','assistant bootstrap research: Golden Valley Heating & Air',0,
  null,'(928) 565-7252',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"BBB discovery profile places company in Golden Valley and describes HVAC/commercial refrigeration."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  source_tier=excluded.source_tier,
  verification_status=excluded.verification_status,
  last_verified_at=coalesce(excluded.last_verified_at,market_inventory_candidates.last_verified_at),
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

update market_inventory_progress p
set official_candidates=(
  select count(*) from market_inventory_candidates c
  where c.side=p.side and c.market=p.market and c.category_key=p.category_key
    and c.status='discovered' and c.query_strategy_version=7 and c.official_site=true
), updated_at=now()
where exists (
  select 1 from market_inventory_candidates c
  where c.side=p.side and c.market=p.market and c.category_key=p.category_key
    and c.evidence->>'bootstrap_source'='assistant_web_research_2026_10_26_batch_01'
);


-- Assistant-led Kingman business census batch 02 (2026-10-26)
-- Manually researched by the assistant from current Kingman directory/government sources.
-- Discovery/direct-evidence inventory only; never promotes or stages/sends outreach.

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,
  source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
  'buyer','Kingman','restaurants','restaurants','Arby''s',
  'https://www.mohavelocal.com/l/kingman-az/restaurants','mohavelocal.com','Kingman restaurant listing at 3265 E Andy Devine Ave.','assistant bootstrap research: Kingman restaurants',0,
  null,'(928) 757-5204',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman restaurant listing at 3265 E Andy Devine Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','restaurants','restaurants','Bangkok Thai Cuisine',
  'https://www.mohavelocal.com/l/kingman-az/restaurants','mohavelocal.com','Kingman restaurant listing at 208 W Andy Devine Ave.','assistant bootstrap research: Kingman restaurants',0,
  null,'(928) 753-1170',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman restaurant listing at 208 W Andy Devine Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','restaurants','restaurants','Bank Street Grinders',
  'https://www.mohavelocal.com/l/kingman-az/restaurants','mohavelocal.com','Kingman restaurant listing at 4395 N Bank St.','assistant bootstrap research: Kingman restaurants',0,
  null,'(928) 692-7667',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman restaurant listing at 4395 N Bank St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','restaurants','restaurants','Beale Street Brews Coffee And Roasting Co',
  'https://www.mohavelocal.com/l/kingman-az/restaurants','mohavelocal.com','Kingman coffee/restaurant listing at 418 E Beale St.','assistant bootstrap research: Kingman restaurants',0,
  null,'(928) 753-4004',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman coffee/restaurant listing at 418 E Beale St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','restaurants','restaurants','Burger King',
  'https://www.mohavelocal.com/l/kingman-az/restaurants','mohavelocal.com','Kingman restaurant listing at 3250 E Andy Devine Ave.','assistant bootstrap research: Kingman restaurants',0,
  null,'(928) 453-1777',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman restaurant listing at 3250 E Andy Devine Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','restaurants','restaurants','Calico''s Restaurant',
  'https://www.mohavelocal.com/l/kingman-az/restaurants','mohavelocal.com','Kingman restaurant listing at 418 W Beale St.','assistant bootstrap research: Kingman restaurants',0,
  null,'(928) 753-5005',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman restaurant listing at 418 W Beale St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','restaurants','restaurants','Canyon 66 Restaurant & Lounge',
  'https://www.mohavelocal.com/l/kingman-az/restaurants','mohavelocal.com','Kingman restaurant/lounge listing at 3100 E Andy Devine Ave.','assistant bootstrap research: Kingman restaurants',0,
  null,'(928) 529-5010',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman restaurant/lounge listing at 3100 E Andy Devine Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','restaurants','restaurants','Carl''s Jr Restaurant',
  'https://www.mohavelocal.com/l/kingman-az/restaurants','mohavelocal.com','Kingman restaurant listing at 3440 Stockton Hill Rd.','assistant bootstrap research: Kingman restaurants',0,
  null,'(928) 680-7717',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman restaurant listing at 3440 Stockton Hill Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','restaurants','restaurants','Chef''s Table Of Kingman',
  'https://www.mohavelocal.com/l/kingman-az/restaurants','mohavelocal.com','Kingman restaurant listing at 511 E Beale St.','assistant bootstrap research: Kingman restaurants',0,
  null,'(928) 718-2227',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman restaurant listing at 511 E Beale St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','restaurants','restaurants','Chili''s Grill & Bar',
  'https://www.mohavelocal.com/l/kingman-az/restaurants','mohavelocal.com','Kingman restaurant listing at 3840 Stockton Hill Rd.','assistant bootstrap research: Kingman restaurants',0,
  null,'(928) 681-3444',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman restaurant listing at 3840 Stockton Hill Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','restaurants','restaurants','Chipotle Mexican Grill',
  'https://www.mohavelocal.com/l/kingman-az/restaurants','mohavelocal.com','Kingman restaurant listing at 3455 Stockton Hill Rd.','assistant bootstrap research: Kingman restaurants',0,
  null,'(928) 680-0540',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman restaurant listing at 3455 Stockton Hill Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','restaurants','restaurants','Cracker Barrel Old Country Store',
  'https://www.mohavelocal.com/l/kingman-az/restaurants','mohavelocal.com','Kingman restaurant listing at 3520 Stockton Hill Rd.','assistant bootstrap research: Kingman restaurants',0,
  null,'(928) 757-9000',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman restaurant listing at 3520 Stockton Hill Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','restaurants','restaurants','Dambar & Steak House',
  'https://www.mohavelocal.com/l/kingman-az/restaurants','mohavelocal.com','Kingman restaurant listing at 1960 E Andy Devine Ave.','assistant bootstrap research: Kingman restaurants',0,
  null,'(928) 753-3523',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman restaurant listing at 1960 E Andy Devine Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','restaurants','restaurants','Del Taco',
  'https://www.mohavelocal.com/l/kingman-az/restaurants','mohavelocal.com','Kingman restaurant listing at 3390 Stockton Hill Rd.','assistant bootstrap research: Kingman restaurants',0,
  null,'(928) 681-3412',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman restaurant listing at 3390 Stockton Hill Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','restaurants','restaurants','El Palacio',
  'https://www.mohavelocal.com/l/kingman-az/restaurants','mohavelocal.com','Kingman restaurant listing at 401 E Andy Devine Ave.','assistant bootstrap research: Kingman restaurants',0,
  null,'(928) 718-0018',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman restaurant listing at 401 E Andy Devine Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','restaurants','restaurants','El Paraiso Tacos & Burgers',
  'https://www.mohavelocal.com/l/kingman-az/restaurants','mohavelocal.com','Kingman restaurant listing at 720 Eastern St.','assistant bootstrap research: Kingman restaurants',0,
  null,'(928) 529-5005',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman restaurant listing at 720 Eastern St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','hotels_motels','hotels motels lodging','Arcadia Lodge',
  'https://www.mohavelocal.com/l/kingman-az/hotels-motels','mohavelocal.com','Kingman lodging listing at 909 Andy Devine Ave.','assistant bootstrap research: Kingman hotels motels lodging',0,
  null,'(928) 753-6200',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman lodging listing at 909 Andy Devine Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','hotels_motels','hotels motels lodging','Arizona Inn',
  'https://www.mohavelocal.com/l/kingman-az/hotels-motels','mohavelocal.com','Kingman lodging listing at 411 W Beale St.','assistant bootstrap research: Kingman hotels motels lodging',0,
  null,'(928) 753-5521',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman lodging listing at 411 W Beale St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','hotels_motels','hotels motels lodging','Beale Hotel',
  'https://www.mohavelocal.com/l/kingman-az/hotels-motels','mohavelocal.com','Kingman lodging listing at 325 E Andy Devine Ave.','assistant bootstrap research: Kingman hotels motels lodging',0,
  null,'(928) 753-2297',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman lodging listing at 325 E Andy Devine Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','hotels_motels','hotels motels lodging','Best Western',
  'https://www.mohavelocal.com/l/kingman-az/hotels-motels','mohavelocal.com','Discovery listing places this Best Western at 2930 E Andy Devine Ave; direct verification needed.','assistant bootstrap research: Kingman hotels motels lodging',0,
  null,'(760) 326-4552',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Discovery listing places this Best Western at 2930 E Andy Devine Ave; direct verification needed."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','hotels_motels','hotels motels lodging','Best Western A Wayfarer''s Inn',
  'https://www.mohavelocal.com/l/kingman-az/hotels-motels','mohavelocal.com','Kingman lodging listing at 2815 E Andy Devine Ave.','assistant bootstrap research: Kingman hotels motels lodging',0,
  null,'(928) 753-6271',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman lodging listing at 2815 E Andy Devine Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','hotels_motels','hotels motels lodging','Brunswick Hotel',
  'https://www.mohavelocal.com/l/kingman-az/hotels-motels','mohavelocal.com','Discovery listing places Brunswick Hotel at 315 E Andy Devine Ave; current-operation verification needed.','assistant bootstrap research: Kingman hotels motels lodging',0,
  null,'(928) 718-1800',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Discovery listing places Brunswick Hotel at 315 E Andy Devine Ave; current-operation verification needed."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','hotels_motels','hotels motels lodging','Comfort Inn',
  'https://www.mohavelocal.com/l/kingman-az/hotels-motels','mohavelocal.com','Kingman lodging listing at 3129 E Andy Devine Ave.','assistant bootstrap research: Kingman hotels motels lodging',0,
  null,'(928) 718-1717',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman lodging listing at 3129 E Andy Devine Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','hotels_motels','hotels motels lodging','Days Inn East',
  'https://www.mohavelocal.com/l/kingman-az/hotels-motels','mohavelocal.com','Kingman lodging listing at 3381 E Andy Devine Ave.','assistant bootstrap research: Kingman hotels motels lodging',0,
  null,'(928) 757-7337',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman lodging listing at 3381 E Andy Devine Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','hotels_motels','hotels motels lodging','Days Inn West',
  'https://www.mohavelocal.com/l/kingman-az/hotels-motels','mohavelocal.com','Kingman lodging listing at 3023 E Andy Devine Ave.','assistant bootstrap research: Kingman hotels motels lodging',0,
  null,'(928) 753-7500',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman lodging listing at 3023 E Andy Devine Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','hotels_motels','hotels motels lodging','EconoLodge',
  'https://www.mohavelocal.com/l/kingman-az/hotels-motels','mohavelocal.com','Kingman lodging listing at 3421 E Andy Devine Ave.','assistant bootstrap research: Kingman hotels motels lodging',0,
  null,'(928) 757-7878',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman lodging listing at 3421 E Andy Devine Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','hotels_motels','hotels motels lodging','Economy Inn',
  'https://www.mohavelocal.com/l/kingman-az/hotels-motels','mohavelocal.com','Kingman lodging listing at 1250 W Beale St.','assistant bootstrap research: Kingman hotels motels lodging',0,
  null,'(928) 753-6171',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman lodging listing at 1250 W Beale St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','churches','churches worship centers','Abundant Life FWC',
  'https://www.mohavelocal.com/l/kingman-az/churches-religious-organizations','mohavelocal.com','Kingman church/religious organization listing.','assistant bootstrap research: Kingman churches worship centers',0,
  null,'(928) 263-6117',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman church/religious organization listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','churches','churches worship centers','Calvary Baptist Church',
  'https://www.mohavelocal.com/l/kingman-az/churches-religious-organizations','mohavelocal.com','Kingman church listing at 3575 Shaeffer Ave.','assistant bootstrap research: Kingman churches worship centers',0,
  null,'(928) 757-2976',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman church listing at 3575 Shaeffer Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','churches','churches worship centers','Calvary Chapel Kingman',
  'https://www.mohavelocal.com/l/kingman-az/churches-religious-organizations','mohavelocal.com','Kingman church listing at 526 Stowell Ave.','assistant bootstrap research: Kingman churches worship centers',0,
  null,'(928) 753-3730',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman church listing at 526 Stowell Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','churches','churches worship centers','Canyon Community Church',
  'https://www.mohavelocal.com/l/kingman-az/churches-religious-organizations','mohavelocal.com','Kingman church listing at 4145 N Bank St.','assistant bootstrap research: Kingman churches worship centers',0,
  null,'(928) 681-4673',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman church listing at 4145 N Bank St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','churches','churches worship centers','Cedar Hills Community Church',
  'https://www.mohavelocal.com/l/kingman-az/churches-religious-organizations','mohavelocal.com','Kingman church listing at 9188 E Dally Dr.','assistant bootstrap research: Kingman churches worship centers',0,
  null,'(928) 757-1618',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman church listing at 9188 E Dally Dr."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','churches','churches worship centers','Champion Church Kingman',
  'https://www.mohavelocal.com/l/kingman-az/churches-religious-organizations','mohavelocal.com','Kingman church listing on Stockton Hill Rd.','assistant bootstrap research: Kingman churches worship centers',0,
  null,'(928) 303-4810',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman church listing on Stockton Hill Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','churches','churches worship centers','Child Evangelism Fellowship',
  'https://www.mohavelocal.com/l/kingman-az/churches-religious-organizations','mohavelocal.com','Kingman-based religious nonprofit listing; useful facility/organization buyer lead.','assistant bootstrap research: Kingman churches worship centers',0,
  null,'(928) 692-8352',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman-based religious nonprofit listing; useful facility/organization buyer lead."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','insurance_professional','insurance agents professional offices','Insurance Professionals Of Arizona',
  'https://www.mohavelocal.com/l/kingman-az/insurance-agents-brokers','mohavelocal.com','Mohave County insurance-professional listing; direct office verification needed.','assistant bootstrap research: Kingman insurance agents professional offices',0,
  null,null,false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Mohave County insurance-professional listing; direct office verification needed."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','insurance_professional','insurance agents professional offices','A1 Professional Services',
  'https://www.mohavelocal.com/l/kingman-az/insurance-agents-brokers','mohavelocal.com','Kingman insurance/professional office listing at 4305 Stockton Hill Rd #F.','assistant bootstrap research: Kingman insurance agents professional offices',0,
  null,'(928) 692-9411',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman insurance/professional office listing at 4305 Stockton Hill Rd #F."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','insurance_professional','insurance agents professional offices','AHCCCS Health Insurance',
  'https://www.mohavelocal.com/l/kingman-az/insurance-agents-brokers','mohavelocal.com','Kingman health-insurance office listing.','assistant bootstrap research: Kingman insurance agents professional offices',0,
  null,'(928) 453-5100',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman health-insurance office listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','insurance_professional','insurance agents professional offices','Aflac',
  'https://www.mohavelocal.com/l/kingman-az/insurance-agents-brokers','mohavelocal.com','Kingman insurance office listing at 1711 N Stockton Hill Rd.','assistant bootstrap research: Kingman insurance agents professional offices',0,
  null,'(928) 377-9879',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman insurance office listing at 1711 N Stockton Hill Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','insurance_professional','insurance agents professional offices','Allstate Insurance Companies',
  'https://www.mohavelocal.com/l/kingman-az/insurance-agents-brokers','mohavelocal.com','Kingman insurance office listing at 2901 Stockton Hill Rd.','assistant bootstrap research: Kingman insurance agents professional offices',0,
  null,'(928) 753-5223',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman insurance office listing at 2901 Stockton Hill Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','insurance_professional','insurance agents professional offices','American Family Insurance',
  'https://www.mohavelocal.com/l/kingman-az/insurance-agents-brokers','mohavelocal.com','Kingman insurance office listing at 1465 Northern Ave.','assistant bootstrap research: Kingman insurance agents professional offices',0,
  null,'(928) 704-2575',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman insurance office listing at 1465 Northern Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','insurance_professional','insurance agents professional offices','American National',
  'https://www.mohavelocal.com/l/kingman-az/insurance-agents-brokers','mohavelocal.com','Kingman insurance office listing at 620 E Beale St #4.','assistant bootstrap research: Kingman insurance agents professional offices',0,
  null,'(928) 718-0248',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman insurance office listing at 620 E Beale St #4."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','insurance_professional','insurance agents professional offices','American National Insurance',
  'https://www.mohavelocal.com/l/kingman-az/insurance-agents-brokers','mohavelocal.com','Kingman insurance office listing at 2001 Stockton Hill Rd #A.','assistant bootstrap research: Kingman insurance agents professional offices',0,
  null,'(928) 718-0248',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman insurance office listing at 2001 Stockton Hill Rd #A."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','insurance_professional','insurance agents professional offices','Can-Tell Enterprises',
  'https://www.mohavelocal.com/l/kingman-az/insurance-agents-brokers','mohavelocal.com','Kingman insurance/professional office listing at 701 N Stockton Hill Rd #M.','assistant bootstrap research: Kingman insurance agents professional offices',0,
  null,'(928) 718-1525',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman insurance/professional office listing at 701 N Stockton Hill Rd #M."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','insurance_professional','insurance agents professional offices','Chicago Title Company',
  'https://www.mohavelocal.com/l/kingman-az/insurance-agents-brokers','mohavelocal.com','Kingman title/insurance professional listing.','assistant bootstrap research: Kingman insurance agents professional offices',0,
  null,null,false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman title/insurance professional listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'vendor','Kingman','facility_maintenance','Building Maintenance Help','Canyon State Enterprises LLC',
  'https://www.mohavelocal.com/l/kingman-az/contractors-general','mohavelocal.com','Kingman contractor listing; roofing/masonry/stucco and broader construction capability.','assistant bootstrap research: Kingman Building Maintenance Help',0,
  null,'(928) 757-9003',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman contractor listing; roofing/masonry/stucco and broader construction capability."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'vendor','Kingman','facility_maintenance','Building Maintenance Help','Alston Quality Homes LLC',
  'https://www.mohavelocal.com/l/kingman-az/contractors-general','mohavelocal.com','Kingman general contractor listing at 3405 E Northern Ave.','assistant bootstrap research: Kingman Building Maintenance Help',0,
  null,'(928) 757-5224',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman general contractor listing at 3405 E Northern Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'vendor','Kingman','facility_maintenance','Building Maintenance Help','Angle Homes Inc',
  'https://www.mohavelocal.com/l/kingman-az/contractors-general','mohavelocal.com','Kingman home builder/general contractor listing at 2231 Hualapai Mountain Rd #A.','assistant bootstrap research: Kingman Building Maintenance Help',0,
  null,'(928) 718-1550',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman home builder/general contractor listing at 2231 Hualapai Mountain Rd #A."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'vendor','Kingman','facility_maintenance','Building Maintenance Help','Betnor Inc',
  'https://www.mohavelocal.com/l/kingman-az/contractors-general','mohavelocal.com','Kingman general contractor listing at 4105 N Bank St.','assistant bootstrap research: Kingman Building Maintenance Help',0,
  null,'(928) 757-1001',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman general contractor listing at 4105 N Bank St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'vendor','Kingman','facility_maintenance','Building Maintenance Help','Big Red Construction Inc',
  'https://www.mohavelocal.com/l/kingman-az/contractors-general','mohavelocal.com','Kingman general contractor listing.','assistant bootstrap research: Kingman Building Maintenance Help',0,
  null,'(928) 753-0875',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman general contractor listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'vendor','Kingman','facility_maintenance','Building Maintenance Help','Build Em Right By Dad Inc',
  'https://www.mohavelocal.com/l/kingman-az/contractors-general','mohavelocal.com','General contractor serving Mohave County/Kingman area.','assistant bootstrap research: Kingman Building Maintenance Help',0,
  null,'(928) 692-3715',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"General contractor serving Mohave County/Kingman area."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'vendor','Kingman','facility_maintenance','Building Maintenance Help','Cobalt Construction',
  'https://www.mohavelocal.com/l/kingman-az/contractors-general','mohavelocal.com','General contractor serving Mohave County/Kingman area.','assistant bootstrap research: Kingman Building Maintenance Help',0,
  null,'(928) 704-9574',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"General contractor serving Mohave County/Kingman area."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'vendor','Kingman','electrical_service','Electrician','CDB Electric LLC',
  'https://www.mohavelocal.com/l/kingman-az/contractors-general','mohavelocal.com','Mohave County electrical contractor listing describes residential, commercial and industrial troubleshooting.','assistant bootstrap research: Kingman Electrician',0,
  null,'(928) 279-6555',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Mohave County electrical contractor listing describes residential, commercial and industrial troubleshooting."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','general_business','other local businesses','A Art''s Auto Repair & Handyman LLC',
  'https://www.mohavelocal.com/l/kingman-az/auto-repair','mohavelocal.com','Kingman auto-repair business at 2701 Lillie Ave.','assistant bootstrap research: Kingman other local businesses',0,
  null,'(928) 753-7077',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman auto-repair business at 2701 Lillie Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','general_business','other local businesses','A Team Automotive Mobile Mechanic',
  'https://www.mohavelocal.com/l/kingman-az/auto-repair','mohavelocal.com','Kingman mobile auto-repair business at 1309 Jackson St.','assistant bootstrap research: Kingman other local businesses',0,
  null,'(928) 605-2076',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman mobile auto-repair business at 1309 Jackson St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','general_business','other local businesses','A-1 Mobile Auto Repair',
  'https://www.mohavelocal.com/l/kingman-az/auto-repair','mohavelocal.com','Kingman auto-repair business listing.','assistant bootstrap research: Kingman other local businesses',0,
  null,'(928) 692-9239',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman auto-repair business listing."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','general_business','other local businesses','AAction Automotive Center',
  'https://www.mohavelocal.com/l/kingman-az/auto-repair','mohavelocal.com','Kingman auto-repair business at 3987 Stockton Hill Rd.','assistant bootstrap research: Kingman other local businesses',0,
  null,'(928) 757-1313',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman auto-repair business at 3987 Stockton Hill Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','general_business','other local businesses','Advanced Transmission',
  'https://www.mohavelocal.com/l/kingman-az/auto-repair','mohavelocal.com','Kingman transmission/auto-repair business at 3518 N Benton St.','assistant bootstrap research: Kingman other local businesses',0,
  null,'(928) 757-4691',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman transmission/auto-repair business at 3518 N Benton St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','general_business','other local businesses','All American Tire',
  'https://www.mohavelocal.com/l/kingman-az/auto-repair','mohavelocal.com','Kingman tire and auto-repair business at 1182 W Beale St.','assistant bootstrap research: Kingman other local businesses',0,
  null,'(928) 718-1122',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman tire and auto-repair business at 1182 W Beale St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','general_business','other local businesses','Aune''s Bob Car Care Co',
  'https://www.mohavelocal.com/l/kingman-az/auto-repair','mohavelocal.com','Kingman auto-repair business at 1150 W Beale St.','assistant bootstrap research: Kingman other local businesses',0,
  null,'(928) 753-9300',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman auto-repair business at 1150 W Beale St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','general_business','other local businesses','B & B Auto & Diesel Repair Inc',
  'https://www.mohavelocal.com/l/kingman-az/auto-repair','mohavelocal.com','Kingman auto/diesel repair business at 4270 N Stockton Hill Rd.','assistant bootstrap research: Kingman other local businesses',0,
  null,'(928) 692-3168',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman auto/diesel repair business at 4270 N Stockton Hill Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','general_business','other local businesses','Ben''s Mobile Auto Repair',
  'https://www.mohavelocal.com/l/kingman-az/auto-repair','mohavelocal.com','Kingman mobile auto-repair business listed at 4882 Stockton Hill Rd.','assistant bootstrap research: Kingman other local businesses',0,
  null,'(702) 443-6909',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman mobile auto-repair business listed at 4882 Stockton Hill Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','general_business','other local businesses','Best Tire Pros Of Kingman',
  'https://www.mohavelocal.com/l/kingman-az/auto-repair','mohavelocal.com','Kingman tire/auto-repair business at 1210 W Beale St.','assistant bootstrap research: Kingman other local businesses',0,
  null,'(928) 753-0336',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman tire/auto-repair business at 1210 W Beale St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','general_business','other local businesses','Certified Auto Repair',
  'https://www.mohavelocal.com/l/kingman-az/auto-repair','mohavelocal.com','Kingman auto-repair business at 4355 N Bank St #E.','assistant bootstrap research: Kingman other local businesses',0,
  null,'(928) 681-2227',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman auto-repair business at 4355 N Bank St #E."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','general_business','other local businesses','Cobb''s Transmission & Auto Center',
  'https://www.mohavelocal.com/l/kingman-az/auto-repair','mohavelocal.com','Kingman transmission/auto-repair business at 3137 E Andy Devine Ave.','assistant bootstrap research: Kingman other local businesses',0,
  null,'(928) 753-2204',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman transmission/auto-repair business at 3137 E Andy Devine Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','general_business','other local businesses','D & S Auto Repair',
  'https://www.mohavelocal.com/l/kingman-az/auto-repair','mohavelocal.com','Kingman auto-repair business at 941 E Andy Devine Ave.','assistant bootstrap research: Kingman other local businesses',0,
  null,'(928) 753-6939',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman auto-repair business at 941 E Andy Devine Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','general_business','other local businesses','Dr Of Autos',
  'https://www.mohavelocal.com/l/kingman-az/auto-repair','mohavelocal.com','Kingman auto-repair business at 3191 E Neal Ave.','assistant bootstrap research: Kingman other local businesses',0,
  null,'(928) 757-7403',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman auto-repair business at 3191 E Neal Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','general_business','other local businesses','England Equipment Co LLC',
  'https://www.mohavelocal.com/l/kingman-az/auto-repair','mohavelocal.com','Kingman equipment/auto-repair business at 3001 Eastern St.','assistant bootstrap research: Kingman other local businesses',0,
  null,'(928) 718-1255',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman equipment/auto-repair business at 3001 Eastern St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','general_business','other local businesses','George''s Garage',
  'https://www.mohavelocal.com/l/kingman-az/auto-repair','mohavelocal.com','Kingman auto-repair business at 1401 E Andy Devine Ave.','assistant bootstrap research: Kingman other local businesses',0,
  null,'(928) 753-4133',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman auto-repair business at 1401 E Andy Devine Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','general_business','other local businesses','Holden''s Auto & Truck',
  'https://www.mohavelocal.com/l/kingman-az/auto-repair','mohavelocal.com','Kingman auto/truck repair business at 2405 Airway Ave.','assistant bootstrap research: Kingman other local businesses',0,
  null,'(928) 757-7756',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman auto/truck repair business at 2405 Airway Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','general_business','other local businesses','Joe''s Auto - RV - Truck Service Center',
  'https://www.mohavelocal.com/l/kingman-az/auto-repair','mohavelocal.com','Kingman auto/RV/truck service business at 9350 Shipping Ln.','assistant bootstrap research: Kingman other local businesses',0,
  null,'(928) 681-5823',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman auto/RV/truck service business at 9350 Shipping Ln."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','dental','dentists dental offices orthodontists','Abdelnour Joe W DDS MS',
  'https://www.mohavelocal.com/l/kingman-az/dentists','mohavelocal.com','Kingman dental/oral-surgery office at 1848 Hope Ave.','assistant bootstrap research: Kingman dentists dental offices orthodontists',0,
  null,'(928) 753-2126',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman dental/oral-surgery office at 1848 Hope Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','dental','dentists dental offices orthodontists','Absolute Smiles Dentistry',
  'https://www.mohavelocal.com/l/kingman-az/dentists','mohavelocal.com','Kingman dental office at 2215 Hualapai Mountain Rd.','assistant bootstrap research: Kingman dentists dental offices orthodontists',0,
  null,'(928) 718-0002',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman dental office at 2215 Hualapai Mountain Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','dental','dentists dental offices orthodontists','Anderson Robert DDS',
  'https://www.mohavelocal.com/l/kingman-az/dentists','mohavelocal.com','Kingman dental office at 3775 Stockton Hill Rd #C.','assistant bootstrap research: Kingman dentists dental offices orthodontists',0,
  null,'(928) 692-9315',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman dental office at 3775 Stockton Hill Rd #C."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','dental','dentists dental offices orthodontists','Bradley Kelly DMD',
  'https://www.mohavelocal.com/l/kingman-az/dentists','mohavelocal.com','Kingman dental practice at 1848 Hope Ave.','assistant bootstrap research: Kingman dentists dental offices orthodontists',0,
  null,'(928) 753-5200',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman dental practice at 1848 Hope Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','dental','dentists dental offices orthodontists','Bullen Carl B DDS MS',
  'https://www.mohavelocal.com/l/kingman-az/dentists','mohavelocal.com','Kingman dental office at 1143 Riata Valley Rd.','assistant bootstrap research: Kingman dentists dental offices orthodontists',0,
  null,'(928) 757-8700',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman dental office at 1143 Riata Valley Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','dental','dentists dental offices orthodontists','Carlson Bryan K DMD',
  'https://www.mohavelocal.com/l/kingman-az/dentists','mohavelocal.com','Kingman dental office at 988 Sycamore Ave.','assistant bootstrap research: Kingman dentists dental offices orthodontists',0,
  null,'(928) 757-3223',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman dental office at 988 Sycamore Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','dental','dentists dental offices orthodontists','Clark E Melstrom DDS',
  'https://www.mohavelocal.com/l/kingman-az/dentists','mohavelocal.com','Kingman dental office at 4601 Stockton Hill Rd.','assistant bootstrap research: Kingman dentists dental offices orthodontists',0,
  null,'(928) 757-3225',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman dental office at 4601 Stockton Hill Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','dental','dentists dental offices orthodontists','Cobb Regina E DDS',
  'https://www.mohavelocal.com/l/kingman-az/dentists','mohavelocal.com','Kingman dental office at 1111 Riata Valley Rd #350.','assistant bootstrap research: Kingman dentists dental offices orthodontists',0,
  null,'(928) 757-9190',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman dental office at 1111 Riata Valley Rd #350."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','dental','dentists dental offices orthodontists','Dicarlo Ronald DMD',
  'https://www.mohavelocal.com/l/kingman-az/dentists','mohavelocal.com','Kingman pediatric dental office at 2401 Stockton Hill Rd #1.','assistant bootstrap research: Kingman dentists dental offices orthodontists',0,
  null,'(928) 718-7188',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman pediatric dental office at 2401 Stockton Hill Rd #1."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','dental','dentists dental offices orthodontists','Family Dentistry By Design',
  'https://www.mohavelocal.com/l/kingman-az/dentists','mohavelocal.com','Kingman dental practice identified in the current dentist directory.','assistant bootstrap research: Kingman dentists dental offices orthodontists',0,
  null,null,false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman dental practice identified in the current dentist directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','general_business','other local businesses','Arise Inc',
  'https://www.mohavelocal.com/l/kingman-az/social-service-organizations','mohavelocal.com','Kingman social-service organization at 114 Tucker St #8.','assistant bootstrap research: Kingman other local businesses',0,
  null,'(928) 753-5889',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman social-service organization at 114 Tucker St #8."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','general_business','other local businesses','Arizona Youth Partnership',
  'https://www.mohavelocal.com/l/kingman-az/social-service-organizations','mohavelocal.com','Kingman youth/social-service organization.','assistant bootstrap research: Kingman other local businesses',0,
  null,'(928) 453-4003',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman youth/social-service organization."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','general_business','other local businesses','Child & Family Resources',
  'https://www.mohavelocal.com/l/kingman-az/social-service-organizations','mohavelocal.com','Kingman social-service organization at 2202 Hualapai Mountain Rd.','assistant bootstrap research: Kingman other local businesses',0,
  null,'(928) 753-4410',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman social-service organization at 2202 Hualapai Mountain Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','general_business','other local businesses','Child & Family Support Service',
  'https://www.mohavelocal.com/l/kingman-az/social-service-organizations','mohavelocal.com','Kingman social-service organization at 403 E Beale St.','assistant bootstrap research: Kingman other local businesses',0,
  null,'(928) 753-8778',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman social-service organization at 403 E Beale St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','general_business','other local businesses','Cornerstone Mission',
  'https://www.mohavelocal.com/l/kingman-az/social-service-organizations','mohavelocal.com','Kingman social-service organization at 3990 E John L Ave.','assistant bootstrap research: Kingman other local businesses',0,
  null,'(928) 692-7771',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman social-service organization at 3990 E John L Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','general_business','other local businesses','Goodwill Industries',
  'https://www.mohavelocal.com/l/kingman-az/social-service-organizations','mohavelocal.com','Kingman thrift/social-service facility at 4265 Stockton Hill Rd.','assistant bootstrap research: Kingman other local businesses',0,
  null,'(928) 757-9808',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman thrift/social-service facility at 4265 Stockton Hill Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','general_business','other local businesses','Grand Vista Inc',
  'https://www.mohavelocal.com/l/kingman-az/social-service-organizations','mohavelocal.com','Kingman social-service organization at 1075 Kenwood Ave.','assistant bootstrap research: Kingman other local businesses',0,
  null,'(928) 692-7001',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman social-service organization at 1075 Kenwood Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','general_business','other local businesses','Kingman Aid To Abused People',
  'https://www.mohavelocal.com/l/kingman-az/social-service-organizations','mohavelocal.com','Kingman crisis/social-service organization at 1770 Airway Ave.','assistant bootstrap research: Kingman other local businesses',0,
  null,'(928) 753-4242',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman crisis/social-service organization at 1770 Airway Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','general_business','other local businesses','Kingman Community Foundation',
  'https://www.mohavelocal.com/l/kingman-az/social-service-organizations','mohavelocal.com','Kingman community foundation listing at 2985 E John L Ave.','assistant bootstrap research: Kingman other local businesses',0,
  null,'(928) 757-1704',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman community foundation listing at 2985 E John L Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','general_business','other local businesses','River Cities United Way',
  'https://www.mohavelocal.com/l/kingman-az/social-service-organizations','mohavelocal.com','Kingman social-service organization at 2202 Hualapai Mountain Rd.','assistant bootstrap research: Kingman other local businesses',0,
  null,'(928) 753-6720',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman social-service organization at 2202 Hualapai Mountain Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','general_business','other local businesses','Sarah''s House',
  'https://www.mohavelocal.com/l/kingman-az/social-service-organizations','mohavelocal.com','Kingman social-service organization at 1778 Airway Ave.','assistant bootstrap research: Kingman other local businesses',0,
  null,'(928) 757-8103',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman social-service organization at 1778 Airway Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','therapy_behavioral','therapy counseling behavioral health clinics','WestCare Arizona',
  'https://www.mohavelocal.com/l/kingman-az/social-service-organizations','mohavelocal.com','Behavioral-health/human-services organization listing at 220 First St, Kingman.','assistant bootstrap research: Kingman therapy counseling behavioral health clinics',0,
  null,'(760) 326-2368',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Behavioral-health/human-services organization listing at 220 First St, Kingman."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','general_business','other local businesses','Cerbat Cliffs Animal Hospital',
  'https://www.mohavelocal.com/l/kingman-az/veterinarians','mohavelocal.com','Kingman animal hospital at 4110 Stockton Hill Rd.','assistant bootstrap research: Kingman other local businesses',0,
  null,'(928) 757-8855',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman animal hospital at 4110 Stockton Hill Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','general_business','other local businesses','Kingman Animal Hospital',
  'https://www.mohavelocal.com/l/kingman-az/veterinarians','mohavelocal.com','Kingman animal hospital at 1650 Northern Ave.','assistant bootstrap research: Kingman other local businesses',0,
  null,'(928) 757-4011',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman animal hospital at 1650 Northern Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','general_business','other local businesses','Low Cost Spay & Neuter Clinic',
  'https://www.mohavelocal.com/l/kingman-az/veterinarians','mohavelocal.com','Kingman veterinary clinic at 1520 Northern Ave.','assistant bootstrap research: Kingman other local businesses',0,
  null,'(928) 692-5226',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman veterinary clinic at 1520 Northern Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','general_business','other local businesses','Manzanita Animal Hospital',
  'https://www.mohavelocal.com/l/kingman-az/veterinarians','mohavelocal.com','Kingman animal hospital at 2323 E Detroit Ave.','assistant bootstrap research: Kingman other local businesses',0,
  null,'(928) 753-6138',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman animal hospital at 2323 E Detroit Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','general_business','other local businesses','Mountain View Animal Hospital',
  'https://www.mohavelocal.com/l/kingman-az/veterinarians','mohavelocal.com','Kingman animal hospital at 3975 Bank St N.','assistant bootstrap research: Kingman other local businesses',0,
  null,'(928) 529-5252',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman animal hospital at 3975 Bank St N."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','general_business','other local businesses','Stockton Hill Animal Hospital Of Kingman',
  'https://www.mohavelocal.com/l/kingman-az/veterinarians','mohavelocal.com','Kingman animal hospital at 4335 Stockton Hill Rd.','assistant bootstrap research: Kingman other local businesses',0,
  null,'(928) 757-7979',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman animal hospital at 4335 Stockton Hill Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','general_business','other local businesses','Wright Veterinary Service',
  'https://www.mohavelocal.com/l/kingman-az/veterinarians','mohavelocal.com','Kingman veterinary practice at 2444 Kingman Ave.','assistant bootstrap research: Kingman other local businesses',0,
  null,'(928) 718-1300',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman veterinary practice at 2444 Kingman Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','medical_centers','hospitals medical centers clinics','Arizona Desert Dermatology & Surgery PC',
  'https://www.mohavelocal.com/l/kingman-az/physicians-surgeons','mohavelocal.com','Kingman medical office at 1700 Sycamore Ave.','assistant bootstrap research: Kingman hospitals medical centers clinics',0,
  null,null,false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman medical office at 1700 Sycamore Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','medical_centers','hospitals medical centers clinics','Al-Khatib Jamal MD FACC FSCAI',
  'https://www.mohavelocal.com/l/kingman-az/physicians-surgeons','mohavelocal.com','Kingman physician office at 1753 Airway Ave #A.','assistant bootstrap research: Kingman hospitals medical centers clinics',0,
  null,'(928) 757-4359',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman physician office at 1753 Airway Ave #A."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','medical_centers','hospitals medical centers clinics','Alleman Wade MD',
  'https://www.mohavelocal.com/l/kingman-az/physicians-surgeons','mohavelocal.com','Kingman physician office at 1608 N Stockton Hill Rd #104.','assistant bootstrap research: Kingman hospitals medical centers clinics',0,
  null,'(928) 453-8346',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman physician office at 1608 N Stockton Hill Rd #104."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','medical_centers','hospitals medical centers clinics','Allergy Affiliates Southwest - Hosea E Brown MD',
  'https://www.mohavelocal.com/l/kingman-az/physicians-surgeons','mohavelocal.com','Kingman physician office at 2901 Stockton Hill Rd #E.','assistant bootstrap research: Kingman hospitals medical centers clinics',0,
  null,'(928) 757-1060',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman physician office at 2901 Stockton Hill Rd #E."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','medical_centers','hospitals medical centers clinics','Arizona Institute Medicine: Salim Attiya MD',
  'https://www.mohavelocal.com/l/kingman-az/physicians-surgeons','mohavelocal.com','Kingman physician office at 3636 Stockton Hill Rd #3.','assistant bootstrap research: Kingman hospitals medical centers clinics',0,
  null,'(928) 757-1739',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman physician office at 3636 Stockton Hill Rd #3."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','medical_centers','hospitals medical centers clinics','Arizona Institute Of Medicine & Surgery',
  'https://www.mohavelocal.com/l/kingman-az/physicians-surgeons','mohavelocal.com','Kingman medical office at 3636 Stockton Hill Rd.','assistant bootstrap research: Kingman hospitals medical centers clinics',0,
  null,'(928) 757-3636',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman medical office at 3636 Stockton Hill Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','medical_centers','hospitals medical centers clinics','Arizona Kidney Disease & Hypertension Center',
  'https://www.mohavelocal.com/l/kingman-az/physicians-surgeons','mohavelocal.com','Kingman nephrology office at 2501 Stockton Hill Rd #102.','assistant bootstrap research: Kingman hospitals medical centers clinics',0,
  null,'(928) 681-2772',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman nephrology office at 2501 Stockton Hill Rd #102."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','medical_centers','hospitals medical centers clinics','Trinity Allergy Asthma and Immunology',
  'https://www.mohavelocal.com/l/kingman-az/physicians-surgeons','mohavelocal.com','Kingman allergy/immunology office at 3931 Stockton Hill Rd #D.','assistant bootstrap research: Kingman hospitals medical centers clinics',0,
  null,'(928) 681-5800',false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Kingman allergy/immunology office at 3931 Stockton Hill Rd #D."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','medical_centers','hospitals medical centers clinics','Kingman Regional Medical Center',
  'https://www.choosekingman.com/locate-here/target-industries/healthcare','choosekingman.com','City of Kingman Economic Development identifies KRMC as the largest healthcare provider in northwest Arizona with multiple Kingman campuses.','assistant bootstrap research: Kingman hospitals medical centers clinics',0,
  null,null,false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"City of Kingman Economic Development identifies KRMC as the largest healthcare provider in northwest Arizona with multiple Kingman campuses."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','warehouses_industrial','warehouses industrial businesses distribution centers','American Woodmark Corp.',
  'https://www.choosekingman.com/workforce/major-employers/','choosekingman.com','City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses.','assistant bootstrap research: Kingman warehouses industrial businesses distribution centers',0,
  null,null,false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','warehouses_industrial','warehouses industrial businesses distribution centers','Laron Incorporated',
  'https://www.choosekingman.com/workforce/major-employers/','choosekingman.com','City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses.','assistant bootstrap research: Kingman warehouses industrial businesses distribution centers',0,
  null,null,false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','warehouses_industrial','warehouses industrial businesses distribution centers','Cantex, Inc.',
  'https://www.choosekingman.com/workforce/major-employers/','choosekingman.com','City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses.','assistant bootstrap research: Kingman warehouses industrial businesses distribution centers',0,
  null,null,false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','warehouses_industrial','warehouses industrial businesses distribution centers','True Value Company',
  'https://www.choosekingman.com/workforce/major-employers/','choosekingman.com','City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses.','assistant bootstrap research: Kingman warehouses industrial businesses distribution centers',0,
  null,null,false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','warehouses_industrial','warehouses industrial businesses distribution centers','Dillon Transportation, LLC',
  'https://www.choosekingman.com/workforce/major-employers/','choosekingman.com','City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses.','assistant bootstrap research: Kingman warehouses industrial businesses distribution centers',0,
  null,null,false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','warehouses_industrial','warehouses industrial businesses distribution centers','Insteel',
  'https://www.choosekingman.com/workforce/major-employers/','choosekingman.com','City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses.','assistant bootstrap research: Kingman warehouses industrial businesses distribution centers',0,
  null,null,false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','warehouses_industrial','warehouses industrial businesses distribution centers','Pepsi Cola',
  'https://www.choosekingman.com/workforce/major-employers/','choosekingman.com','City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses.','assistant bootstrap research: Kingman warehouses industrial businesses distribution centers',0,
  null,null,false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','warehouses_industrial','warehouses industrial businesses distribution centers','Star R Foam',
  'https://www.choosekingman.com/workforce/major-employers/','choosekingman.com','City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses.','assistant bootstrap research: Kingman warehouses industrial businesses distribution centers',0,
  null,null,false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','warehouses_industrial','warehouses industrial businesses distribution centers','Shelves West',
  'https://www.choosekingman.com/workforce/major-employers/','choosekingman.com','City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses.','assistant bootstrap research: Kingman warehouses industrial businesses distribution centers',0,
  null,null,false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','warehouses_industrial','warehouses industrial businesses distribution centers','Interstate Group, LLC',
  'https://www.choosekingman.com/workforce/major-employers/','choosekingman.com','City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses.','assistant bootstrap research: Kingman warehouses industrial businesses distribution centers',0,
  null,null,false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','warehouses_industrial','warehouses industrial businesses distribution centers','West Coast Netting',
  'https://www.choosekingman.com/workforce/major-employers/','choosekingman.com','City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses.','assistant bootstrap research: Kingman warehouses industrial businesses distribution centers',0,
  null,null,false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','warehouses_industrial','warehouses industrial businesses distribution centers','Honeywell',
  'https://www.choosekingman.com/workforce/major-employers/','choosekingman.com','City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses.','assistant bootstrap research: Kingman warehouses industrial businesses distribution centers',0,
  null,null,false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','warehouses_industrial','warehouses industrial businesses distribution centers','Kingman Airline Service, Inc.',
  'https://www.choosekingman.com/workforce/major-employers/','choosekingman.com','City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses.','assistant bootstrap research: Kingman warehouses industrial businesses distribution centers',0,
  null,null,false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','warehouses_industrial','warehouses industrial businesses distribution centers','Goodyear Tire & Rubber Co.',
  'https://www.choosekingman.com/workforce/major-employers/','choosekingman.com','City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses.','assistant bootstrap research: Kingman warehouses industrial businesses distribution centers',0,
  null,null,false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','warehouses_industrial','warehouses industrial businesses distribution centers','JM Manufacturing Co / JM Eagle',
  'https://www.choosekingman.com/workforce/major-employers/','choosekingman.com','City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses.','assistant bootstrap research: Kingman warehouses industrial businesses distribution centers',0,
  null,null,false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','warehouses_industrial','warehouses industrial businesses distribution centers','Henry Co., LLC',
  'https://www.choosekingman.com/workforce/major-employers/','choosekingman.com','City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses.','assistant bootstrap research: Kingman warehouses industrial businesses distribution centers',0,
  null,null,false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','warehouses_industrial','warehouses industrial businesses distribution centers','Love''s Trucking Solutions',
  'https://www.choosekingman.com/workforce/major-employers/','choosekingman.com','City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses.','assistant bootstrap research: Kingman warehouses industrial businesses distribution centers',0,
  null,null,false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','warehouses_industrial','warehouses industrial businesses distribution centers','MC2',
  'https://www.choosekingman.com/workforce/major-employers/','choosekingman.com','City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses.','assistant bootstrap research: Kingman warehouses industrial businesses distribution centers',0,
  null,null,false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','warehouses_industrial','warehouses industrial businesses distribution centers','Lander Industries',
  'https://www.choosekingman.com/workforce/major-employers/','choosekingman.com','City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses.','assistant bootstrap research: Kingman warehouses industrial businesses distribution centers',0,
  null,null,false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','warehouses_industrial','warehouses industrial businesses distribution centers','Potters Industries',
  'https://www.choosekingman.com/workforce/major-employers/','choosekingman.com','City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses.','assistant bootstrap research: Kingman warehouses industrial businesses distribution centers',0,
  null,null,false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','warehouses_industrial','warehouses industrial businesses distribution centers','Jasper Engines',
  'https://www.choosekingman.com/workforce/major-employers/','choosekingman.com','City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses.','assistant bootstrap research: Kingman warehouses industrial businesses distribution centers',0,
  null,null,false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','warehouses_industrial','warehouses industrial businesses distribution centers','Isco Industries',
  'https://www.choosekingman.com/workforce/major-employers/','choosekingman.com','City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses.','assistant bootstrap research: Kingman warehouses industrial businesses distribution centers',0,
  null,null,false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','warehouses_industrial','warehouses industrial businesses distribution centers','Lomanco, Inc.',
  'https://www.choosekingman.com/workforce/major-employers/','choosekingman.com','City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses.','assistant bootstrap research: Kingman warehouses industrial businesses distribution centers',0,
  null,null,false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
  'buyer','Kingman','warehouses_industrial','warehouses industrial businesses distribution centers','I Corp',
  'https://www.choosekingman.com/workforce/major-employers/','choosekingman.com','City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses.','assistant bootstrap research: Kingman warehouses industrial businesses distribution centers',0,
  null,null,false,
  'secondary','discovery',null,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_02","researched_at":"2026-10-26T22:31:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"City of Kingman Economic Development lists this company among Kingman''s major employers/manufacturing, distribution, aviation or industrial businesses."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
  source_domain=excluded.source_domain,
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
where p.market='Kingman';


-- Assistant-led Kingman census batch 03 (2026-10-26)
-- Current official/direct-source layer plus selected government/regulatory discovery evidence.
-- Inventory only; preserves closed status and never stages/sends outreach.

insert into market_inventory_candidates(
 side,market,category_key,category_label,business_name,source_url,source_domain,
 snippet,search_query,page_no,public_email,public_phone,official_site,
 source_tier,verification_status,last_verified_at,status,query_strategy_version,evidence
) values (
 'buyer','Kingman','schools','schools charter schools private schools','Kingman High School',
 'https://www.kusd.org/page/our-schools','kusd.org','Official KUSD current school listing; 4182 Bank St, Kingman.','assistant bootstrap research: Kingman schools charter schools private schools',0,
 null,'(928) 692-6480',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official KUSD current school listing; 4182 Bank St, Kingman."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','schools','schools charter schools private schools','Lee Williams High School',
 'https://www.kusd.org/page/our-schools','kusd.org','Official KUSD current school listing; 400 Grandview Ave, Kingman.','assistant bootstrap research: Kingman schools charter schools private schools',0,
 null,'(928) 718-6000',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official KUSD current school listing; 400 Grandview Ave, Kingman."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','schools','schools charter schools private schools','Kingman Middle School',
 'https://www.kusd.org/page/our-schools','kusd.org','Official KUSD current school listing; 1969 Detroit Ave, Kingman.','assistant bootstrap research: Kingman schools charter schools private schools',0,
 null,'(928) 753-3588',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official KUSD current school listing; 1969 Detroit Ave, Kingman."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','schools','schools charter schools private schools','White Cliffs Middle School',
 'https://www.kusd.org/page/our-schools','kusd.org','Official KUSD current school listing; 3550 Prospector St, Kingman.','assistant bootstrap research: Kingman schools charter schools private schools',0,
 null,'(928) 753-6216',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official KUSD current school listing; 3550 Prospector St, Kingman."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','schools','schools charter schools private schools','Cerbat Elementary School',
 'https://www.kusd.org/page/our-schools','kusd.org','Official KUSD current school listing; 2689 Jagerson Ave, Kingman.','assistant bootstrap research: Kingman schools charter schools private schools',0,
 null,'(928) 757-5100',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official KUSD current school listing; 2689 Jagerson Ave, Kingman."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','schools','schools charter schools private schools','Desert Willow Elementary School',
 'https://www.kusd.org/page/our-schools','kusd.org','Official KUSD current school listing; 3700 Prospector St, Kingman.','assistant bootstrap research: Kingman schools charter schools private schools',0,
 null,'(928) 753-2472',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official KUSD current school listing; 3700 Prospector St, Kingman."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','schools','schools charter schools private schools','Hualapai Elementary School',
 'https://www.kusd.org/page/our-schools','kusd.org','Official KUSD current school listing; 350 Eastern St, Kingman.','assistant bootstrap research: Kingman schools charter schools private schools',0,
 null,'(928) 753-1919',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official KUSD current school listing; 350 Eastern St, Kingman."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','schools','schools charter schools private schools','Manzanita Elementary School',
 'https://www.kusd.org/page/our-schools','kusd.org','Official KUSD current school listing; 2601 Detroit Ave, Kingman.','assistant bootstrap research: Kingman schools charter schools private schools',0,
 null,'(928) 753-6197',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official KUSD current school listing; 2601 Detroit Ave, Kingman."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','schools','schools charter schools private schools','Little Explorers Early Learning Center',
 'https://www.kusd.org/page/our-schools','kusd.org','Official KUSD current school listing; 3175 Gordon Dr, Kingman.','assistant bootstrap research: Kingman schools charter schools private schools',0,
 null,'(928) 753-6413',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official KUSD current school listing; 3175 Gordon Dr, Kingman."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','schools','schools charter schools private schools','Kingman Online Learning Academy / Sandy McCoy Positive Alternative Campus',
 'https://www.kusd.org/page/our-schools','kusd.org','Official KUSD current school listing; 690 Spring St Suite A, Kingman.','assistant bootstrap research: Kingman schools charter schools private schools',0,
 null,'(928) 753-8400',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official KUSD current school listing; 690 Spring St Suite A, Kingman."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','schools','schools charter schools private schools','Kingman Academy of Learning',
 'https://www.kaolaz.org/','kaolaz.org','Current official charter-school site; 3410 N Burbank St, Kingman and 2026-27 admissions/calendar information.','assistant bootstrap research: Kingman schools charter schools private schools',0,
 null,'(928) 681-2400',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Current official charter-school site; 3410 N Burbank St, Kingman and 2026-27 admissions/calendar information."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','schools','schools charter schools private schools','Kingman Academy High School',
 'https://www.mohave.gov/departments/information-technology/gis-maps/documents/all-mohave-county-schools/','mohave.gov','Mohave County school inventory lists charter high school at 3420 Burbank St, Kingman.','assistant bootstrap research: Kingman schools charter schools private schools',0,
 null,'(928) 681-2900',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Mohave County school inventory lists charter high school at 3420 Burbank St, Kingman."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','schools','schools charter schools private schools','Kingman Academy Intermediate School',
 'https://www.mohave.gov/departments/information-technology/gis-maps/documents/all-mohave-county-schools/','mohave.gov','Mohave County school inventory lists charter intermediate campus at 3419 Harrison Ave, Kingman.','assistant bootstrap research: Kingman schools charter schools private schools',0,
 null,'(928) 681-3200',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Mohave County school inventory lists charter intermediate campus at 3419 Harrison Ave, Kingman."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','schools','schools charter schools private schools','Kingman Academy Middle School',
 'https://www.mohave.gov/departments/information-technology/gis-maps/documents/all-mohave-county-schools/','mohave.gov','Mohave County school inventory lists charter middle campus at 3269 Harrison St, Kingman.','assistant bootstrap research: Kingman schools charter schools private schools',0,
 null,'(928) 692-5265',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Mohave County school inventory lists charter middle campus at 3269 Harrison St, Kingman."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','schools','schools charter schools private schools','Kingman Academy Primary School',
 'https://www.mohave.gov/departments/information-technology/gis-maps/documents/all-mohave-county-schools/','mohave.gov','Mohave County school inventory lists charter primary campus at 3120 Hualapai Mtn Rd, Kingman.','assistant bootstrap research: Kingman schools charter schools private schools',0,
 null,'(928) 718-2500',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Mohave County school inventory lists charter primary campus at 3120 Hualapai Mtn Rd, Kingman."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','schools','schools charter schools private schools','Emmanuel Christian Academy',
 'https://www.mohave.gov/departments/information-technology/gis-maps/documents/all-mohave-county-schools/','mohave.gov','Mohave County school inventory lists Christian school at 4798 N Stockton Hill Rd, Kingman.','assistant bootstrap research: Kingman schools charter schools private schools',0,
 null,'(928) 718-4200',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Mohave County school inventory lists Christian school at 4798 N Stockton Hill Rd, Kingman."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','schools','schools charter schools private schools','Cedar Hills School',
 'https://www.mohave.gov/departments/information-technology/gis-maps/documents/all-mohave-county-schools/','mohave.gov','Mohave County school inventory lists public K-8 campus at 9501 Nellie Dr, Kingman.','assistant bootstrap research: Kingman schools charter schools private schools',0,
 null,'(928) 692-0013',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Mohave County school inventory lists public K-8 campus at 9501 Nellie Dr, Kingman."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','schools','schools charter schools private schools','Kingman Adventist Christian School',
 'https://www.mohave.gov/departments/information-technology/gis-maps/documents/all-mohave-county-schools/','mohave.gov','Mohave County school inventory lists Christian school at 3180 N White Cliffs Rd, Kingman.','assistant bootstrap research: Kingman schools charter schools private schools',0,
 null,'(928) 757-8676',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Mohave County school inventory lists Christian school at 3180 N White Cliffs Rd, Kingman."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','grocery','grocery stores supermarkets markets','Smith''s Food and Drug',
 'https://www.smithsfoodanddrug.com/stores/grocery/az/kingman','smithsfoodanddrug.com','Official current Kingman grocery location at 3490 N Stockton Hill Rd.','assistant bootstrap research: Kingman grocery stores supermarkets markets',0,
 null,'(928) 757-2544',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official current Kingman grocery location at 3490 N Stockton Hill Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','grocery','grocery stores supermarkets markets','Walmart Supercenter #2051',
 'https://www.walmart.com/store/2051-kingman-az','walmart.com','Official current Kingman Supercenter at 3396 Stockton Hill Rd.','assistant bootstrap research: Kingman grocery stores supermarkets markets',0,
 null,'(928) 692-0555',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official current Kingman Supercenter at 3396 Stockton Hill Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','grocery','grocery stores supermarkets markets','Safeway - 3125 Stockton Hill Rd',
 'https://local.safeway.com/safeway/az/kingman.html','local.safeway.com','Official Safeway location page lists current Kingman grocery at 3125 Stockton Hill Rd.','assistant bootstrap research: Kingman grocery stores supermarkets markets',0,
 null,'(928) 753-2943',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official Safeway location page lists current Kingman grocery at 3125 Stockton Hill Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','grocery','grocery stores supermarkets markets','Safeway - 3970 Stockton Hill Rd',
 'https://local.safeway.com/safeway/az/kingman.html','local.safeway.com','Official Safeway location page lists current Kingman grocery at 3970 Stockton Hill Rd.','assistant bootstrap research: Kingman grocery stores supermarkets markets',0,
 null,'(928) 681-4900',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official Safeway location page lists current Kingman grocery at 3970 Stockton Hill Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','pharmacies','pharmacies drug stores','CVS Pharmacy #08977',
 'https://www.cvs.com/store-locator/cvs-pharmacy-locations/Arizona/Kingman','cvs.com','Official CVS locator lists current store/pharmacy at 3501 Stockton Hill Rd, Kingman.','assistant bootstrap research: Kingman pharmacies drug stores',0,
 null,'(928) 757-1999',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official CVS locator lists current store/pharmacy at 3501 Stockton Hill Rd, Kingman."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','pharmacies','pharmacies drug stores','Walgreens #03245',
 'https://www.walgreens.com/storelocator/storeDetails.jsp?stnum=3245','walgreens.com','Official Walgreens store page for 3487 N Stockton Hill Rd, Kingman; pharmacy phone corroborated by 2026 pharmacy directory.','assistant bootstrap research: Kingman pharmacies drug stores',0,
 null,'(928) 692-1822',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official Walgreens store page for 3487 N Stockton Hill Rd, Kingman; pharmacy phone corroborated by 2026 pharmacy directory."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','pharmacies','pharmacies drug stores','Walgreens #12880',
 'https://www.bannerhealth.com/medicare/-/media/files/project/medicare/medicare-adv/cy26-dsnp-materials/directories/jun/dsnp_pharmacy-pd_cy26-jun_bil_508.pdf','bannerhealth.com','2026 pharmacy directory lists Walgreens #12880 at 1925 E Andy Devine Ave, Kingman.','assistant bootstrap research: Kingman pharmacies drug stores',0,
 null,'(928) 753-7766',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"2026 pharmacy directory lists Walgreens #12880 at 1925 E Andy Devine Ave, Kingman."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','pharmacies','pharmacies drug stores','West Kingman Pharmacy',
 'https://www.westkingmanpharmacy.com/','westkingmanpharmacy.com','Official current pharmacy site at 3135 Stockton Hill Road, Kingman.','assistant bootstrap research: Kingman pharmacies drug stores',0,
 null,'(928) 377-1350',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official current pharmacy site at 3135 Stockton Hill Road, Kingman."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','pharmacies','pharmacies drug stores','Uptown Drug',
 'https://www.bannerhealth.com/medicare/-/media/files/project/medicare/medicare-adv/cy26-dsnp-materials/directories/jun/dsnp_pharmacy-pd_cy26-jun_bil_508.pdf','bannerhealth.com','2026 pharmacy directory lists Uptown Drug at 2820 E Andy Devine Ave, Kingman.','assistant bootstrap research: Kingman pharmacies drug stores',0,
 null,'(928) 753-2226',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"2026 pharmacy directory lists Uptown Drug at 2820 E Andy Devine Ave, Kingman."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','retail','retail stores shopping stores','Ace Hardware of Kingman AZ',
 'https://www.acehardware.com/store-details/18312','acehardware.com','Official current Ace store at 4550 N Stockton Hill Rd, Kingman.','assistant bootstrap research: Kingman retail stores shopping stores',0,
 null,'(928) 757-2154',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official current Ace store at 4550 N Stockton Hill Rd, Kingman."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','retail','retail stores shopping stores','Kingman True Value Home Center',
 'https://www.truevalue.com/find-a-store/arizona/','truevalue.com','Official True Value locator lists Kingman store at 3633 Stockton Hill Rd.','assistant bootstrap research: Kingman retail stores shopping stores',0,
 null,'(928) 757-4459',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official True Value locator lists Kingman store at 3633 Stockton Hill Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','retail','retail stores shopping stores','MattressLand & Furniture - Kingman',
 'https://www.mattresslandaz.com/','mattresslandaz.com','Official current Kingman showroom at 4290 Stockton Hill Rd.','assistant bootstrap research: Kingman retail stores shopping stores',0,
 'Kingman@MattressLandaz.com','(928) 692-3311',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official current Kingman showroom at 4290 Stockton Hill Rd."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','retail','retail stores shopping stores','Ashley Outlet Kingman',
 'https://stores.ashleyfurniture.com/outlet/arizona/','stores.ashleyfurniture.com','Official Ashley outlet locator lists Kingman at 3340 E Andy Devine Ave.','assistant bootstrap research: Kingman retail stores shopping stores',0,
 null,'(928) 295-4851',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official Ashley outlet locator lists Kingman at 3340 E Andy Devine Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','property_management','property management companies apartment communities','Real Property Management Northern Arizona',
 'https://www.rpmnorthernarizona.com/','rpmnorthernarizona.com','Official property-management site lists main office at 703 E Beale St, Kingman and Mohave County service.','assistant bootstrap research: Kingman property management companies apartment communities',0,
 null,'(928) 757-7039',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official property-management site lists main office at 703 E Beale St, Kingman and Mohave County service."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','property_management','property management companies apartment communities','Kingman Elite Properties',
 'https://www.kingmanrentals.com/','kingmanrentals.com','Official Kingman property-management office at 1916 Stockton Hill Road; Arizona real-estate database also shows active Kingman DBA.','assistant bootstrap research: Kingman property management companies apartment communities',0,
 null,'(928) 753-1500',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official Kingman property-management office at 1916 Stockton Hill Road; Arizona real-estate database also shows active Kingman DBA."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','senior_daycare','senior living assisted living daycare childcare','Avista Senior Living White Cliffs',
 'https://avistaseniorliving.com/white-cliffs','avistaseniorliving.com','Official current assisted-living and memory-care community at 3600 Peterson Rd, Kingman.','assistant bootstrap research: Kingman senior living assisted living daycare childcare',0,
 null,'(928) 681-1050',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official current assisted-living and memory-care community at 3600 Peterson Rd, Kingman."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','gyms_fitness','gyms fitness centers recreation centers','Northern Arizona Health Club',
 'https://www.northernarizonahealthclub.com/','northernarizonahealthclub.com','Official current Kingman health club/fitness facility at 1707 E Andy Devine Ave.','assistant bootstrap research: Kingman gyms fitness centers recreation centers',0,
 'referrals@nazpta.com','(928) 440-6880',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official current Kingman health club/fitness facility at 1707 E Andy Devine Ave."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','theaters_entertainment','theaters cinemas entertainment venues','Cerbat Lanes',
 'https://cerbatlanesbowling.com/','cerbatlanesbowling.com','Official current 24-lane bowling/arcade/banquet/food facility at 3631 Stockton Hill Rd, Kingman.','assistant bootstrap research: Kingman theaters cinemas entertainment venues',0,
 'Krystadeleon92@gmail.com','(928) 692-1818',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official current 24-lane bowling/arcade/banquet/food facility at 3631 Stockton Hill Rd, Kingman."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','warehouses_industrial','warehouses industrial businesses distribution centers','Mohave Storage - Kingman',
 'https://www.mohavestorage.com/','mohavestorage.com','Official storage company site lists Kingman among active Arizona markets; multi-location facility operator.','assistant bootstrap research: Kingman warehouses industrial businesses distribution centers',0,
 null,'(928) 219-6598',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official storage company site lists Kingman among active Arizona markets; multi-location facility operator."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','auto_dealers','auto dealers car dealerships','Anderson Ford Kingman',
 'https://www.andersonfordkingman.com/','andersonfordkingman.com','Official current Ford dealership at 3601 Stockton Hill Rd, Kingman.','assistant bootstrap research: Kingman auto dealers car dealerships',0,
 null,'(928) 565-1922',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official current Ford dealership at 3601 Stockton Hill Rd, Kingman."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','auto_dealers','auto dealers car dealerships','Martin Swanty Kia',
 'https://www.kingmankia.com/','kingmankia.com','Official current Kia dealership at 2610 E Andy Devine Ave, Kingman.','assistant bootstrap research: Kingman auto dealers car dealerships',0,
 null,'(928) 753-3131',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official current Kia dealership at 2610 E Andy Devine Ave, Kingman."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','auto_dealers','auto dealers car dealerships','Mother Road Harley-Davidson',
 'https://www.motherroadhd.com/','motherroadhd.com','Official current motorcycle dealership/service facility at 2501 Beverly Ave, Kingman.','assistant bootstrap research: Kingman auto dealers car dealerships',0,
 null,'(928) 757-1166',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official current motorcycle dealership/service facility at 2501 Beverly Ave, Kingman."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'buyer','Kingman','auto_dealers','auto dealers car dealerships','66 Auto Sales',
 'https://66autosales.com/about_us','66autosales.com','Official current used-car dealership at 1945 E Andy Devine Ave, Kingman.','assistant bootstrap research: Kingman auto dealers car dealerships',0,
 null,'(928) 753-6600',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official current used-car dealership at 1945 E Andy Devine Ave, Kingman."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'vendor','Kingman','electrical_service','Electrician','Black Rock Power Systems LLC',
 'https://www.blackrockpoweraz.com/','blackrockpoweraz.com','Official Kingman electrical contractor at 3830 N Bank St; AZ ROC 352572.','assistant bootstrap research: Kingman Electrician',0,
 'office@brpsaz.com','(928) 757-7767',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official Kingman electrical contractor at 3830 N Bank St; AZ ROC 352572."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'vendor','Kingman','hvac_heat','Heating & Air','Service General HVAC',
 'https://servicegeneralhvac.com/','servicegeneralhvac.com','Official Kingman HVAC contractor; residential/small-business HVAC and light commercial refrigeration; AZROC 352943.','assistant bootstrap research: Kingman Heating & Air',0,
 null,'(928) 438-2665',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official Kingman HVAC contractor; residential/small-business HVAC and light commercial refrigeration; AZROC 352943."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'vendor','Kingman','hvac_heat','Heating & Air','Air-Exx Heating Cooling and Ventilation LLC',
 'https://www.airexxhvac.com/kingman-hvac/','airexxhvac.com','Official Kingman HVAC page; veteran-owned, residential/commercial, AZ ROC 350424.','assistant bootstrap research: Kingman Heating & Air',0,
 null,'(928) 565-6440',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official Kingman HVAC page; veteran-owned, residential/commercial, AZ ROC 350424."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'vendor','Kingman','hvac_heat','Heating & Air','Air Control Home Services',
 'https://www.aircontrolaz.com/','aircontrolaz.com','Official company site lists Kingman office and HVAC service across Mohave County.','assistant bootstrap research: Kingman Heating & Air',0,
 null,'(928) 361-9902',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official company site lists Kingman office and HVAC service across Mohave County."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'vendor','Kingman','backflow_plumbing','Backflow & Commercial Plumbing','Air Control Home Services',
 'https://www.aircontrolaz.com/','aircontrolaz.com','Official company site lists Kingman office and plumbing service across Mohave County.','assistant bootstrap research: Kingman Backflow & Commercial Plumbing',0,
 null,'(928) 361-9902',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official company site lists Kingman office and plumbing service across Mohave County."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'vendor','Kingman','electrical_service','Electrician','Air Control Home Services',
 'https://www.aircontrolaz.com/','aircontrolaz.com','Official company site lists Kingman office and electrical service across Mohave County.','assistant bootstrap research: Kingman Electrician',0,
 null,'(928) 361-9902',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official company site lists Kingman office and electrical service across Mohave County."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'vendor','Kingman','backflow_plumbing','Backflow & Commercial Plumbing','Benjamin Franklin Plumbing of Kingman',
 'https://www.benjaminfranklinplumbing.com/kingman/','benjaminfranklinplumbing.com','Official locally operated Kingman plumbing company serving Mohave County.','assistant bootstrap research: Kingman Backflow & Commercial Plumbing',0,
 null,'(928) 882-2691',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official locally operated Kingman plumbing company serving Mohave County."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'vendor','Kingman','pest_control','Pest Control','Patriot Environmental',
 'https://patriotenvironmental.tech/','patriotenvironmental.tech','Official Kingman pest/termite/weed/commercial pest company at 820 E Beale St.','assistant bootstrap research: Kingman Pest Control',0,
 null,'(928) 753-5046',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official Kingman pest/termite/weed/commercial pest company at 820 E Beale St."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'vendor','Kingman','garage_door','Garage Door Repair','Graszer Garage Doors',
 'https://graszergaragedoors.com/','graszergaragedoors.com','Official local Kingman garage-door repair/install company, including commercial doors; ROC CR-350524.','assistant bootstrap research: Kingman Garage Door Repair',0,
 null,'(928) 418-0448',true,
 'direct','direct_evidence',now(),'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"direct_market_evidence","verification_status":"direct_evidence","note":"Official local Kingman garage-door repair/install company, including commercial doors; ROC CR-350524."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
 'vendor','Kingman','towing_roadside','Towing & Roadside Help','City Towing LLC',
 'https://safer.fmcsa.dot.gov/query.asp?original_query_param=NAME&original_query_string=CITY+TOWING+LLC&query_param=USDOT&query_string=1431707&query_type=queryCarrierSnapshot&searchtype=ANY','safer.fmcsa.dot.gov','Current FMCSA carrier snapshot (MCS-150 dated 2026-08-27) lists authorized City Towing LLC at 3001 Eastern St, Kingman.','assistant bootstrap research: Kingman Towing & Roadside Help',0,
 null,'(928) 692-2489',false,
 'secondary','discovery',null,'discovered',7,
 '{"bootstrap_source":"assistant_web_research_2026_10_26_kingman_batch_03","researched_at":"2026-10-26T22:37:00Z","source_quality":"discovery_only","verification_status":"discovery","note":"Current FMCSA carrier snapshot (MCS-150 dated 2026-08-27) lists authorized City Towing LLC at 3001 Eastern St, Kingman."}'::jsonb
)
on conflict(side,market,category_key,source_url,business_name) do update set
 source_domain=excluded.source_domain,
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
where p.market='Kingman';
