-- Assistant-led bootstrap research batch 01 (2026-10-26)
-- Discovery-only inventory seed. This file never promotes vendors/buyers and never stages/sends outreach.
-- Re-running is idempotent by (side,market,category_key,source_url).

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'vendor','Ash Fork','towing_roadside','Towing & Roadside Help','Murphy''s Towing & Truck Repair',
  'https://mtaz.com/contact/','mtaz.com','Direct site lists Ash Fork location and 24/7 towing/roadside.','assistant bootstrap research: Ash Fork Towing & Roadside Help',0,
  'murphysdispatch@outlook.com','(928) 853-5202',true,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"corroborated_direct_source","note":"Direct site lists Ash Fork location and 24/7 towing/roadside."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'vendor','Ash Fork','towing_roadside','Towing & Roadside Help','Roadside 24/7',
  'https://www.roadside24-7.com/','roadside24-7.com','Direct site says based in Ash Fork and serves I-40/Route 66 corridor.','assistant bootstrap research: Ash Fork Towing & Roadside Help',0,
  null,'(928) 221-9110',true,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"corroborated_direct_source","note":"Direct site says based in Ash Fork and serves I-40/Route 66 corridor."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'vendor','Ash Fork','handyman_repairs','Handyman','Wild West Handyman Services LLC',
  'https://www.wildwesthandyman.com/','wildwesthandyman.com','Direct site explicitly lists Ash Fork in service area; not a licensed contractor and works under handyman exemption.','assistant bootstrap research: Ash Fork Handyman',0,
  null,'(928) 476-0107',true,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"corroborated_direct_source","note":"Direct site explicitly lists Ash Fork in service area; not a licensed contractor and works under handyman exemption."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'vendor','Ash Fork','hvac_heat','Heating & Air','Air-Exx HVAC',
  'https://www.airexxhvac.com/ash-fork-hvac','airexxhvac.com','Direct Ash Fork HVAC service page; ROC 350424 stated.','assistant bootstrap research: Ash Fork Heating & Air',0,
  'airexxhvac@yahoo.com','(928) 565-6440',true,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"corroborated_direct_source","note":"Direct Ash Fork HVAC service page; ROC 350424 stated."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'vendor','Ash Fork','electrical_service','Electrician','Ash Fork Electric',
  'https://homversa.com/az/ash-fork/electricians','homversa.com','Discovery source says Arizona ROC #327703 and registered in Ash Fork; verify against ROC before promotion.','assistant bootstrap research: Ash Fork Electrician',0,
  null,null,false,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"discovery_only","verification_status":"needs_followup_verification","note":"Discovery source says Arizona ROC #327703 and registered in Ash Fork; verify against ROC before promotion."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'buyer','Ash Fork','churches','churches worship centers','Gospel of Faith Church',
  'https://www.gospeloffaithchurch.com/','gospeloffaithchurch.com','Direct church site lists Ash Fork address and contacts.','assistant bootstrap research: Ash Fork churches worship centers',0,
  'gospeloffaithchurchaz@gmail.com','(928) 715-6985',true,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"corroborated_direct_source","note":"Direct church site lists Ash Fork address and contacts."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'vendor','Mayer','backflow_plumbing','Backflow & Commercial Plumbing','Aqua Cat Plumbing & Water Treatment',
  'https://www.aquacatplumbing.com/service-areas','aquacatplumbing.com','Direct service-area page explicitly lists Mayer.','assistant bootstrap research: Mayer Backflow & Commercial Plumbing',0,
  null,null,true,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"corroborated_direct_source","note":"Direct service-area page explicitly lists Mayer."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'vendor','Mayer','handyman_repairs','Handyman','Licensed Handyman, Inc.',
  'https://www.licensedhandyman.biz/service-area','licensedhandyman.biz','Direct service-area page explicitly lists Mayer; AZ ROC #349772 stated.','assistant bootstrap research: Mayer Handyman',0,
  null,'(928) 239-3640',true,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"corroborated_direct_source","note":"Direct service-area page explicitly lists Mayer; AZ ROC #349772 stated."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'vendor','Mayer','backflow_plumbing','Backflow & Commercial Plumbing','Manor Plumbing Co',
  'https://www.enigma.com/directory/az/mayer/','enigma.com','Discovery directory lists Manor Plumbing Co in Mayer; direct/ROC verification still needed.','assistant bootstrap research: Mayer Backflow & Commercial Plumbing',0,
  null,null,false,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"discovery_only","verification_status":"needs_followup_verification","note":"Discovery directory lists Manor Plumbing Co in Mayer; direct/ROC verification still needed."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'buyer','Mayer','medical_centers','hospitals medical centers clinics','Cordes Clinic',
  'https://www.enigma.com/directory/az/mayer/','enigma.com','Discovery directory lists Cordes Clinic at 20172 E Stagecoach Trl, Mayer.','assistant bootstrap research: Mayer hospitals medical centers clinics',0,
  null,null,false,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"discovery_only","verification_status":"needs_followup_verification","note":"Discovery directory lists Cordes Clinic at 20172 E Stagecoach Trl, Mayer."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'buyer','Mayer','schools','schools charter schools private schools','Mayer Unified School District',
  'https://www.whereorg.com/mayer-az','whereorg.com','Discovery listing identifies district in Mayer; replace with direct district page during audit.','assistant bootstrap research: Mayer schools charter schools private schools',0,
  null,'(928) 642-1000',false,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"discovery_only","verification_status":"needs_followup_verification","note":"Discovery listing identifies district in Mayer; replace with direct district page during audit."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'buyer','Mayer','churches','churches worship centers','Mayer Community Church',
  'https://www.whereorg.com/businesses/mayer-az','whereorg.com','Discovery listing identifies church in Mayer.','assistant bootstrap research: Mayer churches worship centers',0,
  null,'(928) 632-9533',false,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"discovery_only","verification_status":"needs_followup_verification","note":"Discovery listing identifies church in Mayer."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'buyer','Mayer','hotels_motels','hotels motels lodging','Creekside Lodge & Cabins',
  'https://www.enigma.com/directory/az/mayer/','enigma.com','Discovery directory lists Creekside Lodge & Cabins in Mayer.','assistant bootstrap research: Mayer hotels motels lodging',0,
  null,null,false,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"discovery_only","verification_status":"needs_followup_verification","note":"Discovery directory lists Creekside Lodge & Cabins in Mayer."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'vendor','Cordes Lakes','locksmith_access','Locks & Access Control','Cordes Lakes Hardware & Locksmith',
  'https://cordeshardware.com/','cordeshardware.com','Direct site is located in Cordes Lakes/Mayer and explicitly offers locksmith service calls.','assistant bootstrap research: Cordes Lakes Locks & Access Control',0,
  'cordeshardware@gmail.com','(928) 547-1784',true,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"corroborated_direct_source","note":"Direct site is located in Cordes Lakes/Mayer and explicitly offers locksmith service calls."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'vendor','Cordes Lakes','handyman_repairs','Handyman','Licensed Handyman, Inc.',
  'https://www.licensedhandyman.biz/service-area','licensedhandyman.biz','Direct service-area page explicitly includes Cordes Lakes.','assistant bootstrap research: Cordes Lakes Handyman',0,
  null,'(928) 239-3640',true,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"corroborated_direct_source","note":"Direct service-area page explicitly includes Cordes Lakes."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'vendor','Cordes Lakes','backflow_plumbing','Backflow & Commercial Plumbing','Aqua Cat Plumbing & Water Treatment',
  'https://www.aquacatplumbing.com/service-areas','aquacatplumbing.com','Direct service-area page explicitly lists Cordes Lakes.','assistant bootstrap research: Cordes Lakes Backflow & Commercial Plumbing',0,
  null,null,true,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"corroborated_direct_source","note":"Direct service-area page explicitly lists Cordes Lakes."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'buyer','Cordes Lakes','grocery','grocery stores supermarkets markets','Holly''s Market',
  'https://www.homes.com/local-guide/prescott-valley-az/cordes-lakes-neighborhood/','homes.com','Discovery source identifies Holly''s Market as a local Cordes Lakes grocery option.','assistant bootstrap research: Cordes Lakes grocery stores supermarkets markets',0,
  null,null,false,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"discovery_only","verification_status":"needs_followup_verification","note":"Discovery source identifies Holly''s Market as a local Cordes Lakes grocery option."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'buyer','Cordes Lakes','restaurants','restaurants','El Gordo Real Mexican Grill',
  'https://www.homes.com/local-guide/prescott-valley-az/cordes-lakes-neighborhood/','homes.com','Discovery source identifies El Gordo in Cordes Lakes.','assistant bootstrap research: Cordes Lakes restaurants',0,
  null,null,false,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"discovery_only","verification_status":"needs_followup_verification","note":"Discovery source identifies El Gordo in Cordes Lakes."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'buyer','Cordes Lakes','public_facilities','government public facilities municipal buildings','Cordes Lakes Community Center',
  'https://www.homes.com/local-guide/prescott-valley-az/cordes-lakes-neighborhood/','homes.com','Discovery source identifies local community center; direct public source still needed.','assistant bootstrap research: Cordes Lakes government public facilities municipal buildings',0,
  null,null,false,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"discovery_only","verification_status":"needs_followup_verification","note":"Discovery source identifies local community center; direct public source still needed."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'vendor','Williamson Valley','backflow_plumbing','Backflow & Commercial Plumbing','Nichols Plumbing, Electrical, & HVAC',
  'https://nicholsaz.com/prescott','nicholsaz.com','Direct Prescott-area page explicitly lists Williamson Valley.','assistant bootstrap research: Williamson Valley Backflow & Commercial Plumbing',0,
  null,'(928) 300-1221',true,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"corroborated_direct_source","note":"Direct Prescott-area page explicitly lists Williamson Valley."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'vendor','Williamson Valley','hvac_heat','Heating & Air','Nichols Plumbing, Electrical, & HVAC',
  'https://nicholsaz.com/prescott','nicholsaz.com','Direct page states plumbing/HVAC/electrical service across Prescott area including Williamson Valley.','assistant bootstrap research: Williamson Valley Heating & Air',0,
  null,'(928) 300-1221',true,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"corroborated_direct_source","note":"Direct page states plumbing/HVAC/electrical service across Prescott area including Williamson Valley."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'vendor','Williamson Valley','electrical_service','Electrician','Nichols Plumbing, Electrical, & HVAC',
  'https://nicholsaz.com/prescott','nicholsaz.com','Direct page explicitly includes Williamson Valley and electrical service.','assistant bootstrap research: Williamson Valley Electrician',0,
  null,'(928) 300-1221',true,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"corroborated_direct_source","note":"Direct page explicitly includes Williamson Valley and electrical service."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'vendor','Williamson Valley','backflow_plumbing','Backflow & Commercial Plumbing','Aqua Cat Plumbing & Water Treatment',
  'https://www.aquacatplumbing.com/service-areas','aquacatplumbing.com','Direct service-area page explicitly lists Williamson Valley.','assistant bootstrap research: Williamson Valley Backflow & Commercial Plumbing',0,
  null,null,true,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"corroborated_direct_source","note":"Direct service-area page explicitly lists Williamson Valley."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'vendor','Seligman','towing_roadside','Towing & Roadside Help','Historic Route 66 Auto & Towing',
  'https://www.seligmanazchamber.com/local-information/local-services/','seligmanazchamber.com','Seligman Chamber lists 24/7 towing, oil/tire service and roadside help.','assistant bootstrap research: Seligman Towing & Roadside Help',0,
  null,'(928) 422-3528',false,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"discovery_only","verification_status":"needs_followup_verification","note":"Seligman Chamber lists 24/7 towing, oil/tire service and roadside help."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'vendor','Seligman','hvac_heat','Heating & Air','Air-Exx HVAC',
  'https://www.airexxhvac.com/ash-fork-hvac','airexxhvac.com','Direct HVAC site lists Seligman among service areas.','assistant bootstrap research: Seligman Heating & Air',0,
  'airexxhvac@yahoo.com','(928) 565-6440',true,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"corroborated_direct_source","note":"Direct HVAC site lists Seligman among service areas."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'buyer','Seligman','restaurants','restaurants','Roadkill Cafe / O.K. Saloon',
  'https://seligmanazchamber.com/visit-seligman/where-to-eat-drink/','seligmanazchamber.com','Current Seligman Chamber dining listing.','assistant bootstrap research: Seligman restaurants',0,
  'roadkillcafeseligmanaz@yahoo.com','(928) 422-3554',false,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"discovery_only","verification_status":"needs_followup_verification","note":"Current Seligman Chamber dining listing."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'buyer','Seligman','grocery','grocery stores supermarkets markets','Historic Route 66 General Store',
  'https://seligmanazchamber.com/visit-seligman/where-to-shop/','seligmanazchamber.com','Current Chamber page says store sells groceries, hardware and other supplies.','assistant bootstrap research: Seligman grocery stores supermarkets markets',0,
  null,'(928) 422-3549',false,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"discovery_only","verification_status":"needs_followup_verification","note":"Current Chamber page says store sells groceries, hardware and other supplies."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'buyer','Seligman','schools','schools charter schools private schools','Seligman Unified School District',
  'https://www.seligmanazchamber.com/local-information/resources/','seligmanazchamber.com','Current Chamber resource page identifies Seligman Unified School District.','assistant bootstrap research: Seligman schools charter schools private schools',0,
  null,null,false,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"discovery_only","verification_status":"needs_followup_verification","note":"Current Chamber resource page identifies Seligman Unified School District."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'buyer','Seligman','churches','churches worship centers','Agape Baptist Church',
  'https://www.seligmanazchamber.com/local-information/resources/','seligmanazchamber.com','Current Chamber resource page lists local church and phone.','assistant bootstrap research: Seligman churches worship centers',0,
  null,'(928) 422-3420',false,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"discovery_only","verification_status":"needs_followup_verification","note":"Current Chamber resource page lists local church and phone."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'buyer','Seligman','hotels_motels','hotels motels lodging','Canyon Lodge',
  'https://www.seligmanazchamber.com/visit-seligman/where-to-stay','seligmanazchamber.com','Current Chamber lodging page identifies Canyon Lodge.','assistant bootstrap research: Seligman hotels motels lodging',0,
  null,'800-700-5054',false,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"discovery_only","verification_status":"needs_followup_verification","note":"Current Chamber lodging page identifies Canyon Lodge."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'vendor','Skull Valley','backflow_plumbing','Backflow & Commercial Plumbing','Aqua Cat Plumbing & Water Treatment',
  'https://www.aquacatplumbing.com/service-areas','aquacatplumbing.com','Direct service-area page explicitly lists Skull Valley.','assistant bootstrap research: Skull Valley Backflow & Commercial Plumbing',0,
  null,null,true,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"corroborated_direct_source","note":"Direct service-area page explicitly lists Skull Valley."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'vendor','Skull Valley','backflow_plumbing','Backflow & Commercial Plumbing','CreekWell Plumbing & Water Treatment',
  'https://www.creekwellplumbing.com/','creekwellplumbing.com','Direct site lists Skull Valley, but currently states work is under Arizona handyman exemption and new licensed work is pending; discovery only for regulated plumbing.','assistant bootstrap research: Skull Valley Backflow & Commercial Plumbing',0,
  null,'(928) 228-5770',true,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"corroborated_direct_source","note":"Direct site lists Skull Valley, but currently states work is under Arizona handyman exemption and new licensed work is pending; discovery only for regulated plumbing."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'vendor','Skull Valley','electrical_service','Electrician','Stubbs Electric',
  'https://www.whereorg.com/skull-valley-az','whereorg.com','Discovery directory lists Stubbs Electric in Skull Valley; direct/ROC verification needed.','assistant bootstrap research: Skull Valley Electrician',0,
  null,'(928) 633-2100',false,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"discovery_only","verification_status":"needs_followup_verification","note":"Discovery directory lists Stubbs Electric in Skull Valley; direct/ROC verification needed."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'buyer','Skull Valley','restaurants','restaurants','The Forge at Skull Valley',
  'https://www.theforgeskullvalley.com/','theforgeskullvalley.com','Direct cafe/farm-store site lists Skull Valley address.','assistant bootstrap research: Skull Valley restaurants',0,
  'claire@theforgeskullvalley.com',null,true,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"corroborated_direct_source","note":"Direct cafe/farm-store site lists Skull Valley address."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'buyer','Skull Valley','schools','schools charter schools private schools','Skull Valley School District',
  'https://skullvalleyschool.org/','skullvalleyschool.org','Official school district site with Skull Valley address and contacts.','assistant bootstrap research: Skull Valley schools charter schools private schools',0,
  'admin@skullvalleyschool.org','(928) 442-3322',true,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"corroborated_direct_source","note":"Official school district site with Skull Valley address and contacts."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'buyer','Skull Valley','churches','churches worship centers','Skull Valley Bible Church',
  'https://www.skullvalleybiblechurch.org/','skullvalleybiblechurch.org','Direct church site lists Skull Valley address and contacts.','assistant bootstrap research: Skull Valley churches worship centers',0,
  'welcome@skullvalleybiblechurch.org','(928) 464-3172',true,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"corroborated_direct_source","note":"Direct church site lists Skull Valley address and contacts."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'vendor','Dewey-Humboldt','hvac_heat','Heating & Air','ACE Cooling, Heating, Plumbing and Electrical',
  'https://acehomeaz.com/areas-served/dewey-humboldt/','acehomeaz.com','Direct Dewey-Humboldt service page for HVAC/plumbing/electrical.','assistant bootstrap research: Dewey-Humboldt Heating & Air',0,
  null,null,true,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"corroborated_direct_source","note":"Direct Dewey-Humboldt service page for HVAC/plumbing/electrical."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'vendor','Dewey-Humboldt','backflow_plumbing','Backflow & Commercial Plumbing','ACE Cooling, Heating, Plumbing and Electrical',
  'https://acehomeaz.com/areas-served/dewey-humboldt/','acehomeaz.com','Direct Dewey-Humboldt service page explicitly offers plumbing.','assistant bootstrap research: Dewey-Humboldt Backflow & Commercial Plumbing',0,
  null,null,true,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"corroborated_direct_source","note":"Direct Dewey-Humboldt service page explicitly offers plumbing."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'vendor','Dewey-Humboldt','electrical_service','Electrician','ACE Cooling, Heating, Plumbing and Electrical',
  'https://acehomeaz.com/areas-served/dewey-humboldt/','acehomeaz.com','Direct Dewey-Humboldt service page explicitly offers electrical.','assistant bootstrap research: Dewey-Humboldt Electrician',0,
  null,null,true,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"corroborated_direct_source","note":"Direct Dewey-Humboldt service page explicitly offers electrical."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'vendor','Dewey-Humboldt','handyman_repairs','Handyman','Licensed Handyman, Inc.',
  'https://www.licensedhandyman.biz/service-area','licensedhandyman.biz','Direct service-area page explicitly lists Dewey and Humboldt.','assistant bootstrap research: Dewey-Humboldt Handyman',0,
  null,'(928) 239-3640',true,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"corroborated_direct_source","note":"Direct service-area page explicitly lists Dewey and Humboldt."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'vendor','Dewey-Humboldt','handyman_repairs','Handyman','Powerhouse Handyman Services LLC',
  'https://nextdoor.com/pages/powerhouse-handyman-services-dewey-az/','nextdoor.com','Public Nextdoor business page in Dewey; explicitly says not a licensed contractor.','assistant bootstrap research: Dewey-Humboldt Handyman',0,
  'hvactech428@gmail.com','(928) 642-6117',false,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"discovery_only","verification_status":"needs_followup_verification","note":"Public Nextdoor business page in Dewey; explicitly says not a licensed contractor."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'buyer','Dewey-Humboldt','public_facilities','government public facilities municipal buildings','Town of Dewey-Humboldt',
  'https://www.dhaz.gov/2170/About-Dewey-Humboldt','dhaz.gov','Official town site; valid public-facility buyer target.','assistant bootstrap research: Dewey-Humboldt government public facilities municipal buildings',0,
  null,null,true,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"corroborated_direct_source","note":"Official town site; valid public-facility buyer target."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'vendor','Golden Valley','hvac_heat','Heating & Air','Comfort Air Solutions',
  'https://comfortairsolutionsaz.com/service-areas','comfortairsolutionsaz.com','Direct service-area page explicitly lists Golden Valley.','assistant bootstrap research: Golden Valley Heating & Air',0,
  null,'(928) 450-5534',true,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"corroborated_direct_source","note":"Direct service-area page explicitly lists Golden Valley."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'vendor','Golden Valley','hvac_heat','Heating & Air','Air Control Home Services',
  'https://www.aircontrolaz.com/service-area/golden-valley/','aircontrolaz.com','Direct Golden Valley HVAC/plumbing/electrical service page; ROC numbers published.','assistant bootstrap research: Golden Valley Heating & Air',0,
  null,'(928) 361-9902',true,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"corroborated_direct_source","note":"Direct Golden Valley HVAC/plumbing/electrical service page; ROC numbers published."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'vendor','Golden Valley','backflow_plumbing','Backflow & Commercial Plumbing','R and N Plumbing',
  'https://randnplumbing.org/','randnplumbing.org','Direct site says Golden Valley, Arizona; ROC #353736 and bonded/insured stated.','assistant bootstrap research: Golden Valley Backflow & Commercial Plumbing',0,
  null,'(928) 263-2789',true,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"corroborated_direct_source","note":"Direct site says Golden Valley, Arizona; ROC #353736 and bonded/insured stated."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'vendor','Golden Valley','backflow_plumbing','Backflow & Commercial Plumbing','Bradshaw''s Plumbing',
  'https://bradshawsplumbing.com/services/','bradshawsplumbing.com','Direct site says service area includes Golden Valley; ROC #356277 stated.','assistant bootstrap research: Golden Valley Backflow & Commercial Plumbing',0,
  null,'(928) 303-5037',true,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"corroborated_direct_source","note":"Direct site says service area includes Golden Valley; ROC #356277 stated."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'vendor','Golden Valley','hvac_heat','Heating & Air','Air-Exx HVAC',
  'https://www.airexxhvac.com/golden-valley-hvac','airexxhvac.com','Direct Golden Valley HVAC page; ROC 350424 stated.','assistant bootstrap research: Golden Valley Heating & Air',0,
  'airexxhvac@yahoo.com','(928) 565-6440',true,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"corroborated_direct_source","note":"Direct Golden Valley HVAC page; ROC 350424 stated."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'vendor','Golden Valley','hvac_heat','Heating & Air','Ambient Edge',
  'https://www.ambientedge.com/about-us/','ambientedge.com','Direct company page lists Golden Valley in Arizona service area.','assistant bootstrap research: Golden Valley Heating & Air',0,
  null,null,true,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"direct_market_evidence","verification_status":"corroborated_direct_source","note":"Direct company page lists Golden Valley in Arizona service area."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

insert into market_inventory_candidates(
  side,market,category_key,category_label,business_name,source_url,source_domain,
  snippet,search_query,page_no,public_email,public_phone,official_site,status,query_strategy_version,evidence
) values (
  'vendor','Golden Valley','hvac_heat','Heating & Air','A to Z Refrigeration, Inc.',
  'https://www.bbb.org/us/az/golden-valley/profile/heating-and-air-conditioning/a-to-z-refrigeration-inc-1126-1000060099','bbb.org','BBB discovery profile places company in Golden Valley and describes HVAC/commercial refrigeration.','assistant bootstrap research: Golden Valley Heating & Air',0,
  null,'(928) 565-7252',false,'discovered',7,
  '{"bootstrap_source":"assistant_web_research_2026_10_26_batch_01","researched_at":"2026-10-26T21:14:00Z","source_quality":"discovery_only","verification_status":"needs_followup_verification","note":"BBB discovery profile places company in Golden Valley and describes HVAC/commercial refrigeration."}'::jsonb
)
on conflict(side,market,category_key,source_url) do update set
  business_name=excluded.business_name,
  source_domain=excluded.source_domain,
  snippet=excluded.snippet,
  search_query=excluded.search_query,
  public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),
  public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),
  official_site=excluded.official_site,
  status='discovered',
  query_strategy_version=excluded.query_strategy_version,
  evidence=market_inventory_candidates.evidence || excluded.evidence,
  updated_at=now();

-- Reflect manually researched direct candidates in the lane counters without pretending the lane scan is complete.
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
